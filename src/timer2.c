/**************************************************************************//**
 * @file timer2.c
 * @brief Funktionen um Timer2 zu steuern.
 * Dieser Timer wird als Baudratengenerator verwendet     
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <timer2.h>
/******************************************************************************/

/******************************************************************************
 * Fileglobale Variabeln
 ******************************************************************************/
VAR(__u16, u16Turns, DATA);
VAR(__u8, u8Cntr=50, DATA);
/******************************************************************************/

/*****************************************************************************
 * Timer Initialisieren
 *****************************************************************************/
void Tmr2Init(void)
{
	__u32 u32TmrFreq;
	__u16 u16ReloadVal;

	//Timer2 Interrupt ausschalten
	Tmr2IsrDis();
	
	//Abfragen, ob Timer2 als Baudratengenerator benutzt wird.
	if ((!RCLK) && (!TCLK))
	//Timer2 wird nur als Timer benutzt.		
	{
		//Reloadwert berechnen
		if (CKCON & 0x01)
		{			
			u32TmrFreq = SysGetQuarzFreq()  / 600;
		}
		else
		{
			u32TmrFreq = SysGetQuarzFreq()  / 1200;
		}
		//Muss X2-Mode abgeschaltet werden?
		if (u32TmrFreq > 0x0000FFFFL)
		{
			CKCON |= 0x08;
			u32TmrFreq >>= 1;
		}
		T2MOD = 0;
		u16Turns = 0;
		u16ReloadVal = u32TmrFreq;
		RCAP2L = (__u8) (u16ReloadVal & 0x00FF);
		RCAP2H = (__u8) (u16ReloadVal >> 8);
		T2CON = 0x04;
		TR2 = 1;
	}

	//Setze die Interrupt-Funktion
	isrFncTmr2 = Tmr2IsrFnc;

	//Schalte Timer2-Interrupt ein
	Tmr2IsrEna();
}
/*****************************************************************************/

/*****************************************************************************
 * Timer2 Second-Stage ISR-Routine
 *****************************************************************************/
void Tmr2IsrFnc (void)
{
	;
}
/*****************************************************************************/

/*****************************************************************************
 *
 *****************************************************************************/
/*****************************************************************************/

/*****************************************************************************
 *
 *****************************************************************************/
/*****************************************************************************/

/*****************************************************************************
 *
 *****************************************************************************/
/*****************************************************************************/

/*****************************************************************************
 *
 *****************************************************************************/
/*****************************************************************************/

