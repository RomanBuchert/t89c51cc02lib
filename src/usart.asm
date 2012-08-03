;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sun Feb 20 14:49:26 2011
;--------------------------------------------------------
	.module usart
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _ngets_PARM_2
	.globl _MyGetchar
	.globl _MyPutchar
	.globl _UsartInit
	.globl _UsartAutoBaud
	.globl _UsartSetBaudrate
	.globl _UsartPutcharBlocking
	.globl _UsartGetcharBlocking
	.globl _putchar
	.globl _getchar
	.globl _SetPutcharFnc
	.globl _SetGetcharFnc
	.globl _ngets
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
G$MyPutchar$0$0==.
_MyPutchar::
	.ds 2
G$MyGetchar$0$0==.
_MyGetchar::
	.ds 2
LUsartSetBaudrate$u32Baudrate$1$1==.
_UsartSetBaudrate_u32Baudrate_1_1:
	.ds 4
LUsartSetBaudrate$u8CKCON$1$1==.
_UsartSetBaudrate_u8CKCON_1_1:
	.ds 1
LUsartSetBaudrate$u8PCON$1$1==.
_UsartSetBaudrate_u8PCON_1_1:
	.ds 1
Lngets$s$1$1==.
_ngets_PARM_2:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'UsartInit'
;------------------------------------------------------------
;------------------------------------------------------------
	G$UsartInit$0$0 ==.
	C$usart.c$22$0$0 ==.
;	usart.c:22: void UsartInit(void)
;	-----------------------------------------
;	 function UsartInit
;	-----------------------------------------
_UsartInit:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$usart.c$25$1$1 ==.
;	usart.c:25: SCON = 0x40;
	mov	_SCON,#0x40
	C$usart.c$27$1$1 ==.
;	usart.c:27: P3 |= 0x03;
	orl	_P3,#0x03
	C$usart.c$29$1$1 ==.
;	usart.c:29: SetPutcharFnc(UsartPutcharBlocking);
	mov	dptr,#_UsartPutcharBlocking
	lcall	_SetPutcharFnc
	C$usart.c$30$1$1 ==.
;	usart.c:30: SetGetcharFnc(UsartGetcharBlocking);
	mov	dptr,#_UsartGetcharBlocking
	lcall	_SetGetcharFnc
	C$usart.c$31$1$1 ==.
;	usart.c:31: TI = 0;
	clr	_TI
	C$usart.c$32$1$1 ==.
;	usart.c:32: RI = 0;
	clr	_RI
	C$usart.c$33$1$1 ==.
	XG$UsartInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsartAutoBaud'
;------------------------------------------------------------
;u16Timerwert              Allocated to registers 
;u16Reloadwert             Allocated to registers r2 r3 
;------------------------------------------------------------
	G$UsartAutoBaud$0$0 ==.
	C$usart.c$42$1$1 ==.
;	usart.c:42: void UsartAutoBaud(void)
;	-----------------------------------------
;	 function UsartAutoBaud
;	-----------------------------------------
_UsartAutoBaud:
	C$usart.c$48$1$1 ==.
;	usart.c:48: T2CON = 0x00;
	mov	_T2CON,#0x00
	C$usart.c$49$1$1 ==.
;	usart.c:49: T2MOD = 0x00;
	mov	_T2MOD,#0x00
	C$usart.c$50$1$1 ==.
;	usart.c:50: TH2 = 0x00;
	mov	_TH2,#0x00
	C$usart.c$51$1$1 ==.
;	usart.c:51: TL2 = 0x00;
	mov	_TL2,#0x00
	C$usart.c$52$1$1 ==.
;	usart.c:52: RCAP2H = 0xFF;
	mov	_RCAP2H,#0xFF
	C$usart.c$53$1$1 ==.
;	usart.c:53: RCAP2L = 0xFF;
	mov	_RCAP2L,#0xFF
	C$usart.c$55$1$1 ==.
