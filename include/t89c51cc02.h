/*H****************************************************************************
* NAME:           t89c51cc02.h
*------------------------------------------------------------------------------
* PURPOSE:
*	This file defines Sfr registers and BIT Registers for T89C51CC02
*	ON SDCC compiler
******************************************************************************/
#ifndef _T89C51CC02_H_

#define _T89C51CC02_H_
#include <compiler.h>
#include <mytypes.h>
#include <t89c51cc02_regdef.h>
/*----------------------------------------*/
/* Include file for 8051 SFR Definitions  */
/*----------------------------------------*/

/*  BYTE Register  */
Sfr (P1 , P1_ADDR);

Sbit (P1_7, P1_ADDR, 7);
Sbit (P1_6, P1_ADDR, 6);
Sbit (P1_5, P1_ADDR, 5);
Sbit (P1_4, P1_ADDR, 4);
Sbit (P1_3, P1_ADDR, 3);
Sbit (P1_2, P1_ADDR, 2);
Sbit (P1_1, P1_ADDR, 1);
Sbit (P1_0, P1_ADDR, 0);

Sfr (P2 , P2_ADDR);

Sbit (P2_1 , P2_ADDR, 1);
Sbit (P2_0 , P2_ADDR, 0);


Sfr (P3 , P3_ADDR);

Sbit (P3_7 , P3_ADDR, 7);
Sbit (P3_6 , P3_ADDR, 6);
Sbit (P3_5 , P3_ADDR, 5);
Sbit (P3_4 , P3_ADDR, 4);
Sbit (P3_3 , P3_ADDR, 3);
Sbit (P3_2 , P3_ADDR, 2);
Sbit (P3_1 , P3_ADDR, 1);
Sbit (P3_0 , P3_ADDR, 0);

Sbit (RD , P3_ADDR, 7);
Sbit (WR , P3_ADDR, 6);
Sbit (T1 , P3_ADDR, 5);
Sbit (T0 , P3_ADDR, 4);
Sbit (INT1, P3_ADDR, 3);
Sbit (INT0, P3_ADDR, 2);
Sbit (TXD , P3_ADDR, 1);
Sbit (RXD , P3_ADDR, 0);

Sfr (P4 , P4_ADDR);
Sbit (P4_1 , P4_ADDR, 1);
Sbit (P4_0 , P4_ADDR, 0);

Sfr (PSW , PSW_ADDR);

Sbit (CY  , PSW_ADDR, 7);
Sbit (AC  , PSW_ADDR, 6);
Sbit (F0  , PSW_ADDR, 5);
Sbit (RS1 , PSW_ADDR, 4);
Sbit (RS0 , PSW_ADDR, 3);
Sbit (OV  , PSW_ADDR, 2);
Sbit (UD  , PSW_ADDR, 1);
Sbit (P   , PSW_ADDR, 0);

Sfr (ACC , ACC_ADDR);
Sfr (B , B_ADDR);
Sfr (SP , SP_ADDR);
Sfr (DPL , DPL_ADDR);
Sfr (DPH , DPH_ADDR);

Sfr (PCON , PCON_ADDR);
Sfr (CKCON , CKCON_ADDR);

/*------------------ TIMERS registers ---------------------*/
Sfr (TCON , TCON_ADDR);
Sbit (TF1 , TCON_ADDR, 7);
Sbit (TR1 , TCON_ADDR, 6);
Sbit (TF0 , TCON_ADDR, 5);
Sbit (TR0 , TCON_ADDR, 4);
Sbit (IE1 , TCON_ADDR, 3);
Sbit (IT1 , TCON_ADDR, 2);
Sbit (IE0 , TCON_ADDR, 1);
Sbit (IT0 , TCON_ADDR, 0);
	
Sfr (TMOD , TMOD_ADDR);

Sfr  (T2CON , T2CON_ADDR);
Sbit (TF2   , T2CON_ADDR, 7);
Sbit (EXF2  , T2CON_ADDR, 6);
Sbit (RCLK  , T2CON_ADDR, 5);
Sbit (TCLK  , T2CON_ADDR, 4);
Sbit (EXEN2 , T2CON_ADDR, 3);
Sbit (TR2   , T2CON_ADDR, 2);
Sbit (C_T2  , T2CON_ADDR, 1);
Sbit (CP_RL2, T2CON_ADDR, 0);
	
Sfr (T2MOD , T2MOD_ADDR);
Sfr (TL0 , TL0_ADDR);
Sfr (TL1 , TL1_ADDR);
Sfr (TL2 , TL2_ADDR);
Sfr (TH0 , TH0_ADDR);
Sfr (TH1 , TH1_ADDR);
Sfr (TH2 , TH2_ADDR);
Sfr (RCAP2L , RCAP2L_ADDR);
Sfr (RCAP2H , RCAP2H_ADDR);
Sfr (WDTRST , WDTRST_ADDR);
Sfr (WDTPRG , WDTPRG_ADDR);


