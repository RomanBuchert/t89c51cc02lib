/**************************************************************************//**
 * @file compiler.h
 * @brief Definitionen um Copilerabhängigkeiten zu verbergen
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
#ifndef COMPILER_H_
#define COMPILER_H_
/******************************************************************************/

/******************************************************************************
 * Definitionen für den SDCC-Compiler
 ******************************************************************************/
#ifdef __SDCC
#define Reentrant(x)	x __reentrant
#define Sfr(x, y)		__sfr __at (y) x
#define Sfr16(x,y)		__sfr16 __at (y) x
#define Sbit(x, y, z)	__sbit __at (y+z) x
#define Interrupt(x,y) 	void x(void) __interrupt(y)
#define At(x)			__at (x)
#define Naked			__naked
#define Critical		__critical
#define Asm				__asm
#define Endasm			__endasm;

#define BIT				__bit
#define DATA			__data
#define IDATA			__idata
#define PDATA			__pdata
#define XDATA			__xdata
#define CODE			__code

#define VAR(type, name, stored)	stored type name
#define PTR(type, name, stored, point2) point2 type * stored name

#endif //__SDCC
/******************************************************************************/

/******************************************************************************
 * Definitionen für den KEIL-C51x-Compiler
 ******************************************************************************/
#ifdef KEIL
#define Reentrant(x)	x reentrant
#define Sfr(x,y)		sfr x = y
#define Sfr16(x,y)		sfr16 x = y
#define Sbit(x,y,z)		sbit x = y ^ z
#define Interrupt(x,y)	void x(void) interrupt y
#define At(x)			_at_ x
#define Naked
#define Critical		#pragma disable
#define Asm				#pragma asm
#define Endasm			#pragma endasm

#define BIT				bit
#define DATA			data
#define IDATA			idata
#define PDATA			pdata
#define XDATA			xdata
#define CODE			code

#define VAR(type, name, stored)	type stored name
#define PTR(type, name, stored, point2) type point2 * stored name

#endif //KEIL
/******************************************************************************/

/******************************************************************************
 * Definitionen für den GCC-Compiler
 ******************************************************************************/
#ifdef __GNUC__
#define Reentrant(x)	x __reentrant
#define Interrupt(x,y) 	void x(void)
#define At(x)			__at (x)
#define Naked			__naked
#define Critical		__critical
#define Asm				__asm
#define Endasm			__endasm;

#define BIT
#define DATA
#define IDATA
#define PDATA
#define XDATA
#define CODE

#define VAR(type, name, stored)	stored type name
#define PTR(type, name, stored, point2) point2 type * stored name

#endif //__GNUC__
/******************************************************************************/

/******************************************************************************
 * Allgeimeine Definitionen, gültig für alle Compiler
 ******************************************************************************/
/**************************************************************************//**
 * @def BOOL
 * @brief Datentyp BOOL compilerunabhängig definieren.
 *
 ******************************************************************************/
#define BOOL	BIT
/******************************************************************************/
#endif /* COMPILER_H_ */

/* Ab hier nur Doku,  */
#ifdef __DOXYGEN
/**************************************************************************//**
 * @def Reentrant(x)
 * @brief Ermöglicht compilerunabhängige reentrante Funktionen.
 * Da SDCC und Keil unterschiedliche Arten der Definition von reentranten
 * Funktionen nutzen, und dies durch die Definition Reentrant verborgen.
 * @a x ist dabei der komplette Funktionskopf.
 ******************************************************************************/
#define Reentrant(x)
/******************************************************************************/

/**************************************************************************//**
 * @def Sfr(x, y)
 * @brief Ermöglichte die compilerunabhängige Definition von Sfrs.
 * @a x ist dabei der Name des SFR, @a y die Adresse des SFR.
 * @param x Name des SFRs
 * @param y Adresse des SFRs
 ******************************************************************************/
#define Sfr(x, y)
/******************************************************************************/

/**************************************************************************//**
 * @def Sfr16(x, y)
 * @brief Ermöglichte die compilerunabhängige Definition von 16-Bit-Sfrs.
 * Siehe Sfr(x, y)
 * @see Sfr(x, y)
 ******************************************************************************/
#define Sfr16(x, y)
/******************************************************************************/

/**************************************************************************//**
 * @def Sbit(x, y, z)
 * @brief Ermöglicht die compilerunabhängige Definition von Sbits
 * @a x ist dabei der Name des Bits, @a y die Adresse des SFR in dem das Bit liegt
 * und @a z die Position im SFR
 * @param x Name des Sbit
 * @param y Name des SFR in dem das Bit liegt
 * @param z Position des bit im SFR
 ******************************************************************************/
#define Sbit(x, y, z)
/******************************************************************************/

/**************************************************************************//**
 * @def Interrupt(x, y)
 * @brief Ermöglicht die compilerunabgängige Definition von Interrupts
 * @a x Funktionsname des Interrupts. Das Macro erweitert dies zu void x(void).
 * @a y ist die Interruptnummer bzw. der Interruptvector.
 * @param x Funktionsname des Interrupts. Wird zu void x(void) erweitert.
 * @param y Nummer bzw. Vektor des Interrupts
 ******************************************************************************/
#define Interrupt(x, y)
/******************************************************************************/

/**************************************************************************//**
 * @def At(x)
 * @brief Ermöglicht die compilerunabhängige Definition einer Variable an einer
 * definierten Speicherstelle.
 * @a x ist dabei die Adresse, an der sich die Variable befinden soll.
 * @param x Adresse, an der sich die Variable befinden soll.
 ******************************************************************************/