;	usart.c:55: while (P3_0);
00101$:
	jb	_P3_0,00101$
	C$usart.c$56$1$1 ==.
;	usart.c:56: while (!(P3_0));
00104$:
	jnb	_P3_0,00104$
	C$usart.c$57$1$1 ==.
;	usart.c:57: TR2 = 1;  //Timer starten
	setb	_TR2
	C$usart.c$59$1$1 ==.
;	usart.c:59: while (P3_0);  //Bit 0
00107$:
	jb	_P3_0,00107$
	C$usart.c$60$1$1 ==.
;	usart.c:60: while (!P3_0); //Bit 1
00110$:
	jnb	_P3_0,00110$
	C$usart.c$61$1$1 ==.
;	usart.c:61: while (P3_0);  //Bit 2
00113$:
	jb	_P3_0,00113$
	C$usart.c$62$1$1 ==.
;	usart.c:62: while (!P3_0); //Bit 3
00116$:
	jnb	_P3_0,00116$
	C$usart.c$63$1$1 ==.
;	usart.c:63: while (P3_0);  //Bit 4
00119$:
	jb	_P3_0,00119$
	C$usart.c$64$1$1 ==.
;	usart.c:64: while (!P3_0); //Bit 5
00122$:
	jnb	_P3_0,00122$
	C$usart.c$65$1$1 ==.
;	usart.c:65: while (P3_0);  //Bit 6
00125$:
	jb	_P3_0,00125$
	C$usart.c$66$1$1 ==.
;	usart.c:66: while (!P3_0); //Bit 7
00128$:
	jnb	_P3_0,00128$
	C$usart.c$67$1$1 ==.
;	usart.c:67: TR2 = 0;  //Timer stoppen
	clr	_TR2
	C$usart.c$68$1$1 ==.
;	usart.c:68: u16Timerwert = (TH2<<8 | TL2) -1;  //Benoetigte Zeit berechnen
	mov	r3,_TH2
	mov	r2,#0x00
	mov	r4,_TL2
	mov	r5,#0x00
	mov	a,r4
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	a,r2
	add	a,#0xff
	mov	__mulint_PARM_2,a
	mov	a,r3
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	C$usart.c$71$1$1 ==.
;	usart.c:71: u16Reloadwert = 65536 - ((3*u16Timerwert) >> 6);
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r2,dpl
	mov	a,dph
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x03
	mov	r3,a
	clr	a
	mov	r4,a
	mov	r5,a
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	a,#0x01
	subb	a,r4
	clr	a
	subb	a,r5
	C$usart.c$73$1$1 ==.
;	usart.c:73: RCAP2L = (__s8)(u16Reloadwert & 0x00FF);
	mov	ar4,r2
	mov	_RCAP2L,r4
	C$usart.c$74$1$1 ==.
;	usart.c:74: RCAP2H = (__s8)(u16Reloadwert >> 8);
	mov	_RCAP2H,r3
	C$usart.c$76$1$1 ==.
;	usart.c:76: TL2 = 0;
	mov	_TL2,#0x00
	C$usart.c$77$1$1 ==.
;	usart.c:77: TH2 = 0;
	mov	_TH2,#0x00
	C$usart.c$79$1$1 ==.
;	usart.c:79: SCON = 0x40;
	mov	_SCON,#0x40
	C$usart.c$81$1$1 ==.
;	usart.c:81: T2CON = 0x34;
	mov	_T2CON,#0x34
	C$usart.c$82$1$1 ==.
	XG$UsartAutoBaud$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsartSetBaudrate'
;------------------------------------------------------------
;u32Baudrate               Allocated with name '_UsartSetBaudrate_u32Baudrate_1_1'
;u32Reload                 Allocated to registers r4 r5 r6 r7 
;u8CKCON                   Allocated with name '_UsartSetBaudrate_u8CKCON_1_1'
;u8PCON                    Allocated with name '_UsartSetBaudrate_u8PCON_1_1'
;------------------------------------------------------------
	G$UsartSetBaudrate$0$0 ==.
	C$usart.c$91$1$1 ==.
