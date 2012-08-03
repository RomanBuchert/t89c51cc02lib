/**************************************************************************//**
 * @file pca.h
 * @brief Diese Dateie steuert den Zugriff auf die PCA-Timer
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
#ifndef __PCA_H__
#define __PCA_H__
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <mytypes.h>
#include <t89c51cc02.h>
/******************************************************************************/

/******************************************************************************
 * DEFINES
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 * ENUMS
 ******************************************************************************/
#ifndef __PCAENUMS__
#define __PCAENUMS__

/// @enum EPcaClkSource
/// @brief Enum mit der globalen Taktquelle des PCA-Moduls
typedef enum EPcaClkSource 
{
	FPCA_6 = 0,     ///< Taktquelle ist die Quarzfrequenz / 6
    FPCA_2,         ///< Taktquelle ist die Quarzfrequenz / 2
    TIMER0,         ///< Taktquelle ist Timer 0
    EXTERN          ///< Taktquelle ist der Externe Eingang CEXn
} TPcaClkSource;

/// @enum EPcaModul
/// @brief Enum mit den einzelnen Modulgruppen
typedef enum EPcaModul
{
	Pca0,           ///< PCA-Modul 0
    Pca1            ///< PCA-Modul 1
} TPcaModul;

// @enum EPcaMode
// @brief Enum mit den PCA-Modi
typedef enum EPcaMode
{
	CapturePosEdge = 0x10,  ///< Trigger auf positive Flanke an CEXn
    CaptureNegEdge = 0x20,  ///< Trigger auf negative Flanke an CEXn
    CaptureBothEdge = 0x30, ///< Trigger auf beide Flanken an CEXn
	Timer = 0x48,           ///< Modul arbeitet als Timer
    HighspeedOut = 0x4C,    ///< Modul arbeitet als High-Speed Ausgang an CEXn
    Pwm = 0x42              ///< Modul arbeitet als 8-Bit PWM-Generator an CEXn
} TPcaMode;

#endif // __PCAENUMS__
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert die PCA-Timer
 * Es wird die Taktquelle ausgewählt.
 * Das Modul wird gestoppt und das Interruptflag gelöscht.
 * @param eQuelle Gibt die Taktquelle an @see EPcaClkSource     
 ******************************************************************************/
void PcaInit(TPcaClkSource eQuelle);
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert die einzelnen PCA-Module
 * @param ePcaModul Das zu benutzende PCA-Modul @see EPcaModul
 * @param ePcaMode Der Modus in dem das Modul betrieben werden soll @see EPcaMode
 ******************************************************************************/
void PcaInitModul(TPcaModul ePcaModul, TPcaMode ePcaMode);
/******************************************************************************/

/**************************************************************************//**
 * @brief Gibt den aktuellen Modus des PCA-Moduls zurück
 * @param ePcaModul Das zu benutzende PCA-Modul @see EPcaModul
 * @return Der aktuell eingestelle Modus des Moduls @see EPcaMode
 ******************************************************************************/
TPcaMode PcaGetMode(TPcaModul ePcaModul);
/******************************************************************************/

/**************************************************************************//**
 * @brief Setzt den PWM-Wert des PCA-Moduls
 * @param ePcaModul Das zu benutzende PCA-Modul @see EPcaModul
 * @param u8PwmWert Pwm-Wert des Ausgangs. \n
 *                  0 == 0%; 255 == 100%
 * @return   0: Wert konnte gesetzt werden \n
 *          -1: Modul ist nicht im PWM-Modus \n
 *          -2: ungültiges PCA-Modul
 ******************************************************************************/
__s16 PcaSetPwm(TPcaModul ePcaModul, __u8 u8PwmWert);
/******************************************************************************/

#endif //__PCA_H__