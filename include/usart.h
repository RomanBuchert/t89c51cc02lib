/******************************************************************************
 * Diese Dateie steuert den Zugriff auf die serielle Schnittstelle
 * Als Baudratengenerator wird Timer2 verwendet
 * Die Schnittstelle wird als 8N1 initialisiert.
 ******************************************************************************/
#ifndef __USART_H__
#define __USART_H__
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <sysCfg.h>
/******************************************************************************/

/******************************************************************************
 * Initialisiert die Schnittstelle mit 8N1
 * Die Portpins der Schnittstelle werden auf HIGH gesetzt
 * Das Empfangen wird NICHT aktiviert
 ******************************************************************************/
void UsartInit(void);
/******************************************************************************/

/*****************************************************************************
 * AutoBaud ermittelt die Baudrate. Dazu muss vom Host ein 'U' (grosses U)
 * gesendet werden. Die Schnittstelle wird im Mode 1 (8Bit) mit der ent-
 * sprechenden Baudrate eingestellt. Als Baudratengenerator dient Timer2.
 * Das Senden und Empfangen wird NICHT eingeschaltet.
 *****************************************************************************/
void UsartAutoBaud(void);
/*****************************************************************************/

/******************************************************************************
 * Setzt die Baudrate der seriellen Schnittstelle
 * Timer 2 wird als Baudrategenerator benutzt.
 * Es werden folgende #defines aus sysCfg.h zur Berechnung benutzt:
 *	SYS_CLOCK, SYS_CLOCKMODE
 ******************************************************************************/
__s16 UsartSetBaudrate(__u32 u32Baudrate);
/******************************************************************************/

/******************************************************************************
 * Putchar blockierend (ohne Interruptfunktionalität)
 ******************************************************************************/
void UsartPutcharBlocking(__s8 c);
/******************************************************************************/

/******************************************************************************
 * Putchar blockierend (ohne Interruptfunktionalität)
 ******************************************************************************/
void UsartPutcharBlocking(__s8 c);
/******************************************************************************/

/******************************************************************************
 * Getchar blockierend (ohne Interruptfunktionalität)
 ******************************************************************************/
__s8 UsartGetcharBlocking(void);
/******************************************************************************/

/******************************************************************************
 * putchar
 ******************************************************************************/
void putchar (__s8 c);
/******************************************************************************/

/******************************************************************************
 * getchar
 ******************************************************************************/
__s8 getchar(void);
/******************************************************************************/

/******************************************************************************
 * Setzt die Putchar-Funktion
 ******************************************************************************/
void SetPutcharFnc(void (*Fnc)(__s8));
/******************************************************************************/

/******************************************************************************
 * Setzt die Getchar-Funktion
 ******************************************************************************/
void SetGetcharFnc(__s8 (*Fnc)(void));
/******************************************************************************/

/******************************************************************************
 * gets mit Laengenbegrenzung
 ******************************************************************************/
__s8 *ngets(__u8 u8Size, __s8 *s);
/******************************************************************************/

/******************************************************************************
 * Schaltet den Empfänger der Schnittstelle ein
 ******************************************************************************/
#define UsartRecEna() REN = 1
/******************************************************************************/

/******************************************************************************
 * Schaltet den Empfänger der Schnittstelle aus
 ******************************************************************************/
#define UsartRecDis() REN = 0
/******************************************************************************/

/******************************************************************************
 *
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 *
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 *
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 *
 ******************************************************************************/
/******************************************************************************/


/*
void ClearEmpfangsBuffer(void);
bit CheckNeueDaten(void);
char *GetRsDaten(void);
void SendRsDaten(char *sRsString);
void USART_viIsr(void) __interrupt (4);



*/

/******************************************************************************
 *
 ******************************************************************************/
#endif //__USART_H__
/******************************************************************************/