;	usart.c:91: __s16 UsartSetBaudrate(__u32 u32Baudrate)
;	-----------------------------------------
;	 function UsartSetBaudrate
;	-----------------------------------------
_UsartSetBaudrate:
	mov	_UsartSetBaudrate_u32Baudrate_1_1,dpl
	mov	(_UsartSetBaudrate_u32Baudrate_1_1 + 1),dph
	mov	(_UsartSetBaudrate_u32Baudrate_1_1 + 2),b
	mov	(_UsartSetBaudrate_u32Baudrate_1_1 + 3),a
	C$usart.c$100$1$1 ==.
;	usart.c:100: if (u32Baudrate < BAUD_MIN)
	lcall	_SysGetQuarzFreq
	mov	r0,b
	mov	ar6,r0
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	r0,#0x00
	mov	r1,#0x00
	clr	c
	mov	a,_UsartSetBaudrate_u32Baudrate_1_1
	subb	a,r6
	mov	a,(_UsartSetBaudrate_u32Baudrate_1_1 + 1)
	subb	a,r7
	mov	a,(_UsartSetBaudrate_u32Baudrate_1_1 + 2)
	subb	a,r0
	mov	a,(_UsartSetBaudrate_u32Baudrate_1_1 + 3)
	subb	a,r1
	jnc	00102$
	C$usart.c$102$2$2 ==.
;	usart.c:102: return -1;
	mov	dptr,#0xFFFF
	ret
00102$:
	C$usart.c$105$1$1 ==.
;	usart.c:105: if (u32Baudrate > BAUD_MAX)
	lcall	_SysGetQuarzFreq
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_SysGetX2Mode
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	b,r2
	inc	b
	mov	a,#0x06
	sjmp	00120$
00119$:
	clr	c
	rrc	a
00120$:
	djnz	b,00119$
	mov	r2,a
	mov	b,r2
	inc	b
	sjmp	00122$
00121$:
	clr	c
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	mov	r0,a
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
00122$:
	djnz	b,00121$
	clr	c
	mov	a,r6
	subb	a,_UsartSetBaudrate_u32Baudrate_1_1
	mov	a,r7
	subb	a,(_UsartSetBaudrate_u32Baudrate_1_1 + 1)
	mov	a,r0
	subb	a,(_UsartSetBaudrate_u32Baudrate_1_1 + 2)
	mov	a,r1
	subb	a,(_UsartSetBaudrate_u32Baudrate_1_1 + 3)
	jnc	00104$
	C$usart.c$107$2$3 ==.
;	usart.c:107: return -2;
	mov	dptr,#0xFFFE
	ret
00104$:
	C$usart.c$110$1$1 ==.
;	usart.c:110: u8CKCON = CKCON;
	mov	_UsartSetBaudrate_u8CKCON_1_1,_CKCON
	C$usart.c$111$1$1 ==.
;	usart.c:111: u8PCON = PCON;
	mov	_UsartSetBaudrate_u8PCON_1_1,_PCON
	C$usart.c$114$1$1 ==.
;	usart.c:114: if (SysGetX2Mode())
	lcall	_SysGetX2Mode
	mov	a,dpl
	jz	00106$
	C$usart.c$116$2$4 ==.
;	usart.c:116: u8CKCON &= ~0x08;
	anl	_UsartSetBaudrate_u8CKCON_1_1,#0xF7
00106$:
	C$usart.c$120$1$1 ==.
;	usart.c:120: u8PCON &= ~0x80;
	anl	_UsartSetBaudrate_u8PCON_1_1,#0x7F
	C$usart.c$122$1$1 ==.
