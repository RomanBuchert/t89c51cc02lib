/**************************************************************************//**
 * @file pca.c
 * @brief Diese Dateie steuert den Zugriff auf die PCA-Timer
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <pca.h>
/******************************************************************************/

/******************************************************************************
 * Globale Variablen
 ******************************************************************************/
TPcaClkSource ePcaClkSource = -1;   ///< Speichert die Taktquelle
TPcaMode ePcaModePca0 = -1;         ///< Speichert den Modus des PCA-Modul 0
TPcaMode ePcaModePca1 = -1;         ///< Speichert den Modus des PCA-Modul 1

/******************************************************************************/
 
/**************************************************************************//**
 * @brief Initialisiert die PCA-Timer
 * Es wird die Taktquelle ausgewählt.
 * Das Modul wird gestoppt und das Interruptflag gelöscht.
 * @param eQuelle Gibt die Taktquelle an @see EPcaClkSource     
 ******************************************************************************/
void PcaInit(TPcaClkSource eQuelle)
{
	CMOD = 0x00;
	CMOD |= (eQuelle & 0x03) << 1;
    CMOD &= ~0x01;
    CCON |= 0x40;
	ePcaClkSource = eQuelle;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert die einzelnen PCA-Module
 * @param ePcaModul Das zu benutzende PCA-Modul @see EPcaModul
 * @param ePcaMode Der Modus in dem das Modul betrieben werden soll @see EPcaMode
 ******************************************************************************/
void PcaInitModul(TPcaModul ePcaModul, TPcaMode ePcaMode)
{
	switch (ePcaModul)
	{
		case Pca0:
		{
			CCAPM0 &= ~0x7E;
			CCAPM0 |= ePcaMode;
			ePcaModePca0 = ePcaMode;
			break;
		}

		case Pca1:
		{
			CCAPM1 &= ~0x7E;
			CCAPM1 |= ePcaMode;
			ePcaModePca1 = ePcaMode;
			break;
		}
	}
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Gibt den aktuellen Modus des PCA-Moduls zurück
 * @param ePcaModul Das zu benutzende PCA-Modul @see EPcaModul
 * @return Der aktuell eingestelle Modus des Moduls @see EPcaMode
 ******************************************************************************/
TPcaMode PcaGetMode(TPcaModul ePcaModul)
{
    switch (ePcaModul)
    {
        case Pca0:
        {
            return (CCAPM0 & 0x7E);
            break;
        }

        case Pca1:
        {
            return (CCAPM1 & 0x7E);
            break;
        }
        default:
        {
            return -1;
            break;
        }
    }
}
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
__s16 PcaSetPwm(TPcaModul ePcaModul, __u8 u8PwmWert)
{
    if (PcaGetMode(ePcaModul) != Pwm)
    {
        return -1;
    }
    
    switch (ePcaModul)
    {
        case Pca0:
        {
            CCAP0H = u8PwmWert;
            CCAPM0 |= 0x40;
            break;
        }

        case Pca1:
        {
            CCAP1H = u8PwmWert;
            CCAPM1 |= 0x40;
            break;
        }

        default:
        {
            return -2;
            break;
        }
    }
    
    return 0;
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

/**************************************************************************//**
 *
 ******************************************************************************/
/******************************************************************************/

/**************************************************************************//**
 *
 ******************************************************************************/
/******************************************************************************/

