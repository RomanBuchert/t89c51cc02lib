/**************************************************************************//**
 * @file timer2.c
 * @brief Funktionen um Timer2 zu steuern.
 * Dieser Timer wird als Baudratengenerator verwendet     
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
#ifndef __TIMER2_H__
#define __TIMER2_H__
/*****************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <sysCfg.h>
#include <isrvectors.h>
/******************************************************************************/

/*****************************************************************************
 * Timer Initialisieren
 *****************************************************************************/
void Tmr2Init(void);
/*****************************************************************************/

/*****************************************************************************
 * Timer2 Second-Stage ISR-Routine
 *****************************************************************************/
void Tmr2IsrFnc (void);
/*****************************************************************************/

/*****************************************************************************
 * Timer2 Interrupt einschalten
 *****************************************************************************/
#define Tmr2IsrEna() ET2=1
/*****************************************************************************/

/*****************************************************************************
 * Timer2 Interrupt ausschalten
 *****************************************************************************/
#define Tmr2IsrDis() ET2=0
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

/*****************************************************************************
 *
 *****************************************************************************/
/*****************************************************************************/

#endif // __TIMER2_H__