#define At(x)
/******************************************************************************/

/**************************************************************************//**
 * @def BIT
 * @brief Compilerunabgängige Definition des Speicherortes BIT.
 * Legt den Speicherort der Variable im bitadressierbaren Bereicht des
 * Prozessors ab.
 ******************************************************************************/
#define BIT
/******************************************************************************/

/**************************************************************************//**
 * @def DATA
 * @brief Compilerunabhängige Definition des Speicherortes DATA
 * Legt den Speicherort der Variable in den ersten 128 Byte des direkt
 * adressierbaren internen Speicherbereich des Prozessors.
 * Speicherortabhängige Variablen sollten nur mit dem Makro
 * @a VAR(type, name, stored) definiert werden.
 * @see VAR(type, name, stored)
 ******************************************************************************/
#define DATA
/******************************************************************************/

/**************************************************************************//**
 * @def IDATA
 * @brief Compilerunabhängige Definition des Speicherortes IDATA
 * Legt den Speicherort der Variable in die 256 Byte des internen Speichers.
 * Der Zugriff erfolgt durch indirekte Adressierung.
 * @see DATA
 ******************************************************************************/
#define IDATA
/******************************************************************************/

/**************************************************************************//**
 * @def PDATA
 * @brief Compilerunabhängige Definition des Speicherortes PDATA
 * Legt den Speicherort der Variable in den externen Speicher. Der Zugriff
 * erfolgt durch indirekte adressierung über das DPTR-Register. Es kann lediglich
 * auf eine Page (256) Byte zugegriffen werden. (Compact Model)
 * @see DATA
 ******************************************************************************/
#define PDATA
/******************************************************************************/

/**************************************************************************//**
 * @def XDATA
 * @brief Compilerunabhängige Definition des Speicherortes XDATA
 * Legt den Speicherort der Variable in den externen Speicher. Der Zugriff
 * erfolgt durch indirekte adressierung über das DPTR-Register. Es kann auf den
 * gesamten externen Speicher zugegriffen werden (64k)
 * @see DATA
 * @see PDATA
 ******************************************************************************/
#define XDATA
/******************************************************************************/

/**************************************************************************//**
 * @def CODE
 * @brief Compilerunabhängige Definition des Speicherortes CODE
 * Legt den Speicherort der Variable in den Programmspeicher. Auf diese Varable
 * kann nur lesend zugegriffen werden.
 * @see DATA
 ******************************************************************************/
#define CODE
/******************************************************************************/

/**************************************************************************//**
 * @def VAR(type, name, stored)
 * @brief Diese Makro ermöglicht die compilerunabhängige Definition einer
 * speicherortabhängigen Variablen.\n
 * Sollen Zeiger definiert werden, so ist wie folgt vorzugehen:\n
 * @a type beinhaltet den Typ.\n
 * @a name * \<Speicherort\> \<Name\>\n
 * @a stored Speicherbereich, in den der Zeiger zeigen soll.\n
 * Beispiel: @a VAR(__u32, * DATA ptr, XDATA) erstellt einen 32-Bit-Zeiger "ptr"
 * der im DATA-Bereich liegt und auf den XDATA-Bereich zeigt.
 * @param type Datentyp der Variable (char, int, ...)
 * @param name Name der Variablen
 * @param stored Ort, an dem die Variable gespeichert werden soll;
 * z.B. DATA, XDATA, CODE.
 * @see DATA IDATA PDATA XDATA CODE
 * @see PTR(type, name, stored, point2)
 ******************************************************************************/
#define VAR(type, name, stored)
/******************************************************************************/

/**************************************************************************//**
 * @def PTR(type, name, stored, point2)
 * @brief Diese Makro ermöglicht die compilerunabhängige Definition eines
 * speicherortabhängigen Zeigers.
 * @param type Datentyp des Zeigers (char, int, ...)
 * @param name Name des Zeigers
 * @param stored Ort, an dem der Zeigers gespeichert werden soll;
 * z.B. DATA, XDATA, CODE.
 * @param point2 Ort, auf den der Zeiger zeigen soll.
 * z.B. DATA, XDATA, CODE.
 * @see DATA IDATA PDATA XDATA CODE
 * @see VAR(type, name, stored)
 *
 ******************************************************************************/
#define PTR(type, name, stored, point2)
/******************************************************************************/

/**************************************************************************//**
 * @def Naked
 * @brief Lässt bei einem Funktionsaufruf den Prolog/Epilog weg
 *
 ******************************************************************************/
#define Naked
/******************************************************************************/

/**************************************************************************//**
 * @def Critical
 * @brief Sperrt die Interrupts für kritische Abschnitte
 *
 ******************************************************************************/
#define Critical
/******************************************************************************/

/**************************************************************************//**
 * @def Asm
 * @brief Zeigt den Beginn eines Abschnittes in Assembler an.
 *
 ******************************************************************************/
#define Asm
/******************************************************************************/

/**************************************************************************//**
 * @def Endasm
 * @brief Zeigt das Ende eines Abschnittes in Assembler an.
 *
 ******************************************************************************/
#define Endasm
/******************************************************************************/

/**************************************************************************//**
 * @def <Definition>
 * @brief <Kurzbeschreibung>
 *
 ******************************************************************************/
/******************************************************************************/

/**************************************************************************//**
 * @def <Definition>
 * @brief <Kurzbeschreibung>
 *
 ******************************************************************************/
/******************************************************************************/

#endif
