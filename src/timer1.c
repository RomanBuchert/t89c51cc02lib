/**************************************************************************//**
 * @file timer1.c
 * @brief Funktionen um Timer1 zu steuern
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
/*****************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <timer1.h>
/******************************************************************************/

/******************************************************************************
 * Fileglobale Variabeln
 ******************************************************************************/
/// Variable mit dem Reloadwert für Timer1
VAR(__u32, u32Tmr1Reload, DATA);
/// Variable mit dem temporären Reloadwert für Timer 1
VAR(__u32, u32Tmr1TmpReload, DATA);
/// Funktionszeiger für die Benutzer-ISR
void (*Tmr1UsrIsrFnc) (void) = NULL_FNC;
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert den Timer1
 * @param Mode Modus des Timers. @see ETmrMode
 * @param Typ Timer als Zähler oder Timer. @see ETmrTyp
 ******************************************************************************/
void Tmr1Init(TTmrMode Mode, TTmrTyp Typ)
{
	//Setze den Timermodus
	TMOD &= ~0x30;
	TMOD |= ((Mode << 4) &0x30);

	//Setze den Typ (Timer oder Counter)
	TMOD &= ~0x40;
	TMOD |= ((Typ << 6) & 0x40);
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Setzt den Zeitwert des Timers in ms.
 *
 * Dieser wird automatisch berechnet. Die Grundlage der Berechnung ist die 
 * Quarzfrequenz und der X2-Modus. Die bestehende Interruptroutine wird um die
 * gewrappt und erst nach der hier angegebenen Zeit aufgerufen.
 * @see SysInit
 * @see Tmr1IsrFnc
 * @param u16Zeit Timerwert in ms
 ******************************************************************************/
void Tmr1SetTime(__u16 u16Zeit) Critical
{
	BIT bTR1 = TR1;
	BIT bET1 = ET1;
	
	//Timer ausschalten
	TR1 = 0;
	u32Tmr1Reload = (SysGetQuarzFreq() / 1000L) * u16Zeit;
	u32Tmr1Reload /= 6;

	//Userinterrupt speichern
	if ((isrFncTmr1 != Tmr1IsrFnc) && (Tmr1UsrIsrFnc != Tmr1IsrFnc))
	{
		Tmr1UsrIsrFnc = isrFncTmr1;
		isrFncTmr1 = Tmr1IsrFnc;
	}
	//Timer wieder einschalten
	TR1 = bTR1;
	ET1 = bET1;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Setzt den Wert des Timerregisters
 * @param u16Value 16-Bit Reloadwert des Timers
 ******************************************************************************/
void Tmr1SetValue(__u16 u16Value) Critical
{
	TL1 = (__u8) (u16Value & 0x00FF);
	TH1 = (__u8) (u16Value >> 8);
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Gibt den aktuellen Wert des Timerregisters zurück
 * @return Aktueller Wert des Timerregisters
 ******************************************************************************/
__u16 Tmr1GetValue(void) Critical
{
	return (__u16)(((__u16)TH1 << 8) || TL1);
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Interruptfunktion des Timers1
 *
 * Da der Zeitwert größer als die Überlaufzeit des Timers angegeben werden
 * kann, wird hier die User-ISR gewrappt und erst nach der angegebenen Zeit
 * aufgerufen.
 ******************************************************************************/
void Tmr1IsrFnc(void) Critical
{
	// Hier der Code der bei Interrupt ausgeführt werden soll
	if (u32Tmr1TmpReload == 0)
	{
		u32Tmr1TmpReload = u32Tmr1Reload;
		if (Tmr1UsrIsrFnc != NULL_FNC)
		{			
			Tmr1UsrIsrFnc();
		}
	}
	// Letzter Durchlauf vor Eigentlichem Interrupt
	if (u32Tmr1TmpReload < 0x0000FFFFL)
	{
		u32Tmr1TmpReload = (-u32Tmr1TmpReload);
		//Timerregister mit Reloadwert laden.
		TL1 = (__u8) (u32Tmr1TmpReload & 0xFF);
		TH1 = (__u8) (u32Tmr1TmpReload >> 8);
		u32Tmr1TmpReload = 0;
	}
	// Es sind noch ein paar Durchläufe nötig
	else
	{
		u32Tmr1TmpReload -= 0xFFFFL;
	}
}
/******************************************************************************/

/**************************************************************************//**
 *
 ******************************************************************************/
/******************************************************************************/

/**************************************************************************//**
 *
 ******************************************************************************/
/******************************************************************************/

