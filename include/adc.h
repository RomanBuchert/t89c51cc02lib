/**************************************************************************//**
 * @file adc.h
 * @brief Funktionen für den AD-Wandler
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
#ifndef __ADC_H__
#define __ADC_H__
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <sysCfg.h>
/******************************************************************************/

/******************************************************************************
 * ENUMS
 ******************************************************************************/
#ifndef __ADC_ENUMS__
#define __ADC_ENUMS__
///@enum EAdcInput
///@brief Auflistung der ADC-Eingangpins zur Konfiguration des AD-Wandlers
typedef enum EAdcInput {
    ADC_IN0 = 0x01,     ///< ADC-Eingangspin Kanal 0
    ADC_IN1 = 0x02,     ///< ADC-Eingangspin Kanal 1
    ADC_IN2 = 0x04,     ///< ADC-Eingangspin Kanal 2
    ADC_IN3 = 0x08,     ///< ADC-Eingangspin Kanal 3
    ADC_IN4 = 0x10,     ///< ADC-Eingangspin Kanal 4
    ADC_IN5 = 0x20,     ///< ADC-Eingangspin Kanal 5
    ADC_IN6 = 0x40,     ///< ADC-Eingangspin Kanal 6
    ADC_IN7 = 0x80,     ///< ADC-Eingangspin Kanal 7
        
} TAdcInput;

///@enum EAdcChannel
///@brief Auflistung mit den ADC-Kanälen zur Auswahl der Wandlung
typedef enum EAdcChannel {
    ADC_CH0 = 0,        ///< ADC-Kanal 0
    ADC_CH1,            ///< ADC-Kanal 1
    ADC_CH2,            ///< ADC-Kanal 2
    ADC_CH3,            ///< ADC-Kanal 3
    ADC_CH4,            ///< ADC-Kanal 4
    ADC_CH5,            ///< ADC-Kanal 5
    ADC_CH6,            ///< ADC-Kanal 6
    ADC_CH7             ///< ADC-Kanal 7
} TAdcChannel;
#endif //__ADC_ENUMS__
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert den AD-Wandler
 * @details Bei der Initialisierung wird versucht die Wandlungsfrequenz mittels
 * Prescaler auf die im Datenblatt angegebenen 700kHz einzustellen.
 * @param eAdcInput Bitmaske der aktiven AD-Kanäle @see EAdcInput
 ******************************************************************************/
void AdcInit(TAdcInput eAdcInput);
/******************************************************************************/

/**************************************************************************//**
 * @brief Aktiviert einzelne oder mehrere AD-Kanäle
 * @param eAdcInput Bitmaske der aktiven AD-Kanäle @see EAdcInput
 ******************************************************************************/
void AdcSetChannels(TAdcInput eAdcInput);
/******************************************************************************/

/**************************************************************************//**
 * @brief Deaktiviert einzelne oder mehrere AD-Kanäle
 * @param eAdcInput Bitmaske der aktiven AD-Kanäle @see EAdcInput
 ******************************************************************************/
void AdcClearChannels(TAdcInput eAdcInput);
/******************************************************************************/

/**************************************************************************//**
 * @brief Startet eine 10Bit-Wandlung und wartet bis diese beendet ist
 * @details Die Wandlung wird gestartet und es wird gewartet bis diese beendet
 * ist. Dazu werden die Flags ADSST und ADEOC im Register ADCON ausgewertet.
 * Da eine 10-Bit-Wandlung durchgeführt wird, wird der Prozessor über das Flag
 * PSIDLE in den Schlafmodus versetzt.
 * @note Falls der ausgewählte Kanal nicht aktiviert ist, wird keine Wandlung
 * gestartet.
 * @param eAdcChannel zu wandelnder Kanal @see EAdcChannel
 ******************************************************************************/
__u16 Adc10BitConversion(TAdcChannel eAdcChannel);
/******************************************************************************/

/**************************************************************************//**
 * @brief Startet eine 10Bit-Wandlung ohne zu warten
 * @details Die Wandlung wird gestartet. Da eine 10-Bit-Wandlung durchgeführt 
 * wird, wird der Prozessor über das Flag PSIDLE in den Schlafmodus versetzt.
 * @note Falls der ausgewählte Kanal nicht aktiviert ist, wird keine Wandlung
 * gestartet.
 * @param eAdcChannel zu wandelnder Kanal @see EAdcChannel
 ******************************************************************************/
void AdcStart10BitConversion(TAdcChannel eAdcChannel);
/******************************************************************************/

/**************************************************************************//**
 * @brief Prüft ob eine Wandlung aktiv ist.
 * @details Als Wandlungsende muss im Register ADCON 
 * ADSST low und ADEOC auf High sein
 * @return
 * 0: Wandlung beendet \n
 * 1: Wandlung läuft noch
 ******************************************************************************/
__u8 AdcConversionReady(void);
/******************************************************************************/

/**************************************************************************//**
 *@fn EAdcInput AdcGetActiveChannels(void)
 *@brief Gibt die aktiven Kanäle zurück.
 *@return Bitmuster der aktiven Kanäle @see EAdcInput
 ******************************************************************************/
#define AdcGetActiveChannels() (ADCF)
/******************************************************************************/

/**************************************************************************//**
 *@fn __u16 AdcGet10BitValue(void)
 *@brief Gibt den aktuellen AD-Wert der letzten Wandlung zurück
 *@note Achtung der AD-Wert muss nicht zwingend mit dem ausgewählten Kanal
 *übereinstimmen!
 *@return Ergebnis der letzten AD-Wandlung
 ******************************************************************************/
#define AdcGet10BitValue() ((__u16) (((__u16) ADDH<<2) | (ADDL)))
/******************************************************************************/

#endif //__ADC_H__
