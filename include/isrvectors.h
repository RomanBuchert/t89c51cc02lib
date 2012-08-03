/**************************************************************************//**
 * @file isrvectors.h
 * @brief Diese Datei beinhaltet die Interruptvectoren des (A)T89C51CC02
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
#ifndef __ISRVECTORTS_H__
#define __ISRVECTORTS_H__
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <t89c51cc02.h>
#include <mytypes.h>
/******************************************************************************/


#ifndef NULL_FNC
    /// @def NULL_FNC: Definition des Null-Zeigers
	#define NULL_FNC (0L)               ///< Definition Nullzeiger
#endif

/******************************************************************************
 * Funktionszeiger der Interruptroutinen
 ******************************************************************************/
extern void (*isrFncReset) (void);		///< Reset
extern void (*isrFncExt0) (void);		///< Funktionszeiger ISR Externer Interrupt 0
extern void (*isrFncTmr0) (void);		///< Funktonszeiger ISR Timer 0
extern void (*isrFncExt1) (void);		///< Funktionszeiger ISR Externer Interrupt 1
extern void (*isrFncTmr1) (void);		///< Funktonszeiger ISR Timer 1
extern void (*isrFncUart) (void);		///< Funktionszeiger ISR UART
extern void (*isrFncTmr2) (void);		///< Funktionszeiger ISR Timer 2
extern void (*isrFncPca) (void);		///< Funktionszeiger ISR PCA-Timer
extern void (*isrFncCan) (void);		///< Funktionszeiger ISR CAN
extern void (*isrFncAdc) (void);		///< Funktionszeiger ISR AD-Wandler
extern void (*isrFncCanTmr) (void);		///< Funktionszeiger ISR CAN Timer
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert die Interrupts und die Funktionszeiger.
 ******************************************************************************/
void IsrInit();
/******************************************************************************/


/**************************************************************************//**
 * @brief Vector für Externen Interrupt 0.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrExt0(void) __interrupt (0);
/******************************************************************************/


/**************************************************************************//**
 * @brief Vector für Timer 0.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrTmr0(void) __interrupt (1);
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für Externen Interrupt 1.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrExt1(void) __interrupt (2);

/**************************************************************************//**
 * @brief Vector für Timer 1.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrTmr1(void) __interrupt (3);

/**************************************************************************//**
 * @brief Vector für UART.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrUart(void) __interrupt (4);
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für Timer 2.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrTmr2(void) __interrupt (5);
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für PCA-Modul.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrPca(void) __interrupt (6);
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für CAN.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrCan(void) __interrupt (7);
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für AD-Wandler.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrAdc(void) __interrupt (8);
/******************************************************************************/

/**************************************************************************//**
 * @brief Vector für CAN-Timer.
 * Die Interruptflags werden nach dem Aufruf gelöscht
 ******************************************************************************/
void IsrCanTmr(void) __interrupt (9);
/******************************************************************************/

/**************************************************************************//**
 * @fn void IsrGlobalEna(void)
 * @brief Globale Interruptfreigabe einschalten.
 ******************************************************************************/
#define IsrGlobalEna()	(EA = 1)
/******************************************************************************/

/**************************************************************************//**
 * @fn void IsrGlobalDis(void)
 * @brief Globale Interruptfreigabe ausschalten.
 ******************************************************************************/
#define IsrGlobalDis()	(EA = 0)
/******************************************************************************/

#endif //__ISRVECTORTS_H__