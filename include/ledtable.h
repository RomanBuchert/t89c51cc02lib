/**************************************************************************//**
 * @file ledtable.h
 * @brief Diese Datei beinhaltet eine Tabelle mit der eine LED mittels
 * PWM linear angesteuert werden kann.
 *
 * Berechnet wurde die Werte mit folgender Formel:\n
 * Wert = (PWM-MAX)^((1/(AnzahlTabellenwerte - 2) * (Tabellenplatz -1)) \n
 * Wert = (  255  )^((1/(         254           ) * (0..254) \n
 * Index 0 wurde manuell mit 0 eingetragen.                     
 * @author Roman Buchert (roman.buchert@googlemail.com)
 ******************************************************************************/
#ifndef __LEDTABLE_H__
#define __LEDTABLE_H__
/******************************************************************************/

/**************************************************************************//**
 * @brief Tabelle um eine LED mittels PWM linear anzusteuern
 ******************************************************************************/
static const __code __u8 u8LedValues[256]=
{
      0,   1,   1,   1,   1,   1,   1,   1,
      1,   1,   1,   1,   1,   1,   1,   1,
      1,   1,   1,   1,   2,   2,   2,   2,
      2,   2,   2,   2,   2,   2,   2,   2,
      2,   2,   2,   2,   2,   2,   2,   2,
      2,   2,   2,   2,   3,   3,   3,   3,
      3,   3,   3,   3,   3,   3,   3,   3,
      3,   3,   3,   4,   4,   4,   4,   4,
      4,   4,   4,   4,   4,   4,   5,   5,
      5,   5,   5,   5,   5,   5,   5,   5,
      6,   6,   6,   6,   6,   6,   6,   7,
      7,   7,   7,   7,   7,   7,   8,   8,
      8,   8,   8,   8,   9,   9,   9,   9,
      9,  10,  10,  10,  10,  11,  11,  11,
     11,  12,  12,  12,  12,  13,  13,  13,
     13,  14,  14,  14,  15,  15,  15,  16,
     16,  16,  17,  17,  17,  18,  18,  19,
     19,  19,  20,  20,  21,  21,  22,  22,
     23,  23,  24,  24,  25,  25,  26,  26,
     27,  28,  28,  29,  29,  30,  31,  31,
     32,  33,  34,  34,  35,  36,  37,  37,
     38,  39,  40,  41,  42,  43,  44,  45,
     46,  47,  48,  49,  50,  51,  52,  53,
     54,  55,  57,  58,  59,  60,  62,  63,
     65,  66,  67,  69,  70,  72,  74,  75,
     77,  79,  80,  82,  84,  86,  88,  89,
     91,  93,  96,  98, 100, 102, 104, 107,
    109, 111, 114, 116, 119, 121, 124, 127,
    130, 133, 135, 138, 141, 145, 148, 151,
    154, 158, 161, 165, 168, 172, 176, 180,
    184, 188, 192, 196, 201, 205, 210, 214,
    219, 224, 229, 234, 239, 244, 249, 255
};
/******************************************************************************/

#endif //__LEDTABLE_H__
