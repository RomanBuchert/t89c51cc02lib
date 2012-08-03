/**************************************************************************//**
 * @file timer0.c
 * @brief Funktionen um Timer0 zu steuern
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <timer0.h>
/******************************************************************************/

/******************************************************************************
 * Fileglobale Variabeln
 ******************************************************************************/
/// Variable mit dem Reloadwert für Timer0
__u32 __data u32Tmr0Reload;
/// Variable mit dem temporären Reloadwert für Timer 0
__u32 __data u32Tmr0TmpReload;
/// Funktionszeiger für die Benutzer-ISR
void (*Tmr0UsrIsrFnc) (void) = NULL_FNC;
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert den Timer0
 * @param Mode Modus des Timers. @see ETmrMode
 * @param Typ Timer als Zähler oder Timer. @see ETmrTyp
 ******************************************************************************/
void Tmr0Init(TTmrMode Mode, TTmrTyp Typ)
{
	//Setze den Timermodus
	TMOD &= ~0x03;
	TMOD |= (Mode &0x03);

	//Setze den Typ (Timer oder Counter)
	TMOD &= ~0x04;
	TMOD |= ((Typ << 2) & 0x04);
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Setzt den Zeitwert des Timers in ms.
 *
 * Dieser wird automatisch berechnet. Die Grundlage der Berechnung ist die 
 * Quarzfrequenz und der X2-Modus. Die bestehende Interruptroutine wird um die
 * gewrappt und erst nach der hier angegebenen Zeit aufgerufen.
 * @see SysInit
 * @see Tmr0IsrFnc
 * @param u16Zeit Timerwert in ms
 ******************************************************************************/
void Tmr0SetTime(__u16 u16Zeit) __critical
{
	__bit bTR0 = TR0;
	__bit bET0 = ET0;
	
	//Timer ausschalten
	TR0 = 0;
	u32Tmr0Reload = (SysGetQuarzFreq() / 1000L) * u16Zeit;
	u32Tmr0Reload /= 6;

	//Userinterrupt speichern
	if ((isrFncTmr0 != Tmr0IsrFnc) && (Tmr0UsrIsrFnc != Tmr0IsrFnc))
	{
		Tmr0UsrIsrFnc = isrFncTmr0;
		isrFncTmr0 = Tmr0IsrFnc;
	}
	//Timer wieder einschalten
	TR0 = bTR0;
	ET0 = bET0;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Setzt den Wert des Timerregisters
 * @param u16Value 16-Bit Reloadwert des Timers
 ******************************************************************************/
void Tmr0SetValue(__u16 u16Value) __critical
{
	TL0 = (__u16) (u16Value & 0x00FF);
	TH0 = (__u16) (u16Value >> 8);
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Gibt den aktuellen Wert des Timerregisters zurück
 * @return Aktueller Wert des Timerregisters
 ******************************************************************************/
__u16 Tmr0GetValue(void) __critical
{
	return (__u16)(((__u16)TH0 << 8) || TL0);
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Interruptfunktion des Timers0
 *
 * Da der Zeitwert größer als die Überlaufzeit des Timers angegeben werden
 * kann, wird hier die User-ISR gewrappt und erst nach der angegebenen Zeit
 * aufgerufen.
 ******************************************************************************/
void Tmr0IsrFnc(void) __critical
{
	// Hier der Code der bei Interrupt ausgeführt werden soll
	if (u32Tmr0TmpReload == 0)
	{
		u32Tmr0TmpReload = u32Tmr0Reload;
		if (Tmr0UsrIsrFnc != NULL_FNC)
		{			
			Tmr0UsrIsrFnc();
		}
	}
	// Letzter Durchlauf vor Eigentlichem Interrupt
	if (u32Tmr0TmpReload < 0x0000FFFFL)
	{
		u32Tmr0TmpReload = (-u32Tmr0TmpReload);
		//Timerregister mit Reloadwert laden.
		TL0 = (__u8) (u32Tmr0TmpReload & 0xFF);
		TH0 = (__u8) (u32Tmr0TmpReload >> 8);
		u32Tmr0TmpReload = 0;
	}
	// Es sind noch ein paar Durchläufe nötig
	else
	{
		u32Tmr0TmpReload -= 0xFFFFL;
	}
}
/******************************************************************************/
