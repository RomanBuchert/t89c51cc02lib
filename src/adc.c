/**************************************************************************//**
 * @file adc.c
 * @brief Funktionen für den AD-Wandler
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <adc.h>
/******************************************************************************/

/******************************************************************************
 * ENUMS
 ******************************************************************************/
/******************************************************************************/

/**************************************************************************//**
 * @brief Initialisiert den AD-Wandler
 * @details Bei der Initialisierung wird versucht die Wandlungsfrequenz mittels
 * Prescaler auf die im Datenblatt angegebenen 700kHz einzustellen.
 * @param eAdcInput Bitmaske der aktiven AD-Kanäle @see EAdcInput
 ******************************************************************************/
void AdcInit(TAdcInput eAdcInput)
{
    __u8 u8AdcPrescaler;
    
    //Setzt den Prescaler für die Wandelfrequenz
    u8AdcPrescaler = (__u8) (SysGetQuarzFreq() / (2800000));
    u8AdcPrescaler <<= SysGetX2Mode();

    if (u8AdcPrescaler < 32)
    {
        ADCLK = (u8AdcPrescaler & 0x1F);
    }
    else
    {
        ADCLK = 0;
    }
    ADCF = (__u8) eAdcInput;
    ADCON |= 0x20;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Aktiviert einzelne oder mehrere AD-Kanäle
 * @param eAdcInput Bitmaske der aktiven AD-Kanäle @see EAdcInput
 ******************************************************************************/
void AdcSetChannels(TAdcInput eAdcInput)
{
    ADCF |= (__u8) eAdcInput;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Deaktiviert einzelne oder mehrere AD-Kanäle
 * @param eAdcInput Bitmaske der aktiven AD-Kanäle @see EAdcInput
 ******************************************************************************/
void AdcClearChannels(TAdcInput eAdcInput)
{
    ADCF &= (__u8) ~eAdcInput;
}
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
__u16 Adc10BitConversion(TAdcChannel eAdcChannel)
{
    __u16 u16AdcWert = 0;

    //Pruefe ob der angegebene Kanal aktiv ist.
    eAdcChannel &= 0x07;
    if (AdcGetActiveChannels() & (1<<eAdcChannel))
    {
        //Kanal eintragen
        ADCON = 0x60;
        ADCON |= (eAdcChannel);
        //Wandlung starten
        ADCON |= 0x08;
        //Warte bis beendet
        while(1)
        {
            if ((ADCON & 0x18) == 0x10)
            {
                break;
            }
        }
        //Statusbits zurücksetzen (PSIDLE)
        ADCON &= ~0x40;
        //AD-Wert lesen
        u16AdcWert = AdcGet10BitValue();
    }
    return u16AdcWert;
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Startet eine 10Bit-Wandlung ohne zu warten
 * @details Die Wandlung wird gestartet. Da eine 10-Bit-Wandlung durchgeführt 
 * wird, wird der Prozessor über das Flag PSIDLE in den Schlafmodus versetzt.
 * @note Falls der ausgewählte Kanal nicht aktiviert ist, wird keine Wandlung
 * gestartet.
 * @param eAdcChannel zu wandelnder Kanal @see EAdcChannel
 ******************************************************************************/
void AdcStart10BitConversion(TAdcChannel eAdcChannel)
{
    //Pruefe ob der angegebene Kanal aktiv ist.
    eAdcChannel &= 0x07;
    if (AdcGetActiveChannels() & (1<<eAdcChannel))
    {
        //Kanal eintragen
        ADCON = 0x60;
        ADCON |= (eAdcChannel);
        //Wandlung starten
        ADCON |= 0x08;
    }
}
/******************************************************************************/

/**************************************************************************//**
 * @brief Prüft ob eine Wandlung aktiv ist.
 * @details Als Wandlungsende muss im Register ADCON 
 * ADSST low und ADEOC auf High sein
 * @return
 * 0: Wandlung beendet \n
 * 1: Wandlung läuft noch
 ******************************************************************************/
__u8 AdcConversionReady(void)
{
    if ((ADCON & 0x18) == 0x10)
    {
        return 0;
    }
    else
    {
        return 1;
    }
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

