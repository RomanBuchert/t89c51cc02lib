/**************************************************************************//**
 * @file eeprom.c
 * @brief Funktionen um das interne EEPROM zu lesen und beschreiben
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <eeprom.h>
/******************************************************************************/

/******************************************************************************
 * Fileglobale Variabeln
 ******************************************************************************/
/******************************************************************************/

/**************************************************************************//**
 * @fn __u8 EepromReadByte(VAR(__s16, Adresse, DATA))
 * @brief Liest ein Byte aus dem EERPROM.
 * @param Adresse Adresse von der gelesen werden soll.
 * @return Der Wert, der an Adresse steht.
 ******************************************************************************/
__u8 EepromReadByte(VAR(__s16, Adresse, DATA)) Critical
{
	VAR(__u8, Inhalt, DATA);
	EECON |= 0x02;
	while (EepromCheckBusy());
	Inhalt = *((VAR(__u8, *, XDATA)) Adresse);
	EECON = 0x00;
	return Inhalt;
}
/******************************************************************************/

/**************************************************************************//**
 * @fn void EepromWriteByte(VAR(__u16, Adresse, DATA), VAR(__u8, Wert, DATA))
 * @brief Schreibt ein Byte ins EEPROM.
 * @param Adresse Adresse, an die geschrieben werden soll.
 * @param Wert Wert, der an die Adresse geschrieben werden soll.
 ******************************************************************************/
void EepromWriteByte(VAR(__u16, Adresse, DATA), VAR(__u8, Wert, DATA)) Critical
{
	EECON |= 0x02;
	while (EepromCheckBusy());
	*((VAR(__u8, *, XDATA))Adresse) = Wert;
	EECON = 0x52;
	EECON = 0xA2;
	EECON = 0x00;
}
/******************************************************************************/

/**************************************************************************//**
 * @fn void EepromWritePage(VAR(__u8, Page, DATA), VAR(__u8, Wert, DATA))
 * @brief Füllt eine Seite (128Byte) im EEPROM mit dem angegebenen Wert.
 * @param Page Seite (0..15), die gefüllt werden soll.
 * @param Wert Wert, mit dem die Seite gefüllt werden soll.
 ******************************************************************************/
void EepromWritePage(VAR(__u8, Page, DATA), VAR(__u8, Wert, DATA)) Critical
{
	VAR(__u8, Cntr, DATA);
	VAR(__u16, Adresse, DATA);

	Page &= 0x0F;	//max 15 Pages
	Adresse = Page * 0x80;

	EECON |= 0x02;
	while (EepromCheckBusy());
	for (Cntr = 0; Cntr < 0x80; Cntr++)
	{
		*((VAR(__u16, *, XDATA))Adresse) = Wert;
	}
	EECON = 0x52;
	EECON = 0xA2;
	EECON = 0x00;
}
/******************************************************************************/
