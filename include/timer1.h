/**************************************************************************//**
 * @file timer1.h
 * @brief Funktionen um Timer1 zu steuern
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
#ifndef __TIMER1_H__
#define __TIMER1_H__
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <t89c51cc02.h>
#include <mytypes.h>
#include <sysCfg.h>
#include <isrvectors.h>
/*****************************************************************************/

/******************************************************************************
 * ENUMS
 ******************************************************************************/
#ifndef __TMR_ENUMS__
#define __TMR_ENUMS__
///@enum ETmrMode
///@brief Enum mit den verschiedenen Timerfunktionen
typedef enum ETmrMode {
	Tmr13Bit = 0,       ///< Timer als 13-Bit-Timer. Kein Autoreload
    Tmr16Bit,           ///< Timer als 16-Bit-Timer. Kein Autoreload
    Tmr8BitAutoReload,  ///< Timer als 8-Bit-Timer. Reload aus dem TH-Register
    TmrDuo8Bit          ///< Timer als doppel 8-Bit-Timer. Kein Autoreload.
                        /// Reload von Timer1
} TTmrMode;

///@enum ETmrTyp
///@brief Funktionsweise des Timers
typedef enum ETmrTyp {
	TmrTimer = 0,       ///< Timer arbeitet als Timer
    TmrCounter          ///< Timer arbeitet als Zähler.
} TTmrTyp;
#endif //__TMR_ENUMS__
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert den Timer1
 * @param Mode Modus des Timers. @see ETmrMode
 * @param Typ Timer als Zähler oder Timer. @see ETmrTyp
 ******************************************************************************/
void Tmr1Init(TTmrMode Mode, TTmrTyp Typ);
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
void Tmr1SetTime(__u16 u16Zeit) __critical;
/******************************************************************************/

/**************************************************************************//**
 * @brief Setzt den Wert des Timerregisters
 * @param u16Value 16-Bit Reloadwert des Timers
 ******************************************************************************/
void Tmr1SetValue(__u16 u16Value) __critical;
/******************************************************************************/

/**************************************************************************//**
 * @brief Gibt den aktuellen Wert des Timerregisters zurück
 * @return Aktueller Wert des Timerregisters
 ******************************************************************************/
__u16 Tmr1GetValue(void) __critical;
/******************************************************************************/

/**************************************************************************//**
 * @brief Interruptfunktion des Timers1
 *
 * Da der Zeitwert größer als die Überlaufzeit des Timers angegeben werden
 * kann, wird hier die User-ISR gewrappt und erst nach der angegebenen Zeit
 * aufgerufen.
 ******************************************************************************/
void Tmr1IsrFnc(void) __critical;
/******************************************************************************/

/**************************************************************************//**
 * @fn void Tmr1Run(void)
 * @brief Startet den Timer1
 ******************************************************************************/
#define Tmr1Run()	(TR1 = 1)
/******************************************************************************/

/**************************************************************************//**
 * @fn void Tmr1Stop(void)
 * @brief Stoppt den Timer1
 ******************************************************************************/
#define Tmr1Stop()	(TR1 = 0)
/******************************************************************************/

/**************************************************************************//**
 * @fn void Tmr1IsrEna(void)
 * @brief Schaltet den Interrupt des Timer1 ein
 ******************************************************************************/
#define Tmr1IsrEna()	(ET1 = 1)
/******************************************************************************/

/**************************************************************************//**
 * @fn void Tmr1IsrDis(void)
 * @brief Schaltet den Interrupt des Timer1 aus
 ******************************************************************************/
#define Tmr1IsrDis()	(ET1 = 0)
/******************************************************************************/

#endif // __TIMER1_H__