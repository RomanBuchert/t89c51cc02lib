;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sun Feb 20 14:49:26 2011
;--------------------------------------------------------
	.module sdcc_test2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _ECAN
	.globl _EADC
	.globl _ETIM
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EC
	.globl _EA
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P
	.globl _UD
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _P4_0
	.globl _P4_1
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _P3_0
	.globl _P3_1
	.globl _P3_2
	.globl _P3_3
	.globl _P3_4
	.globl _P3_5
	.globl _P3_6
	.globl _P3_7
	.globl _P2_0
	.globl _P2_1
	.globl _P1_0
	.globl _P1_1
	.globl _P1_2
	.globl _P1_3
	.globl _P1_4
	.globl _P1_5
	.globl _P1_6
	.globl _P1_7
	.globl _CANEN
	.globl _CANIDM4
	.globl _CANIDM3
	.globl _CANIDM2
	.globl _CANIDM1
	.globl _CANIE
	.globl _CANGIE
	.globl _CANIDT4
	.globl _CANIDT3
	.globl _CANIDT2
	.globl _CANIDT1
	.globl _CANSIT
	.globl _CANBT3
	.globl _CANBT2
	.globl _CANBT1
	.globl _CANCONCH
	.globl _CANSTCH
	.globl _CANPAGE
	.globl _CANSTMPH
	.globl _CANSTMPL
	.globl _CANTIMH
	.globl _CANTIML
	.globl _CANGCON
	.globl _CANGSTA
	.globl _CANTTCH
	.globl _CANTTCL
	.globl _CANMSG
	.globl _CANTCON
	.globl _CANREC
	.globl _CANTEC
	.globl _CANGIT
	.globl _CCAPM4
	.globl _CCAP4L
	.globl _CCAP4H
	.globl _CCAPM3
	.globl _CCAP3L
	.globl _CCAP3H
	.globl _CCAPM2
	.globl _CCAP2L
	.globl _CCAP2H
	.globl _CCAPM1
	.globl _CCAP1L
	.globl _CCAP1H
	.globl _CCAPM0
	.globl _CCAP0L
	.globl _CCAP0H
	.globl _CL
	.globl _CH
	.globl _CMOD
	.globl _CCON
	.globl _IEN1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN0
	.globl _IPH1
	.globl _IPL1
	.globl _AUXR1
	.globl _AUXR
	.globl _EECON
	.globl _FCON
	.globl _ADCF
	.globl _ADDH
	.globl _ADDL
	.globl _ADCON
	.globl _ADCLK
	.globl _SADDR
	.globl _SADEN
	.globl _SBUF
	.globl _SCON
	.globl _WDTPRG
	.globl _WDTRST
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _TH2
	.globl _TH1
	.globl _TH0
	.globl _TL2
	.globl _TL1
	.globl _TL0
	.globl _T2MOD
	.globl _T2CON
	.globl _TMOD
	.globl _TCON
	.globl _CKCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _P4
	.globl _P3
	.globl _P2
	.globl _P1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$P4$0$0 == 0x00c0
