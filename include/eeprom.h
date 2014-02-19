/**************************************************************************//**
 * @file eeprom.h
 * @brief Funktionen um das interne EEPROM zu lesen und beschreiben
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
#ifndef EEPROM_H_
#define EEPROM_H_
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <sysCfg.h>
/******************************************************************************/

/******************************************************************************
 * Fileglobale Variabeln
 ******************************************************************************/
/******************************************************************************/

/**************************************************************************//**
 * @def EepromCheckBusy()
 * @brief Prüft, ob das EEPROM bereit ist.
 * @return Zustand des Bit EEBUSY im Register EECON
 ******************************************************************************/
#define EepromCheckBusy() (EECON & 0x01)
/******************************************************************************/

/**************************************************************************//**
 * @fn __u8 EepromReadByte(VAR(__s16, Adresse, DATA))
 * @brief Liest ein Byte aus dem EERPROM.
 * @param Adresse Adresse von der gelesen werden soll.
 * @return Der Wert, der an Adresse steht.
 ******************************************************************************/
__u8 EepromReadByte(VAR(__s16, Adresse, DATA)) Critical;
/******************************************************************************/

/**************************************************************************//**
 * @fn void EepromWriteByte(VAR(__u16, Adresse, DATA), VAR(__u8, Wert, DATA))
 * @brief Schreibt ein Byte ins EEPROM.
 * @param Adresse Adresse, an die geschrieben werden soll.
 * @param Wert Wert, der an die Adresse geschrieben werden soll.
 ******************************************************************************/
void EepromWriteByte(VAR(__u16, Adresse, DATA), VAR(__u8, Wert, DATA)) Critical;
/******************************************************************************/

/**************************************************************************//**
 * @fn void EepromWritePage(VAR(__u8, Page, DATA), VAR(__u8, Wert, DATA))
 * @brief Füllt eine Seite (128Byte) im EEPROM mit dem angegebenen Wert.
 * @param Page Seite (0..15), die gefüllt werden soll.
 * @param Wert Wert, mit dem die Seite gefüllt werden soll.
 ******************************************************************************/
void EepromWritePage(VAR(__u8, Page, DATA), VAR(__u8, Wert, DATA)) Critical;
/******************************************************************************/

#endif /* EEPROM_H_ */