;	usart.c:122: u32Reload = SysGetQuarzFreq() / u32Baudrate;
	lcall	_SysGetQuarzFreq
	mov	__divulong_PARM_2,_UsartSetBaudrate_u32Baudrate_1_1
	mov	(__divulong_PARM_2 + 1),(_UsartSetBaudrate_u32Baudrate_1_1 + 1)
	mov	(__divulong_PARM_2 + 2),(_UsartSetBaudrate_u32Baudrate_1_1 + 2)
	mov	(__divulong_PARM_2 + 3),(_UsartSetBaudrate_u32Baudrate_1_1 + 3)
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$usart.c$123$1$1 ==.
;	usart.c:123: u32Reload >>= 4;
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	C$usart.c$126$1$1 ==.
;	usart.c:126: if (u32Reload > 0x0000FFFF)
	clr	c
	mov	a,#0xFF
	subb	a,r4
	mov	a,#0xFF
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00108$
	C$usart.c$128$2$5 ==.
;	usart.c:128: u8PCON |= 0x80;
	orl	_UsartSetBaudrate_u8PCON_1_1,#0x80
	C$usart.c$129$2$5 ==.
;	usart.c:129: u32Reload >>= 2;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00108$:
	C$usart.c$133$1$1 ==.
;	usart.c:133: if (u32Reload > 0x0000FFFF)
	clr	c
	mov	a,#0xFF
	subb	a,r4
	mov	a,#0xFF
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00110$
	C$usart.c$135$2$6 ==.
;	usart.c:135: u8CKCON |= 0x08;
	orl	_UsartSetBaudrate_u8CKCON_1_1,#0x08
	C$usart.c$136$2$6 ==.
;	usart.c:136: u32Reload >>= 2;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00110$:
	C$usart.c$139$1$1 ==.
;	usart.c:139: u32Reload = 65536L - u32Reload;
	clr	a
	clr	c
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	C$usart.c$140$1$1 ==.
;	usart.c:140: RCAP2L = (__s8) (u32Reload & 0xFF);
	mov	ar0,r4
	mov	_RCAP2L,r0
	C$usart.c$141$1$1 ==.
;	usart.c:141: RCAP2H = (__s8) ((u32Reload >> 8) & 0xFF);
	mov	_RCAP2H,r5
	C$usart.c$142$1$1 ==.
;	usart.c:142: CKCON = u8CKCON;
	mov	_CKCON,_UsartSetBaudrate_u8CKCON_1_1
	C$usart.c$143$1$1 ==.
;	usart.c:143: PCON = u8PCON;
	mov	_PCON,_UsartSetBaudrate_u8PCON_1_1
	C$usart.c$144$1$1 ==.
;	usart.c:144: T2CON |= 0x34; //Timer 2 als Baudrategenerator aktivieren.
	orl	_T2CON,#0x34
	C$usart.c$146$1$1 ==.
;	usart.c:146: return 0;
	mov	dptr,#0x0000
	C$usart.c$147$1$1 ==.
	XG$UsartSetBaudrate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsartPutcharBlocking'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
	G$UsartPutcharBlocking$0$0 ==.
	C$usart.c$153$1$1 ==.
;	usart.c:153: void UsartPutcharBlocking(__s8 c)
;	-----------------------------------------
;	 function UsartPutcharBlocking
;	-----------------------------------------
_UsartPutcharBlocking:
	mov	r2,dpl
	C$usart.c$155$1$1 ==.
;	usart.c:155: TI = 0;
	clr	_TI
	C$usart.c$156$1$1 ==.
;	usart.c:156: SBUF = c;
	mov	_SBUF,r2
	C$usart.c$157$1$1 ==.
;	usart.c:157: while (!TI);
00101$:
	jnb	_TI,00101$
	C$usart.c$158$1$1 ==.
	XG$UsartPutcharBlocking$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UsartGetcharBlocking'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$UsartGetcharBlocking$0$0 ==.
	C$usart.c$164$1$1 ==.
;	usart.c:164: __s8 UsartGetcharBlocking(void)
;	-----------------------------------------
;	 function UsartGetcharBlocking
;	-----------------------------------------
_UsartGetcharBlocking:
	C$usart.c$167$1$1 ==.