_P4	=	0x00c0
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$CKCON$0$0 == 0x008f
_CKCON	=	0x008f
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$T2MOD$0$0 == 0x00c9
_T2MOD	=	0x00c9
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$WDTRST$0$0 == 0x00a6
_WDTRST	=	0x00a6
G$WDTPRG$0$0 == 0x00a7
_WDTPRG	=	0x00a7
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$SADEN$0$0 == 0x00b9
_SADEN	=	0x00b9
G$SADDR$0$0 == 0x00a9
_SADDR	=	0x00a9
G$ADCLK$0$0 == 0x00f2
_ADCLK	=	0x00f2
G$ADCON$0$0 == 0x00f3
_ADCON	=	0x00f3
G$ADDL$0$0 == 0x00f4
_ADDL	=	0x00f4
G$ADDH$0$0 == 0x00f5
_ADDH	=	0x00f5
G$ADCF$0$0 == 0x00f6
_ADCF	=	0x00f6
G$FCON$0$0 == 0x00d1
_FCON	=	0x00d1
G$EECON$0$0 == 0x00d2
_EECON	=	0x00d2
G$AUXR$0$0 == 0x008e
_AUXR	=	0x008e
G$AUXR1$0$0 == 0x00a2
_AUXR1	=	0x00a2
G$IPL1$0$0 == 0x00f8
_IPL1	=	0x00f8
G$IPH1$0$0 == 0x00f7
_IPH1	=	0x00f7
G$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
G$IPL0$0$0 == 0x00b8
_IPL0	=	0x00b8
G$IPH0$0$0 == 0x00b7
_IPH0	=	0x00b7
G$IEN1$0$0 == 0x00e8
_IEN1	=	0x00e8
G$CCON$0$0 == 0x00d8
_CCON	=	0x00d8
G$CMOD$0$0 == 0x00d9
_CMOD	=	0x00d9
G$CH$0$0 == 0x00f9
_CH	=	0x00f9
G$CL$0$0 == 0x00e9
_CL	=	0x00e9
G$CCAP0H$0$0 == 0x00fa
_CCAP0H	=	0x00fa
G$CCAP0L$0$0 == 0x00ea
_CCAP0L	=	0x00ea
G$CCAPM0$0$0 == 0x00da
_CCAPM0	=	0x00da
G$CCAP1H$0$0 == 0x00fb
_CCAP1H	=	0x00fb
G$CCAP1L$0$0 == 0x00eb
_CCAP1L	=	0x00eb
G$CCAPM1$0$0 == 0x00db
_CCAPM1	=	0x00db
G$CCAP2H$0$0 == 0x00fc
_CCAP2H	=	0x00fc
G$CCAP2L$0$0 == 0x00ec
_CCAP2L	=	0x00ec
G$CCAPM2$0$0 == 0x00dc
_CCAPM2	=	0x00dc
G$CCAP3H$0$0 == 0x00fd
_CCAP3H	=	0x00fd
G$CCAP3L$0$0 == 0x00ed
_CCAP3L	=	0x00ed
G$CCAPM3$0$0 == 0x00dd
_CCAPM3	=	0x00dd
G$CCAP4H$0$0 == 0x00fe
_CCAP4H	=	0x00fe
G$CCAP4L$0$0 == 0x00ee
_CCAP4L	=	0x00ee
G$CCAPM4$0$0 == 0x00de
_CCAPM4	=	0x00de
G$CANGIT$0$0 == 0x009b
_CANGIT	=	0x009b
G$CANTEC$0$0 == 0x009c
_CANTEC	=	0x009c
G$CANREC$0$0 == 0x009d
_CANREC	=	0x009d
G$CANTCON$0$0 == 0x00a1
_CANTCON	=	0x00a1
G$CANMSG$0$0 == 0x00a3
_CANMSG	=	0x00a3
G$CANTTCL$0$0 == 0x00a4
_CANTTCL	=	0x00a4
G$CANTTCH$0$0 == 0x00a5
_CANTTCH	=	0x00a5
G$CANGSTA$0$0 == 0x00aa
_CANGSTA	=	0x00aa
G$CANGCON$0$0 == 0x00ab
_CANGCON	=	0x00ab
G$CANTIML$0$0 == 0x00ac
_CANTIML	=	0x00ac
G$CANTIMH$0$0 == 0x00ad
_CANTIMH	=	0x00ad
G$CANSTMPL$0$0 == 0x00ae
_CANSTMPL	=	0x00ae
G$CANSTMPH$0$0 == 0x00af
_CANSTMPH	=	0x00af
G$CANPAGE$0$0 == 0x00b1
_CANPAGE	=	0x00b1
G$CANSTCH$0$0 == 0x00b2
_CANSTCH	=	0x00b2
G$CANCONCH$0$0 == 0x00b3
_CANCONCH	=	0x00b3
G$CANBT1$0$0 == 0x00b4
_CANBT1	=	0x00b4
G$CANBT2$0$0 == 0x00b5
_CANBT2	=	0x00b5
G$CANBT3$0$0 == 0x00b6
_CANBT3	=	0x00b6
G$CANSIT$0$0 == 0x00bb
_CANSIT	=	0x00bb
G$CANIDT1$0$0 == 0x00bc
_CANIDT1	=	0x00bc
G$CANIDT2$0$0 == 0x00bd
_CANIDT2	=	0x00bd
G$CANIDT3$0$0 == 0x00be
_CANIDT3	=	0x00be
G$CANIDT4$0$0 == 0x00bf
_CANIDT4	=	0x00bf
G$CANGIE$0$0 == 0x00c1
_CANGIE	=	0x00c1
G$CANIE$0$0 == 0x00c3
_CANIE	=	0x00c3
G$CANIDM1$0$0 == 0x00c4
_CANIDM1	=	0x00c4
G$CANIDM2$0$0 == 0x00c5
_CANIDM2	=	0x00c5
G$CANIDM3$0$0 == 0x00c6
_CANIDM3	=	0x00c6
G$CANIDM4$0$0 == 0x00c7
_CANIDM4	=	0x00c7
G$CANEN$0$0 == 0x00cf
_CANEN	=	0x00cf
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$P4_1$0$0 == 0x00c1
_P4_1	=	0x00c1
G$P4_0$0$0 == 0x00c0
_P4_0	=	0x00c0
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$UD$0$0 == 0x00d1
_UD	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$C_T2$0$0 == 0x00c9
_C_T2	=	0x00c9
G$CP_RL2$0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$FE$0$0 == 0x009f
_FE	=	0x009f
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$EC$0$0 == 0x00ae
_EC	=	0x00ae
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ETIM$0$0 == 0x00ea
_ETIM	=	0x00ea
G$EADC$0$0 == 0x00e9
_EADC	=	0x00e9
G$ECAN$0$0 == 0x00e8
_ECAN	=	0x00e8
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_IsrExt0
	.ds	5
	ljmp	_IsrTmr0
	.ds	5
	ljmp	_IsrExt1
	.ds	5
	ljmp	_IsrTmr1
	.ds	5
	ljmp	_IsrUart
	.ds	5
	ljmp	_IsrTmr2
	.ds	5
	ljmp	_IsrPca
	.ds	5
	ljmp	_IsrCan
	.ds	5
	ljmp	_IsrAdc
	.ds	5
	ljmp	_IsrCanTmr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;u16AdcWert                Allocated to registers r2 r3 
