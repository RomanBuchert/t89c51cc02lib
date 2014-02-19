/*
 * t89c51cc02_regdef.h
 *
 *  Created on: 18.02.2014
 *      Author: rb
 */

#ifndef T89C51CC02_REGDEF_H_
#define T89C51CC02_REGDEF_H_

//Register 0x80...0x8F
#define SP_ADDR				0x81
#define DPL_ADDR			0x82
#define DPH_ADDR			0x83
#define PCON_ADDR			0x87
#define TCON_ADDR			0x88
#define TMOD_ADDR			0x89
#define TL0_ADDR			0x8A
#define TL1_ADDR			0x8B
#define TH0_ADDR			0x8C
#define TH1_ADDR			0x8D
#define AUXR_ADDR			0x8E
#define CKCON_ADDR			0x8F

//Register 0x90...0x9F
#define P1_ADDR				0x90
#define SCON_ADDR			0x98
#define SBUF_ADDR			0x99
#define CANGIT_ADDR			0x9B
#define CANTEC_ADDR			0x9C
#define CANREC_ADDR			0x9D

//Register 0xA0...0xAF
#define P2_ADDR				0xA0
#define CANTCON_ADDR		0xA1
#define AUXR1_ADDR			0xA2
#define CANMSG_ADDR			0xA3
#define CANTTCL_ADDR		0xA4
#define CANTTCH_ADDR		0xA5
#define WDTRST_ADDR			0xA6
#define WDTPRG_ADDR			0xA7
#define IEN0_ADDR			0xA8
#define SADDR_ADDR			0xA9
#define CANGSTA_ADDR		0xAA
#define CANGCON_ADDR		0xAB
#define CANTIML_ADDR		0xAC
#define CANTIMH_ADDR		0xAD
#define CANSTMPL_ADDR		0xAE
#define CANSTMPH_ADDR		0xAF

//Register 0xB0...0xBF
#define P3_ADDR				0xB0
#define CANPAGE_ADDR		0xB1
#define CANSTCH_ADDR		0xB2
#define CANCONCH_ADDR		0xB3
#define CANBT1_ADDR			0xB4
#define CANBT2_ADDR			0xB5
#define CANBT3_ADDR			0xB6
#define IPH0_ADDR			0xB7
#define IPL0_ADDR			0xB8
#define SADEN_ADDR			0xB9
#define CANSIT_ADDR			0xBB
#define CANIDT1_ADDR		0xBC
#define CANIDT2_ADDR		0xBD
#define CANIDT3_ADDR		0xBE
#define CANIDT4_ADDR		0xBF

//Register 0xC0...0xCF
#define P4_ADDR				0xC0
#define CANGIE_ADDR			0xC1
#define CANIE_ADDR			0xC3
#define CANIDM1_ADDR		0xC4
#define CANIDM2_ADDR		0xC5
#define CANIDM3_ADDR		0xC6
#define CANIDM4_ADDR		0xC7
#define T2CON_ADDR			0xC8
#define T2MOD_ADDR			0xC9
#define RCAP2L_ADDR			0xCA
#define RCAP2H_ADDR			0xCB
#define TL2_ADDR			0xCC
#define TH2_ADDR			0xCD
#define CANEN_ADDR			0xCF

//Register 0xD0...0xDF
#define PSW_ADDR			0xD0
#define FCON_ADDR			0xD1
#define EECON_ADDR			0xD2
#define CCON_ADDR			0xD8
#define CMOD_ADDR			0xD9
#define CCAPM0_ADDR			0xDA
#define CCAPM1_ADDR			0xDB
#define CCAPM2_ADDR			0xDC
#define CCAPM3_ADDR			0xDD
#define CCAPM4_ADDR			0xDE


//Register 0xE0...0xEF
#define ACC_ADDR			0xE0
#define IEN1_ADDR			0xE8
#define CL_ADDR				0xE9
#define CCAP0L_ADDR			0xEA
#define CCAP1L_ADDR			0xEB
#define CCAP2L_ADDR			0xEC
#define CCAP3L_ADDR			0xED
#define CCAP4L_ADDR			0xEE

//Register 0xF0...0xFF
#define B_ADDR				0xF0
#define ADCLK_ADDR			0xF2
#define ADCON_ADDR			0xF3
#define ADDL_ADDR			0xF4
#define ADDH_ADDR			0xF5
#define ADCF_ADDR			0xF6
#define IPH1_ADDR			0xF7
#define IPL1_ADDR			0xF8
#define CH_ADDR				0xF9
#define CCAP0H_ADDR			0xFA
#define CCAP1H_ADDR			0xFB
#define CCAP2H_ADDR			0xFC
#define CCAP3H_ADDR			0xFD
#define CCAP4H_ADDR			0xFE

#endif /* T89C51CC02_REGDEF_H_ */
