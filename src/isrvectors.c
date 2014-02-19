/**************************************************************************//**
 * @file isrvectors.c
 * @brief Diese Datei beinhaltet die Interruptvectoren des (A)T89C51CC02
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <isrvectors.h>
/******************************************************************************/

#ifndef NULL_FNC
    /// @def NULL_FNC: Definition des Null-Zeigers
    #define NULL_FNC (0L)               ///< Definition Nullzeiger
#endif

/******************************************************************************
 * Funktionszeiger der Interruptroutinen
 ******************************************************************************/
void (*isrFncReset) (void) = NULL_FNC;  ///< Reset
void (*isrFncExt0) (void) = NULL_FNC;   ///< Funktionszeiger ISR Externer Interrupt 0
void (*isrFncTmr0) (void) = NULL_FNC;   ///< Funktionszeiger ISR Timer 0
void (*isrFncExt1) (void) = NULL_FNC;   ///< Funktionszeiger ISR Externer Interrupt 1
void (*isrFncTmr1) (void) = NULL_FNC;   ///< Funktionszeiger ISR Timer 1
void (*isrFncUart) (void) = NULL_FNC;   ///< Funktionszeiger ISR UART
void (*isrFncTmr2) (void) = NULL_FNC;   ///< Funktionszeiger ISR Timer 2
void (*isrFncPca) (void) = NULL_FNC;	///< Funktionszeiger ISR PCA-Timer
void (*isrFncCan) (void) = NULL_FNC;	///< Funktionszeiger ISR CAN
void (*isrFncAdc) (void) = NULL_FNC;	///< Funktionszeiger ISR AD-Wandler
void (*isrFncCanTmr) (void) = NULL_FNC; ///< Funktionszeiger ISR CAN Timer
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert die Interrupts und die Funktionszeiger.
 ******************************************************************************/
void IsrInit()
{
	isrFncExt0 = NULL_FNC;		//Externer Interrupt 0
	isrFncTmr0 = NULL_FNC;		//Timer 0
	isrFncExt1 = NULL_FNC;		//Externer Interrupt 1
	isrFncTmr1 = NULL_FNC;		//Timer 1
	isrFncUart = NULL_FNC;		//UART
	isrFncTmr2 = NULL_FNC;		//Timer 2
	isrFncPca = NULL_FNC;		//PCA-Timer
	isrFncCan = NULL_FNC;		//CAN
	isrFncAdc = NULL_FNC;		//AD-Wandler
	isrFncCanTmr = NULL_FNC;	//CAN Timer

}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für Externen Interrupt 0.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt (IsrExt0, 0)
{
	EX0 = 0;
	if (isrFncExt0 != NULL_FNC)
	{
		isrFncExt0();
	}
	IE0 = 0;
	EX1 = 1;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für Timer 0.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt (IsrTmr0,1)
{
	if (isrFncTmr0 != NULL_FNC)
	{
		isrFncTmr0();
	}
	TF0 = 0;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für Externen Interrupt 1.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt(IsrExt1, 2)
{
	EX1 = 0;
	if (isrFncExt1 != NULL_FNC)
	{
		isrFncExt1();
	}
	IE1 = 0;
	EX0 = 1;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für Timer 1.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt (IsrTmr1, 3)
{
	if (isrFncTmr1 != NULL_FNC)
	{
		isrFncTmr1();
	}
	TF1 = 0;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für UART.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt (IsrUart, 4)
{
	if (isrFncUart != NULL_FNC)
	{
		isrFncUart();
	}

	RI = 0;
	TI = 0;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für Timer 2.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt (IsrTmr2, 5)
{
	if (isrFncTmr2 != NULL_FNC)
	{
		isrFncTmr2();
	}
	TF2 = 0;
	EXF2 = 0;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für PCA-Modul.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt (IsrPca, 6)
{
	if (isrFncPca != NULL_FNC)
	{
		isrFncPca();
	}

	CF = 0;
	CCF0 = 0;
	CCF1 = 0;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für CAN.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt (IsrCan, 7)
{
	if (isrFncCan != NULL_FNC)
	{
		isrFncCan();
	}
	CANSTCH &= ~0x80;
	CANGIT &= ~0x1F;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für AD-Wandler.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt (IsrAdc, 8)
{
	if (isrFncAdc != NULL_FNC)
	{
		isrFncAdc();
	}
	ADCON &= ~0x10;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für CAN-Timer.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
Interrupt (IsrCanTmr, 9)
{
	if (isrFncCanTmr != 0)
	{
		isrFncCanTmr();
	}
	CANGIT &= ~20;
}
/******************************************************************************/

/**************************************************************************//**
 *
 ******************************************************************************/
/******************************************************************************/