/*------------------- UART registers ------------------------*/
Sfr (SCON , SCON_ADDR);
Sbit (SM0  , SCON_ADDR, 7);
Sbit (FE   , SCON_ADDR, 7);
Sbit (SM1  , SCON_ADDR, 6);
Sbit (SM2  , SCON_ADDR, 5);
Sbit (REN  , SCON_ADDR, 4);
Sbit (TB8  , SCON_ADDR, 3);
Sbit (RB8  , SCON_ADDR, 2);
Sbit (TI   , SCON_ADDR, 1);
Sbit (RI   , SCON_ADDR, 0);

Sfr (SBUF , SBUF_ADDR);
Sfr (SADEN , SADEN_ADDR);
Sfr (SADDR , SADDR_ADDR);

/*-------------------- ADC registers ----------------------*/
Sfr (ADCLK , ADCLK_ADDR);
Sfr (ADCON , ADCON_ADDR);
#define MSK_ADCON_PSIDLE 0x40
#define MSK_ADCON_ADEN   0x20
#define MSK_ADCON_ADEOC  0x10
#define MSK_ADCON_ADSST  0x08
#define MSK_ADCON_SCH    0x07
Sfr (ADDL , ADDL_ADDR);
#define MSK_ADDL_UTILS	 0x03
Sfr (ADDH , ADDH_ADDR);
Sfr (ADCF , ADCF_ADDR);

/*-------------------- FLASH EEPROM registers ------------*/
Sfr (FCON  , FCON_ADDR);
#define MSK_FCON_FBUSY 0x01
#define MSK_FCON_FMOD  0x06
#define MSK_FCON_FPS   0x08
#define MSK_FCON_FPL   0xF0
Sfr (EECON  , EECON_ADDR);
#define MSK_EECON_EEBUSY 0x01
#define MSK_EECON_EEE    0x02
#define MSK_EECON_EEPL   0xF0
Sfr (AUXR  , AUXR_ADDR);
#define MSK_AUXR_M0      0x20
Sfr (AUXR1  , AUXR1_ADDR);
#define MSK_AUXR1_ENBOOT 0x20
/*-------------------- IT registers -----------------------*/
Sfr (IPL1 , IPL1_ADDR);
Sfr (IPH1 , IPH1_ADDR);
Sfr (IEN0  , IEN0_ADDR);
Sfr (IPL0 , IPL0_ADDR);
Sfr (IPH0 , IPH0_ADDR);
Sfr (IEN1  , IEN1_ADDR);

/*  IEN0  */
Sbit (EA   , IEN0_ADDR, 7);
Sbit (EC   , IEN0_ADDR, 6);
Sbit (ET2  , IEN0_ADDR, 5);
Sbit (ES   , IEN0_ADDR, 4);
Sbit (ET1  , IEN0_ADDR, 3);
Sbit (EX1  , IEN0_ADDR, 2);
Sbit (ET0  , IEN0_ADDR, 1);
Sbit (EX0  , IEN0_ADDR, 0);

/*  IEN1  */
Sbit (ETIM , IEN1_ADDR, 2);
Sbit (EADC , IEN1_ADDR, 1);
Sbit (ECAN , IEN1_ADDR, 0);

/*--------------------- PCA registers --------------------*/
Sfr (CCON , CCON_ADDR);
Sbit(CF  , CCON_ADDR, 7);
Sbit(CR  , CCON_ADDR, 6);
Sbit(CCF4, CCON_ADDR, 4);
Sbit(CCF3, CCON_ADDR, 3);
Sbit(CCF2, CCON_ADDR, 2);
Sbit(CCF1, CCON_ADDR, 1);
Sbit(CCF0, CCON_ADDR, 0);

Sfr (CMOD , CMOD_ADDR);
Sfr (CH , CH_ADDR);
Sfr (CL , CL_ADDR);
Sfr (CCAP0H  , CCAP0H_ADDR);
Sfr (CCAP0L  , CCAP0L_ADDR);
Sfr (CCAPM0  , CCAPM0_ADDR);
Sfr (CCAP1H  , CCAP1H_ADDR);
Sfr (CCAP1L  , CCAP1L_ADDR);
Sfr (CCAPM1  , CCAPM1_ADDR);
Sfr (CCAP2H  , CCAP2H_ADDR);
Sfr (CCAP2L  , CCAP2L_ADDR);
Sfr (CCAPM2  , CCAPM2_ADDR);
Sfr (CCAP3H  , CCAP3H_ADDR);
Sfr (CCAP3L  , CCAP3L_ADDR);
Sfr (CCAPM3  , CCAPM3_ADDR);
Sfr (CCAP4H  , CCAP4H_ADDR);
Sfr (CCAP4L  , CCAP4L_ADDR);
Sfr (CCAPM4  , CCAPM4_ADDR);

