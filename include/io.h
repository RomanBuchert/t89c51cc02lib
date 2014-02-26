/******************************************************************************
 * Diese Dateie steuert den Zugriff auf die digitalen Ein-Ausgänge
 * Da die Ports nicht indirekt angesprochen werden können, muss hier leider mit
 * Makros gearbeitet werden
 ******************************************************************************/
#ifndef IO_H_
#define IO_H_
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <sysCfg.h>
/******************************************************************************/

/**************************************************************************//**
 * @def IoWritePort(Port, Wert)
 * @brief Schreibt einen Wert auf einen Ausgangsport
 * @param Port Port, auf den geschrieben werden soll (P0, P1, ...)
 * @param Wert Wert, der auf den Port geschrieben werden soll (0..255)
 *
 ******************************************************************************/
#define IoWritePort(Port, Wert) Port = Wert
/******************************************************************************/

/**************************************************************************//**
 * @def IoWriteBit(Port, Bit, Wert)
 * @brief Verändert ein Bit auf dem angegebenen Port
 * @param Port Port, dessen Bit verändert werden soll (P0, P1, ...)
 * @param Bit Bit, welches auf dem Port verändert werden soll (0..7)
 * @param Wert Wert, auf den das Bit verändert werden soll (0..1)
 *
 ******************************************************************************/
#define IoWriteBit(Port, Bit, Wert) Port ##_## Bit = Wert
/******************************************************************************/

/**************************************************************************//**
 * @def IoReadPort(Port)
 * @brief Liest einen Port ein.
 * @param Port Port, von dem gelesen werden soll (P0, P1, ...)
 ******************************************************************************/
#define IoReadPort(Port) Port
/******************************************************************************/

/**************************************************************************//**
 * @def IoReadBit(Port, Bit)
 * @brief Liest ein einzelnes Bit von dem angegeben Port
 * @param Port Port, dessen Bits gelesen werden sollen (P0, P1, ...)
 * @param Bit Bit, welches von dem Port gelesen werden soll (0..7)
 ******************************************************************************/
#define IoReadBit(Port, Bit) Port ##_## Bit
/******************************************************************************/
#endif /* IO_H_ */
