/******************************************************************************
 * Diese Dateie steuert den Zugriff auf die serielle Schnittstelle
 * Als Baudratengenerator wird Timer2 verwendet
 * Die Schnittstelle wird als 8N1 initialisiert.
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 * INCLUDE-Dateien
 ******************************************************************************/
#include <usart.h>
/******************************************************************************/

void (*MyPutchar)(__s8 c);
__s8 (*MyGetchar)(void);

/******************************************************************************
 * Initialisiert die Schnittstelle mit 8N1
 * Die Portpins der Schnittstelle werden auf HIGH gesetzt
 * Das Empfangen wird NICHT aktiviert
 ******************************************************************************/
void UsartInit(void)
{
	// Schnittstelle als 8N1 mit variabler Baudrate definieren
	SCON = 0x40;
	// Portpins der Schnittstelle auf HIGH setzen
	P3 |= 0x03;
	// putchar / getchar Funktionen setzen
	SetPutcharFnc(UsartPutcharBlocking);
	SetGetcharFnc(UsartGetcharBlocking);
	TI = 0;
	RI = 0;
}
/******************************************************************************/

/*****************************************************************************
 * AutoBaud ermittelt die Baudrate. Dazu muss vom Host ein 'U' (grosses U)
 * gesendet werden. Die Schnittstelle wird im Mode 1 (8Bit) mit der ent-
 * sprechenden Baudrate eingestellt. Als Baudratengenerator dient Timer2.
 * Das Senden und Empfangen wird NICHT eingeschaltet.
 *****************************************************************************/
void UsartAutoBaud(void)
{
   __u16 u16Timerwert;
   __u16 u16Reloadwert;

   //Timer2 initialisieren
   T2CON = 0x00;
   T2MOD = 0x00;
   TH2 = 0x00;
   TL2 = 0x00;
   RCAP2H = 0xFF;
   RCAP2L = 0xFF;
   //Warte auf Startbit
   while (P3_0);
   while (!(P3_0));
   TR2 = 1;  //Timer starten
   //Das Zeichen 'U' (0x55=10101010b) bitweise Abfragen
   while (P3_0);  //Bit 0
   while (!P3_0); //Bit 1
   while (P3_0);  //Bit 2
   while (!P3_0); //Bit 3
   while (P3_0);  //Bit 4
   while (!P3_0); //Bit 5
   while (P3_0);  //Bit 6
   while (!P3_0); //Bit 7
   TR2 = 0;  //Timer stoppen
   u16Timerwert = (TH2<<8 | TL2) -1;  //Benoetigte Zeit berechnen

   //Reloadwert berechnen
   u16Reloadwert = 65536 - ((3*u16Timerwert) >> 6);
   //Reloadwert eintragen
   RCAP2L = (__s8)(u16Reloadwert & 0x00FF);
   RCAP2H = (__s8)(u16Reloadwert >> 8);
   //Timerregister löschen
   TL2 = 0;
   TH2 = 0;
   //UART einrichten
   SCON = 0x40;
   //Timer 2 als Baudratengenerator einsetzen und starten
   T2CON = 0x34;
}
/*****************************************************************************/

/******************************************************************************
 * Setzt die Baudrate der seriellen Schnittstelle
 * Timer 2 wird als Baudrategenerator benutzt.
 * Es werden folgende #defines aus sysCfg.h zur Berechnung benutzt:
 *	SYS_CLOCK, SYS_CLOCKMODE
 ******************************************************************************/