;	usart.c:167: while(!RI);
00101$:
	jnb	_RI,00101$
	C$usart.c$168$1$1 ==.
;	usart.c:168: c = SBUF;
	mov	dpl,_SBUF
	C$usart.c$169$1$1 ==.
;	usart.c:169: RI = 0;
	clr	_RI
	C$usart.c$170$1$1 ==.
;	usart.c:170: return c;
	C$usart.c$171$1$1 ==.
	XG$UsartGetcharBlocking$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$usart.c$177$1$1 ==.
;	usart.c:177: void putchar (__s8 c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	C$usart.c$179$1$1 ==.
;	usart.c:179: MyPutchar(c);
	mov	a,#00103$
	push	acc
	mov	a,#(00103$ >> 8)
	push	acc
	push	_MyPutchar
	push	(_MyPutchar + 1)
	ret
00103$:
	C$usart.c$180$1$1 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;------------------------------------------------------------
	G$getchar$0$0 ==.
	C$usart.c$186$1$1 ==.
;	usart.c:186: __s8 getchar(void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	C$usart.c$188$1$1 ==.
;	usart.c:188: return MyGetchar();
	mov	dpl,_MyGetchar
	mov	dph,(_MyGetchar + 1)
	C$usart.c$189$1$1 ==.
	XG$getchar$0$0 ==.
	ljmp	__sdcc_call_dptr
;------------------------------------------------------------
;Allocation info for local variables in function 'SetPutcharFnc'
;------------------------------------------------------------
;Fnc                       Allocated to registers 
;------------------------------------------------------------
	G$SetPutcharFnc$0$0 ==.
	C$usart.c$195$1$1 ==.
;	usart.c:195: void SetPutcharFnc(void (*Fnc)(__s8))
;	-----------------------------------------
;	 function SetPutcharFnc
;	-----------------------------------------
_SetPutcharFnc:
	mov	_MyPutchar,dpl
	mov	(_MyPutchar + 1),dph
	C$usart.c$197$1$1 ==.
;	usart.c:197: MyPutchar = Fnc;
	C$usart.c$198$1$1 ==.
	XG$SetPutcharFnc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetGetcharFnc'
;------------------------------------------------------------
;Fnc                       Allocated to registers 
;------------------------------------------------------------
	G$SetGetcharFnc$0$0 ==.
	C$usart.c$204$1$1 ==.
;	usart.c:204: void SetGetcharFnc(__s8 (*Fnc)(void))
;	-----------------------------------------
;	 function SetGetcharFnc
;	-----------------------------------------
_SetGetcharFnc:
	mov	_MyGetchar,dpl
	mov	(_MyGetchar + 1),dph
	C$usart.c$206$1$1 ==.
;	usart.c:206: MyGetchar = Fnc;
	C$usart.c$207$1$1 ==.
	XG$SetGetcharFnc$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ngets'
;------------------------------------------------------------
;s                         Allocated with name '_ngets_PARM_2'
;u8Size                    Allocated to registers r2 
;c                         Allocated to registers r4 
;u8Cntr                    Allocated to registers r3 
;------------------------------------------------------------
	G$ngets$0$0 ==.
	C$usart.c$213$1$1 ==.
;	usart.c:213: __s8 *ngets(__u8 u8Size, __s8 *s)
;	-----------------------------------------
;	 function ngets
;	-----------------------------------------
_ngets:
	mov	r2,dpl
	C$usart.c$216$1$1 ==.
;	usart.c:216: __u8 u8Cntr = 0;
	mov	r3,#0x00
	C$usart.c$217$1$1 ==.
;	usart.c:217: while (u8Cntr < u8Size)
00108$:
	clr	c
	mov	a,r3
	subb	a,r2
	jc	00119$
	ljmp	00110$
00119$:
	C$usart.c$219$2$2 ==.
;	usart.c:219: c = getchar();
	push	ar2
	push	ar3
	lcall	_getchar
	mov	r4,dpl
	pop	ar3
	pop	ar2
	C$usart.c$220$2$2 ==.
;	usart.c:220: switch (c)
	cjne	r4,#0x08,00120$
	sjmp	00101$
00120$:
	cjne	r4,#0x0A,00121$
	sjmp	00105$
00121$:
	C$usart.c$223$3$3 ==.
;	usart.c:223: case '\b':
	cjne	r4,#0x0D,00106$
	sjmp	00105$
00101$:
	C$usart.c$225$4$4 ==.
;	usart.c:225: if (u8Cntr)
	mov	a,r3
	jz	00108$
	C$usart.c$228$5$5 ==.
;	usart.c:228: *(--s) = 0x00;
	dec	_ngets_PARM_2
	mov	a,#0xff
	cjne	a,_ngets_PARM_2,00124$
	dec	(_ngets_PARM_2 + 1)
00124$:
	mov	r5,_ngets_PARM_2
	mov	r6,(_ngets_PARM_2 + 1)
	mov	r7,(_ngets_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	C$usart.c$229$5$5 ==.
;	usart.c:229: u8Cntr--;
	dec	r3
	C$usart.c$231$5$5 ==.
;	usart.c:231: putchar('\b');
	mov	dpl,#0x08
	push	ar2
	push	ar3
	lcall	_putchar
	C$usart.c$232$5$5 ==.
;	usart.c:232: putchar(' ');
	mov	dpl,#0x20
	lcall	_putchar
	C$usart.c$233$5$5 ==.
;	usart.c:233: putchar('\b');
	mov	dpl,#0x08
	lcall	_putchar
	pop	ar3
	pop	ar2
	C$usart.c$235$4$4 ==.
;	usart.c:235: break;
	C$usart.c$240$3$3 ==.
;	usart.c:240: case '\n':
	sjmp	00108$
00105$:
	C$usart.c$243$4$6 ==.
;	usart.c:243: *s = 0x00;
	mov	r5,_ngets_PARM_2
	mov	r6,(_ngets_PARM_2 + 1)
	mov	r7,(_ngets_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	C$usart.c$245$4$6 ==.
;	usart.c:245: putchar('\r');
	mov	dpl,#0x0D
	push	ar5
	push	ar6
	push	ar7
	lcall	_putchar
	C$usart.c$246$4$6 ==.
;	usart.c:246: putchar('\n');
	mov	dpl,#0x0A
	lcall	_putchar
	pop	ar7
	pop	ar6
	pop	ar5
	C$usart.c$248$4$6 ==.
;	usart.c:248: return s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	C$usart.c$252$3$3 ==.
;	usart.c:252: default:
	ret
00106$:
	C$usart.c$255$4$7 ==.
;	usart.c:255: *(s++) = c;
	mov	r5,_ngets_PARM_2
	mov	r6,(_ngets_PARM_2 + 1)
	mov	r7,(_ngets_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	mov	a,#0x01
	add	a,r5
	mov	_ngets_PARM_2,a
	clr	a
	addc	a,r6
	mov	(_ngets_PARM_2 + 1),a
	mov	(_ngets_PARM_2 + 2),r7
	C$usart.c$257$4$7 ==.
;	usart.c:257: u8Cntr++;
	inc	r3
	C$usart.c$259$4$7 ==.
;	usart.c:259: putchar(c);
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar2
	C$usart.c$262$1$1 ==.
;	usart.c:262: }
	ljmp	00108$
00110$:
	C$usart.c$266$1$1 ==.
;	usart.c:266: *(--s) = 0x00;
	dec	_ngets_PARM_2
	mov	a,#0xff
	cjne	a,_ngets_PARM_2,00125$
	dec	(_ngets_PARM_2 + 1)
00125$:
	mov	r2,_ngets_PARM_2
	mov	r3,(_ngets_PARM_2 + 1)
	mov	r4,(_ngets_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	C$usart.c$267$1$1 ==.
;	usart.c:267: return s;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	C$usart.c$268$1$1 ==.
	XG$ngets$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