/*------------------- CAN registers --------------------------*/
Sfr (CANGIT , CANGIT_ADDR);
#define MSK_CANGIT_CANIT	0x80
#define MSK_CANGIT_OVRTIM       0x20
#define MSK_CANGIT_OVRBUF	0x10	
#define MSK_CANGIT_SERG		0x08
#define MSK_CANGIT_CERG		0x04
#define MSK_CANGIT_FERG		0x02
#define MSK_CANGIT_AERG		0x01

Sfr (CANTEC , CANTEC_ADDR);
Sfr (CANREC , CANREC_ADDR);
Sfr (CANTCON , CANTCON_ADDR);
Sfr (CANMSG , CANMSG_ADDR);
Sfr (CANTTCL , CANTTCL_ADDR);
Sfr (CANTTCH , CANTTCH_ADDR);
Sfr (CANGSTA , CANGSTA_ADDR);
#define MSK_CANGSTA_OVFG	0x40
#define MSK_CANGSTA_TBSY	0x10
#define MSK_CANGSTA_RBSY	0x08
#define MSK_CANGSTA_ENFG	0x04
#define MSK_CANGSTA_BOFF	0x02
#define MSK_CANGSTA_ERRP	0x01

Sfr (CANGCON , CANGCON_ADDR);
#define MSK_CANGCON_ABRQ   	0x80
#define MSK_CANGCON_OVRQ   	0x40
#define MSK_CANGCON_TTC   	0x20
#define MSK_CANGCON_SYNCTTC     0x10
#define TTC_EOF                 0x10
#define TTC_SOF		        0x00
#define MSK_CANGCON_AUTBAUD     0x08
#define MSK_CANGCON_ENA  	0x02
#define MSK_CANGCON_GRES 	0x01


Sfr (CANTIML , CANTIML_ADDR);
Sfr (CANTIMH , CANTIMH_ADDR);
Sfr (CANSTMPL , CANSTMPL_ADDR);
Sfr (CANSTMPH , CANSTMPH_ADDR);
Sfr (CANPAGE , CANPAGE_ADDR);
Sfr (CANSTCH , CANSTCH_ADDR);
#define MSK_CANSTCH_DLCW  0x80
#define MSK_CANSTCH_TxOk  0x40
#define MSK_CANSTCH_RxOk  0x20
#define MSK_CANSTCH_BERR  0x10
#define MSK_CANSTCH_SERR  0x08
#define MSK_CANSTCH_CERR  0x04
#define MSK_CANSTCH_FERR  0x02
#define MSK_CANSTCH_AERR  0x01

Sfr (CANCONCH , CANCONCH_ADDR);
#define MSK_CANCONCH_IDE  0x10
#define MSK_CANCONCH_DLC  0x0F
#define MSK_CANCONCH_CONF 0xC0
#define DLC_MAX    8
#define CH_DISABLE 0x00
#define CH_RxENA   0x80
#define CH_TxENA   0x40
#define CH_RxBENA  0xC0

Sfr (CANBT1 , CANBT1_ADDR);
#define CAN_PRESCALER_MIN  0
#define CAN_PRESCALER_MAX  63
	
Sfr (CANBT2 , CANBT2_ADDR);
#define MSK_CANBT2_SJW  0x60
#define MSK_CANBT2_PRS  0x0E
#define CAN_SJW_MIN  0
#define CAN_SJW_MAX  3
#define CAN_PRS_MIN  0
#define CAN_PRS_MAX  7
	
Sfr (CANBT3 , CANBT3_ADDR);
#define MSK_CANBT3_PHS2 0x70
#define MSK_CANBT3_PHS1 0x0E
#define CAN_PHS2_MIN 0
#define CAN_PHS2_MAX 7
#define CAN_PHS1_MIN 0
#define CAN_PHS1_MAX 7
	
Sfr (CANSIT , CANSIT_ADDR);
Sfr (CANIDT1 , CANIDT1_ADDR);
Sfr (CANIDT2 , CANIDT2_ADDR);
Sfr (CANIDT3 , CANIDT3_ADDR);
Sfr (CANIDT4 , CANIDT4_ADDR);
#define MSK_CANIDT4_RTRTAG 0x04

Sfr (CANGIE , CANGIE_ADDR);
#define MSK_CANGIE_ENRX    0x20
#define MSK_CANGIE_ENTX    0x10
#define MSK_CANGIE_ENERCH  0x08
#define MSK_CANGIE_ENBUF   0x04
#define MSK_CANGIE_ENERG   0x02

Sfr (CANIE , CANIE_ADDR);
Sfr (CANIDM1 , CANIDM1_ADDR);
Sfr (CANIDM2 , CANIDM2_ADDR);
Sfr (CANIDM3 , CANIDM3_ADDR);
Sfr (CANIDM4 , CANIDM4_ADDR);
#define MSK_CANIDM4_RTRMSK 0x04
#define MSK_CANIDM4_IDEMSK 0x01 
	
Sfr (CANEN , CANEN_ADDR);

#endif