__s16 UsartSetBaudrate(__u32 u32Baudrate)
{
	#define BAUD_MIN (SysGetQuarzFreq() >> 21)
	#define BAUD_MAX (SysGetQuarzFreq() >> (6 >> SysGetX2Mode()))

	__u32 u32Reload;
	__u8 u8CKCON;
	__u8 u8PCON;
	
	if (u32Baudrate < BAUD_MIN)
	{
		return -1;
	}

	if (u32Baudrate > BAUD_MAX)
	{
		return -2;
	}

	u8CKCON = CKCON;
	u8PCON = PCON;
	
	//X2-Mode des Timers aktivieren
	if (SysGetX2Mode())
	{
		u8CKCON &= ~0x08;
	}
	
	//Double Baudrate deaktivieren
	u8PCON &= ~0x80;
	
	u32Reload = SysGetQuarzFreq() / u32Baudrate;
	u32Reload >>= 4;

	//Muss Double Baudrate deaktiviert werden?
	if (u32Reload > 0x0000FFFF)
	{
		u8PCON |= 0x80;
		u32Reload >>= 2;
	}

	//Muss X2 deaktiviert werden?
	if (u32Reload > 0x0000FFFF)
	{
		u8CKCON |= 0x08;
		u32Reload >>= 2;
	}
	
	u32Reload = 65536L - u32Reload;
	RCAP2L = (__s8) (u32Reload & 0xFF);
	RCAP2H = (__s8) ((u32Reload >> 8) & 0xFF);
	CKCON = u8CKCON;
	PCON = u8PCON;
	T2CON |= 0x34; //Timer 2 als Baudrategenerator aktivieren.

	return 0;
}
/******************************************************************************/

/******************************************************************************
 * Putchar blockierend (ohne Interruptfunktionalität)
 ******************************************************************************/
void UsartPutcharBlocking(__s8 c)
{
	TI = 0;
	SBUF = c;
	while (!TI);
}
/******************************************************************************/

/******************************************************************************
 * Getchar blockierend (ohne Interruptfunktionalität)
 ******************************************************************************/
__s8 UsartGetcharBlocking(void)
{
	__s8 c;
	while(!RI);
	c = SBUF;
	RI = 0;
	return c;
}
/******************************************************************************/

/******************************************************************************
 * putchar
 ******************************************************************************/
void putchar (__s8 c)
{
	MyPutchar(c);
}
/******************************************************************************/

/******************************************************************************
 * getchar
 ******************************************************************************/
__s8 getchar(void)
{
	return MyGetchar();
}
/******************************************************************************/

/******************************************************************************
 * Setzt die Putchar-Funktion
 ******************************************************************************/
void SetPutcharFnc(void (*Fnc)(__s8))
{
	MyPutchar = Fnc;
}
/******************************************************************************/

/******************************************************************************
 * Setzt die Getchar-Funktion
 ******************************************************************************/
void SetGetcharFnc(__s8 (*Fnc)(void))
{
	MyGetchar = Fnc;
}
/******************************************************************************/

/******************************************************************************
 * gets mit Laengenbegrenzung
 ******************************************************************************/
__s8 *ngets(__u8 u8Size, __s8 *s)
{
	__u8 c;
	__u8 u8Cntr = 0;
	while (u8Cntr < u8Size)
	{
		c = getchar();
		switch (c)
		{
			//Backspace abfangen
			case '\b':
			{
				if (u8Cntr)
				{
					//Zeichen aus Puffer schmeissen
					*(--s) = 0x00;
					u8Cntr--;
					//Zeichen auf Konsole löschen
					putchar('\b');
					putchar(' ');
					putchar('\b');
				}
				break;
			}

			// CR/LF behandeln
			case '\r':
			case '\n':
			{
				//letztes Zeichen als NULL setzen (Endekennung)
				*s = 0x00;
				//Zeichen auf Konsole ausgeben
				putchar('\r');
				putchar('\n');
				//Rueckgabe des Strings
				return s;
			}

			//normale Zeichen behandeln
			default:
			{
				//Zeichen an String anhängen
				*(s++) = c;
				//Zeichenzähler erhöhen
				u8Cntr++;
				//Zeichen ausgeben
				putchar(c);
				break;
			}
		}
	}
	//Raus wegen Laengenbegrenzung
	//letztes Zeichen auf NULL setzen (Endekennung)
	*(--s) = 0x00;
	return s;
}
/******************************************************************************/

/******************************************************************************
 *
 ******************************************************************************/
/******************************************************************************/

/******************************************************************************
 *
 ******************************************************************************/
/******************************************************************************/