;u16AdcSpg                 Allocated to registers r4 r5 
;u16Loop                   Allocated to registers r2 r3 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$sdcc_test2.c$19$0$0 ==.
;	sdcc_test2.c:19: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$sdcc_test2.c$34$1$1 ==.
;	sdcc_test2.c:34: SysInit(20000000, X2_ON);
	mov	_SysInit_PARM_2,#0x01
	mov	dptr,#0x2D00
	mov	b,#0x31
	mov	a,#0x01
	lcall	_SysInit
	C$sdcc_test2.c$37$1$1 ==.
;	sdcc_test2.c:37: IsrInit();
	lcall	_IsrInit
	C$sdcc_test2.c$40$1$1 ==.
;	sdcc_test2.c:40: UsartInit();
	lcall	_UsartInit
	C$sdcc_test2.c$41$1$1 ==.
;	sdcc_test2.c:41: UsartSetBaudrate(57600);
	mov	dptr,#0xE100
	clr	a
	mov	b,a
	lcall	_UsartSetBaudrate
	C$sdcc_test2.c$42$1$1 ==.
;	sdcc_test2.c:42: UsartRecEna();
	setb	_REN
	C$sdcc_test2.c$45$1$1 ==.
;	sdcc_test2.c:45: AdcInit(ADC_IN0);
	mov	dpl,#0x01
	lcall	_AdcInit
	C$sdcc_test2.c$48$1$1 ==.
;	sdcc_test2.c:48: PcaInit(FPCA_2);
	mov	dpl,#0x01
	lcall	_PcaInit
	C$sdcc_test2.c$49$1$1 ==.
;	sdcc_test2.c:49: PcaInitModul(Pca0, Pwm);
	mov	_PcaInitModul_PARM_2,#0x42
	mov	dpl,#0x00
	lcall	_PcaInitModul
	C$sdcc_test2.c$50$1$1 ==.
;	sdcc_test2.c:50: PcaInitModul(Pca1, Pwm);
	mov	_PcaInitModul_PARM_2,#0x42
	mov	dpl,#0x01
	lcall	_PcaInitModul
	C$sdcc_test2.c$52$1$1 ==.
;	sdcc_test2.c:52: printf_tiny("\r\nStarting Application-Loop\r\n");
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$sdcc_test2.c$53$1$1 ==.
;	sdcc_test2.c:53: while (1)
00102$:
	C$sdcc_test2.c$55$2$2 ==.
;	sdcc_test2.c:55: u16AdcWert = Adc10BitConversion(ADC_CH0);
	mov	dpl,#0x00
	lcall	_Adc10BitConversion
	mov	r2,dpl
	mov	r3,dph
	C$sdcc_test2.c$56$2$2 ==.
;	sdcc_test2.c:56: u16AdcSpg = (__u16) ((3003L * (__u32)u16AdcWert) >> 10);
	mov	__mullong_PARM_2,r2
	mov	(__mullong_PARM_2 + 1),r3
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	mov	dptr,#0x0BBB
	clr	a
	mov	b,a
	push	ar2
	push	ar3
	lcall	__mullong
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	ar4,r5
	mov	a,r6
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x3f
	C$sdcc_test2.c$58$2$2 ==.
;	sdcc_test2.c:58: PcaSetPwm(Pca0, u8LedValues[ADDH]);
	mov	a,_ADDH
	mov	dptr,#_u8LedValues
	movc	a,@a+dptr
	mov	_PcaSetPwm_PARM_2,a
	mov	dpl,#0x00
	push	ar4
	push	ar5
	lcall	_PcaSetPwm
	C$sdcc_test2.c$59$2$2 ==.
