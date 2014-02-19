/**************************************************************************//**
 * @file sysCfg.c
 * @brief Hier werden die Hardwareeigenschaften des Systems definiert
 * @author Roman Buchert (roman.buchert@googlemail.com)
 *****************************************************************************/
#ifndef __SYSCFG_H__
#define __SYSCFG_H__
/*****************************************************************************/

/*****************************************************************************
 * INCLUDE-Dateien
 *****************************************************************************/
#include <t89c51cc02.h>
/*****************************************************************************/

/*****************************************************************************
 * ENUMS
 *****************************************************************************/
#ifndef __SYS_ENUMS__
#define __SYS_ENUMS__
///@enum ESysClockMode
///@brief Enum mit den verschiedenen Taktmodis
typedef enum ESysClockMode
{
    X2_OFF = 0,     ///< 12 Zyklen pro Takt
    X2_ON = 1       ///< 6 Zyklen pro Takt
} TSysClockMode;
#endif //__SYS_ENUMS__
/*****************************************************************************/

/*****************************************************************************
 * DEFINES
 *****************************************************************************/
#ifndef __SYS_DEFINES__
#define __SYS_DEFINES__
    ///@def MAX_CLOCK_X1
    ///@brief Maximale Prozessorfrequenz im X1-Modus
    #define MAX_CLOCK_X1	40000000
    ///@def MAX_CLOCK_X2
    ///@brief Maximale Prozessorfrequenz im X2-Modus.
    ///In der Regel MAX_CLOCK_X1 / 2
	#define MAX_CLOCK_X2	(MAX_CLOCK_X1 >> 1)
#endif //__SYS_DEFINES__
/*****************************************************************************/

/**************************************************************************//**
 * @brief Erste Funktion die aufgerufen werden muss.
 * Hier wird die Quarzfreqzenz und der X2-Modus angegeben. Der X2-Modus wird
 * nur aktiviert, wenn die Frequenz innerhalb des zulässigen Bereiches ist.
 * @param u32LQuarzFreq Frequenz des Quarzes in Hertz
 * @param eSysClockMode Gibt den X-Modus des Prozessors an @see ESysClockMode
 *****************************************************************************/
void SysInit(__u32 u32LQuarzFreq, TSysClockMode eSysClockMode);
/*****************************************************************************/

/**************************************************************************//**
 * @brief Gibt die eingestellte Quarzfrequenz zurück
 * @return Die Quarzfrequenz in Hertz
 *****************************************************************************/
__u32 SysGetQuarzFreq(void);
/*****************************************************************************/

/**************************************************************************//**
 * @brief Gibt den X-Modus zurück
 * @return  Das eingestellte Bit0 im Register CKCON \n
 *          0: X2-Modus aus (12 Zyklen pro Takt) \n
 *          1: X2-Modus ein (6 Zyklen pro Takt)
 *****************************************************************************/
__u8 SysGetX2Mode(void);
/*****************************************************************************/

/**************************************************************************//**
 * @brief Diese Funktion springt an Adresse 0 (Reset)
 *****************************************************************************/
#define Neustart (*((const void(CODE *)(void)) 0x0000 ))
/*****************************************************************************/

#endif //__SYSCFG_H__

