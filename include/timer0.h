/**************************************************************************//**
 * @file timer0.h
 * @brief Funktionen um Timer0 zu steuern
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
#ifndef __TIMER0_H__
#define __TIMER0_H__
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <sysCfg.h>
#include <isrvectors.h>
/******************************************************************************/

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
 * @brief Initialisiert den Timer0
 * @param Mode Modus des Timers. @see ETmrMode
 * @param Typ Timer als Zähler oder Timer. @see ETmrTyp
 ******************************************************************************/
void Tmr0Init(TTmrMode Mode, TTmrTyp Typ);
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
void Tmr0SetTime(__u16 u16Zeit) Critical;
/******************************************************************************/

/**************************************************************************//**
 * @brief Setzt den Wert des Timerregisters
 * @param u16Value 16-Bit Reloadwert des Timers
 ******************************************************************************/
void Tmr0SetValue(__u16 u16Value) Critical;
/******************************************************************************/

/**************************************************************************//**
 * @brief Gibt den aktuellen Wert des Timerregisters zurück
 * @return Aktueller Wert des Timerregisters
 ******************************************************************************/
__u16 Tmr0GetValue(void) Critical;
/******************************************************************************/

/**************************************************************************//**
 * @brief Interruptfunktion des Timers0
 *
 * Da der Zeitwert größer als die Überlaufzeit des Timers angegeben werden
 * kann, wird hier die User-ISR gewrappt und erst nach der angegebenen Zeit
 * aufgerufen.
 ******************************************************************************/
void Tmr0IsrFnc(void) Critical;
/******************************************************************************/

/**************************************************************************//**
 * @fn void Tmr0Run(void)
 * @brief Startet den Timer0
 ******************************************************************************/
#define Tmr0Run()	(TR0 = 1)
/******************************************************************************/

/**************************************************************************//**
 * @fn void Tmr0Stop(void)
 * @brief Stoppt den Timer0
 ******************************************************************************/
#define Tmr0Stop()	(TR0 = 0)
/******************************************************************************/

/**************************************************************************//**
 * @fn void Tmr0IsrEna(void)
 * @brief Schaltet den Interrupt des Timer0 ein
 ******************************************************************************/
#define Tmr0IsrEna()	(ET0 = 1)
/******************************************************************************/

/**************************************************************************//**
 * @fn void Tmr0IsrDis(void)
 * @brief Schaltet den Interrupt des Timer0 aus
 ******************************************************************************/
#define Tmr0IsrDis()	(ET0 = 0)
/******************************************************************************/

#endif // __TIMER0_H__