;	sdcc_test2.c:59: PcaSetPwm(Pca1, ADDH);
	mov	_PcaSetPwm_PARM_2,_ADDH
	mov	dpl,#0x01
	lcall	_PcaSetPwm
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$sdcc_test2.c$60$2$2 ==.
;	sdcc_test2.c:60: printf_tiny("AD-Wert: %d = %dmV        \r",u16AdcWert, u16AdcSpg);
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	C$sdcc_test2.c$61$1$1 ==.
;	sdcc_test2.c:61: for (u16Loop = 10000; u16Loop; u16Loop--);
	mov	r2,#0x10
	mov	r3,#0x27
00104$:
	mov	a,r2
	orl	a,r3
	jnz	00113$
	ljmp	00102$
00113$:
	dec	r2
	cjne	r2,#0xff,00104$
	dec	r3
	C$sdcc_test2.c$63$1$1 ==.
	XG$main$0$0 ==.
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fsdcc_test2$u8LedValues$0$0 == .
_u8LedValues:
	.db #0x00
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x01
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x02
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x03
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x04
	.db #0x05
	.db #0x05
	.db #0x05
	.db #0x05
	.db #0x05
	.db #0x05
	.db #0x05
	.db #0x05
	.db #0x05
	.db #0x05
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x06
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x08
	.db #0x08
	.db #0x08
	.db #0x08
	.db #0x08
	.db #0x08
	.db #0x09
	.db #0x09
	.db #0x09
	.db #0x09
	.db #0x09
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x0A
	.db #0x0B
	.db #0x0B
	.db #0x0B
	.db #0x0B
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0C
	.db #0x0D
	.db #0x0D
	.db #0x0D
	.db #0x0D
	.db #0x0E
	.db #0x0E
	.db #0x0E
	.db #0x0F
	.db #0x0F
	.db #0x0F
	.db #0x10
	.db #0x10
	.db #0x10
	.db #0x11
	.db #0x11
	.db #0x11
	.db #0x12
	.db #0x12
	.db #0x13
	.db #0x13
	.db #0x13
	.db #0x14
	.db #0x14
	.db #0x15
	.db #0x15
	.db #0x16
	.db #0x16
	.db #0x17
	.db #0x17
	.db #0x18
	.db #0x18
	.db #0x19
	.db #0x19
	.db #0x1A
	.db #0x1A
	.db #0x1B
	.db #0x1C
	.db #0x1C
	.db #0x1D
	.db #0x1D
	.db #0x1E
	.db #0x1F
	.db #0x1F
	.db #0x20
	.db #0x21
	.db #0x22
	.db #0x22
	.db #0x23
	.db #0x24
	.db #0x25
	.db #0x25
	.db #0x26
	.db #0x27
	.db #0x28
	.db #0x29
	.db #0x2A
	.db #0x2B
	.db #0x2C
	.db #0x2D
	.db #0x2E
	.db #0x2F
	.db #0x30
	.db #0x31
	.db #0x32
	.db #0x33
	.db #0x34
	.db #0x35
	.db #0x36
	.db #0x37
	.db #0x39
	.db #0x3A
	.db #0x3B
	.db #0x3C
	.db #0x3E
	.db #0x3F
	.db #0x41
	.db #0x42
	.db #0x43
	.db #0x45
	.db #0x46
	.db #0x48
	.db #0x4A
	.db #0x4B
	.db #0x4D
	.db #0x4F
	.db #0x50
	.db #0x52
	.db #0x54
	.db #0x56
	.db #0x58
	.db #0x59
	.db #0x5B
	.db #0x5D
	.db #0x60
	.db #0x62
	.db #0x64
	.db #0x66
	.db #0x68
	.db #0x6B
	.db #0x6D
	.db #0x6F
	.db #0x72
	.db #0x74
	.db #0x77
	.db #0x79
	.db #0x7C
	.db #0x7F
	.db #0x82
	.db #0x85
	.db #0x87
	.db #0x8A
	.db #0x8D
	.db #0x91
	.db #0x94
	.db #0x97
	.db #0x9A
	.db #0x9E
	.db #0xA1
	.db #0xA5
	.db #0xA8
	.db #0xAC
	.db #0xB0
	.db #0xB4
	.db #0xB8
	.db #0xBC
	.db #0xC0
	.db #0xC4
	.db #0xC9
	.db #0xCD
	.db #0xD2
	.db #0xD6
	.db #0xDB
	.db #0xE0
	.db #0xE5
	.db #0xEA
	.db #0xEF
	.db #0xF4
	.db #0xF9
	.db #0xFF
Fsdcc_test2$_str_0$0$0 == .
__str_0:
	.db 0x0D
	.db 0x0A
	.ascii "Starting Application-Loop"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fsdcc_test2$_str_1$0$0 == .
__str_1:
	.ascii "AD-Wert: %d = %dmV        "
	.db 0x0D
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
