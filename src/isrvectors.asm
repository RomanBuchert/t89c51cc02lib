;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sun Feb 20 14:49:25 2011
;--------------------------------------------------------
	.module isrvectors
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
	.globl _isrFncCanTmr
	.globl _isrFncAdc
	.globl _isrFncCan
	.globl _isrFncPca
	.globl _isrFncTmr2
	.globl _isrFncUart
	.globl _isrFncTmr1
	.globl _isrFncExt1
	.globl _isrFncTmr0
	.globl _isrFncExt0
	.globl _isrFncReset
	.globl _IsrInit
	.globl _IsrExt0
	.globl _IsrTmr0
	.globl _IsrExt1
	.globl _IsrTmr1
	.globl _IsrUart
	.globl _IsrTmr2
	.globl _IsrPca
	.globl _IsrCan
	.globl _IsrAdc
	.globl _IsrCanTmr
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$isrFncReset$0$0==.
_isrFncReset::
	.ds 2
G$isrFncExt0$0$0==.
_isrFncExt0::
	.ds 2
G$isrFncTmr0$0$0==.
_isrFncTmr0::
	.ds 2
G$isrFncExt1$0$0==.
_isrFncExt1::
	.ds 2
G$isrFncTmr1$0$0==.
_isrFncTmr1::
	.ds 2
G$isrFncUart$0$0==.
_isrFncUart::
	.ds 2
G$isrFncTmr2$0$0==.
_isrFncTmr2::
	.ds 2
G$isrFncPca$0$0==.
_isrFncPca::
	.ds 2
G$isrFncCan$0$0==.
_isrFncCan::
	.ds 2
G$isrFncAdc$0$0==.
_isrFncAdc::
	.ds 2
G$isrFncCanTmr$0$0==.
_isrFncCanTmr::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$22$1$1 ==.
;	isrvectors.c:22: void (*isrFncReset) (void) = NULL_FNC;  ///< Reset
	clr	a
	mov	_isrFncReset,a
	mov	(_isrFncReset + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$23$1$1 ==.
;	isrvectors.c:23: void (*isrFncExt0) (void) = NULL_FNC;   ///< Funktionszeiger ISR Externer Interrupt 0
	clr	a
	mov	_isrFncExt0,a
	mov	(_isrFncExt0 + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$24$1$1 ==.
;	isrvectors.c:24: void (*isrFncTmr0) (void) = NULL_FNC;   ///< Funktionszeiger ISR Timer 0
	clr	a
	mov	_isrFncTmr0,a
	mov	(_isrFncTmr0 + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$25$1$1 ==.
;	isrvectors.c:25: void (*isrFncExt1) (void) = NULL_FNC;   ///< Funktionszeiger ISR Externer Interrupt 1
	clr	a
	mov	_isrFncExt1,a
	mov	(_isrFncExt1 + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$26$1$1 ==.
;	isrvectors.c:26: void (*isrFncTmr1) (void) = NULL_FNC;   ///< Funktionszeiger ISR Timer 1
	clr	a
	mov	_isrFncTmr1,a
	mov	(_isrFncTmr1 + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$27$1$1 ==.
;	isrvectors.c:27: void (*isrFncUart) (void) = NULL_FNC;   ///< Funktionszeiger ISR UART
	clr	a
	mov	_isrFncUart,a
	mov	(_isrFncUart + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$28$1$1 ==.
;	isrvectors.c:28: void (*isrFncTmr2) (void) = NULL_FNC;   ///< Funktionszeiger ISR Timer 2
	clr	a
	mov	_isrFncTmr2,a
	mov	(_isrFncTmr2 + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$29$1$1 ==.
;	isrvectors.c:29: void (*isrFncPca) (void) = NULL_FNC;	///< Funktionszeiger ISR PCA-Timer
	clr	a
	mov	_isrFncPca,a
	mov	(_isrFncPca + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$30$1$1 ==.
;	isrvectors.c:30: void (*isrFncCan) (void) = NULL_FNC;	///< Funktionszeiger ISR CAN
	clr	a
	mov	_isrFncCan,a
	mov	(_isrFncCan + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$31$1$1 ==.
;	isrvectors.c:31: void (*isrFncAdc) (void) = NULL_FNC;	///< Funktionszeiger ISR AD-Wandler
	clr	a
	mov	_isrFncAdc,a
	mov	(_isrFncAdc + 1),a
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$32$1$1 ==.
;	isrvectors.c:32: void (*isrFncCanTmr) (void) = NULL_FNC; ///< Funktionszeiger ISR CAN Timer
	clr	a
	mov	_isrFncCanTmr,a
	mov	(_isrFncCanTmr + 1),a
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
;Allocation info for local variables in function 'IsrInit'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrInit$0$0 ==.
	C$isrvectors.c$38$0$0 ==.
;	isrvectors.c:38: void IsrInit()
;	-----------------------------------------
;	 function IsrInit
;	-----------------------------------------
_IsrInit:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$isrvectors.c$40$1$1 ==.
;	isrvectors.c:40: isrFncExt0 = NULL_FNC;		//Externer Interrupt 0
	C$isrvectors.c$41$1$1 ==.
;	isrvectors.c:41: isrFncTmr0 = NULL_FNC;		//Timer 0
	C$isrvectors.c$42$1$1 ==.
;	isrvectors.c:42: isrFncExt1 = NULL_FNC;		//Externer Interrupt 1
	C$isrvectors.c$43$1$1 ==.
;	isrvectors.c:43: isrFncTmr1 = NULL_FNC;		//Timer 1
	clr	a
	mov	_isrFncExt0,a
	mov	(_isrFncExt0 + 1),a
	mov	_isrFncTmr0,a
	mov	(_isrFncTmr0 + 1),a
	mov	_isrFncExt1,a
	mov	(_isrFncExt1 + 1),a
	mov	_isrFncTmr1,a
	mov	(_isrFncTmr1 + 1),a
	C$isrvectors.c$44$1$1 ==.
;	isrvectors.c:44: isrFncUart = NULL_FNC;		//UART
	C$isrvectors.c$45$1$1 ==.
;	isrvectors.c:45: isrFncTmr2 = NULL_FNC;		//Timer 2
	C$isrvectors.c$46$1$1 ==.
;	isrvectors.c:46: isrFncPca = NULL_FNC;		//PCA-Timer
	C$isrvectors.c$47$1$1 ==.
;	isrvectors.c:47: isrFncCan = NULL_FNC;		//CAN
	clr	a
	mov	_isrFncUart,a
	mov	(_isrFncUart + 1),a
	mov	_isrFncTmr2,a
	mov	(_isrFncTmr2 + 1),a
	mov	_isrFncPca,a
	mov	(_isrFncPca + 1),a
	mov	_isrFncCan,a
	mov	(_isrFncCan + 1),a
	C$isrvectors.c$48$1$1 ==.
;	isrvectors.c:48: isrFncAdc = NULL_FNC;		//AD-Wandler
	C$isrvectors.c$49$1$1 ==.
;	isrvectors.c:49: isrFncCanTmr = NULL_FNC;	//CAN Timer
	clr	a
	mov	_isrFncAdc,a
	mov	(_isrFncAdc + 1),a
	mov	_isrFncCanTmr,a
	mov	(_isrFncCanTmr + 1),a
	C$isrvectors.c$51$1$1 ==.
	XG$IsrInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrExt0'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrExt0$0$0 ==.
	C$isrvectors.c$58$1$1 ==.
;	isrvectors.c:58: void IsrExt0(void) __interrupt (0)
;	-----------------------------------------
;	 function IsrExt0
;	-----------------------------------------
_IsrExt0:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$60$1$1 ==.
;	isrvectors.c:60: EX0 = 0;
	clr	_EX0
	C$isrvectors.c$61$1$1 ==.
;	isrvectors.c:61: if (isrFncExt0 != NULL_FNC)
	mov	a,_isrFncExt0
	orl	a,(_isrFncExt0 + 1)
	jz	00102$
	C$isrvectors.c$63$2$2 ==.
;	isrvectors.c:63: isrFncExt0();
	mov	dpl,_isrFncExt0
	mov	dph,(_isrFncExt0 + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$65$1$1 ==.
;	isrvectors.c:65: IE0 = 0;
	clr	_IE0
	C$isrvectors.c$66$1$1 ==.
;	isrvectors.c:66: EX1 = 1;
	setb	_EX1
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$67$1$1 ==.
	XG$IsrExt0$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrTmr0'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrTmr0$0$0 ==.
	C$isrvectors.c$74$1$1 ==.
;	isrvectors.c:74: void IsrTmr0(void) __interrupt (1)
;	-----------------------------------------
;	 function IsrTmr0
;	-----------------------------------------
_IsrTmr0:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$76$1$1 ==.
;	isrvectors.c:76: if (isrFncTmr0 != NULL_FNC)
	mov	a,_isrFncTmr0
	orl	a,(_isrFncTmr0 + 1)
	jz	00102$
	C$isrvectors.c$78$2$2 ==.
;	isrvectors.c:78: isrFncTmr0();
	mov	dpl,_isrFncTmr0
	mov	dph,(_isrFncTmr0 + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$80$1$1 ==.
;	isrvectors.c:80: TF0 = 0;
	clr	_TF0
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$81$1$1 ==.
	XG$IsrTmr0$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrExt1'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrExt1$0$0 ==.
	C$isrvectors.c$88$1$1 ==.
;	isrvectors.c:88: void IsrExt1(void) __interrupt (2)
;	-----------------------------------------
;	 function IsrExt1
;	-----------------------------------------
_IsrExt1:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$90$1$1 ==.
;	isrvectors.c:90: EX1 = 0;
	clr	_EX1
	C$isrvectors.c$91$1$1 ==.
;	isrvectors.c:91: if (isrFncExt1 != NULL_FNC)
	mov	a,_isrFncExt1
	orl	a,(_isrFncExt1 + 1)
	jz	00102$
	C$isrvectors.c$93$2$2 ==.
;	isrvectors.c:93: isrFncExt1();
	mov	dpl,_isrFncExt1
	mov	dph,(_isrFncExt1 + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$95$1$1 ==.
;	isrvectors.c:95: IE1 = 0;
	clr	_IE1
	C$isrvectors.c$96$1$1 ==.
;	isrvectors.c:96: EX0 = 1;
	setb	_EX0
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$97$1$1 ==.
	XG$IsrExt1$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrTmr1'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrTmr1$0$0 ==.
	C$isrvectors.c$104$1$1 ==.
;	isrvectors.c:104: void IsrTmr1(void) __interrupt (3)
;	-----------------------------------------
;	 function IsrTmr1
;	-----------------------------------------
_IsrTmr1:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$106$1$1 ==.
;	isrvectors.c:106: if (isrFncTmr1 != NULL_FNC)
	mov	a,_isrFncTmr1
	orl	a,(_isrFncTmr1 + 1)
	jz	00102$
	C$isrvectors.c$108$2$2 ==.
;	isrvectors.c:108: isrFncTmr1();
	mov	dpl,_isrFncTmr1
	mov	dph,(_isrFncTmr1 + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$110$1$1 ==.
;	isrvectors.c:110: TF1 = 0;
	clr	_TF1
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$111$1$1 ==.
	XG$IsrTmr1$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrUart'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrUart$0$0 ==.
	C$isrvectors.c$118$1$1 ==.
;	isrvectors.c:118: void IsrUart(void) __interrupt (4)
;	-----------------------------------------
;	 function IsrUart
;	-----------------------------------------
_IsrUart:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$120$1$1 ==.
;	isrvectors.c:120: if (isrFncUart != NULL_FNC)
	mov	a,_isrFncUart
	orl	a,(_isrFncUart + 1)
	jz	00102$
	C$isrvectors.c$122$2$2 ==.
;	isrvectors.c:122: isrFncUart();
	mov	dpl,_isrFncUart
	mov	dph,(_isrFncUart + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$125$1$1 ==.
;	isrvectors.c:125: RI = 0;
	clr	_RI
	C$isrvectors.c$126$1$1 ==.
;	isrvectors.c:126: TI = 0;
	clr	_TI
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$127$1$1 ==.
	XG$IsrUart$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrTmr2'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrTmr2$0$0 ==.
	C$isrvectors.c$134$1$1 ==.
;	isrvectors.c:134: void IsrTmr2(void) __interrupt (5)
;	-----------------------------------------
;	 function IsrTmr2
;	-----------------------------------------
_IsrTmr2:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$136$1$1 ==.
;	isrvectors.c:136: if (isrFncTmr2 != NULL_FNC)
	mov	a,_isrFncTmr2
	orl	a,(_isrFncTmr2 + 1)
	jz	00102$
	C$isrvectors.c$138$2$2 ==.
;	isrvectors.c:138: isrFncTmr2();
	mov	dpl,_isrFncTmr2
	mov	dph,(_isrFncTmr2 + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$140$1$1 ==.
;	isrvectors.c:140: TF2 = 0;
	clr	_TF2
	C$isrvectors.c$141$1$1 ==.
;	isrvectors.c:141: EXF2 = 0;
	clr	_EXF2
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$142$1$1 ==.
	XG$IsrTmr2$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrPca'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrPca$0$0 ==.
	C$isrvectors.c$149$1$1 ==.
;	isrvectors.c:149: void IsrPca(void) __interrupt (6)
;	-----------------------------------------
;	 function IsrPca
;	-----------------------------------------
_IsrPca:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$151$1$1 ==.
;	isrvectors.c:151: if (isrFncPca != NULL_FNC)
	mov	a,_isrFncPca
	orl	a,(_isrFncPca + 1)
	jz	00102$
	C$isrvectors.c$153$2$2 ==.
;	isrvectors.c:153: isrFncPca();
	mov	dpl,_isrFncPca
	mov	dph,(_isrFncPca + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$156$1$1 ==.
;	isrvectors.c:156: CF = 0;
	clr	_CF
	C$isrvectors.c$157$1$1 ==.
;	isrvectors.c:157: CCF0 = 0;
	clr	_CCF0
	C$isrvectors.c$158$1$1 ==.
;	isrvectors.c:158: CCF1 = 0;
	clr	_CCF1
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$159$1$1 ==.
	XG$IsrPca$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrCan'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrCan$0$0 ==.
	C$isrvectors.c$166$1$1 ==.
;	isrvectors.c:166: void IsrCan(void) __interrupt (7)
;	-----------------------------------------
;	 function IsrCan
;	-----------------------------------------
_IsrCan:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$168$1$1 ==.
;	isrvectors.c:168: if (isrFncCan != NULL_FNC)
	mov	a,_isrFncCan
	orl	a,(_isrFncCan + 1)
	jz	00102$
	C$isrvectors.c$170$2$2 ==.
;	isrvectors.c:170: isrFncCan();
	mov	dpl,_isrFncCan
	mov	dph,(_isrFncCan + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$172$1$1 ==.
;	isrvectors.c:172: CANSTCH &= ~0x80;
	anl	_CANSTCH,#0x7F
	C$isrvectors.c$173$1$1 ==.
;	isrvectors.c:173: CANGIT &= ~0x1F;
	anl	_CANGIT,#0xE0
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$174$1$1 ==.
	XG$IsrCan$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrAdc'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrAdc$0$0 ==.
	C$isrvectors.c$181$1$1 ==.
;	isrvectors.c:181: void IsrAdc(void) __interrupt (8)
;	-----------------------------------------
;	 function IsrAdc
;	-----------------------------------------
_IsrAdc:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$183$1$1 ==.
;	isrvectors.c:183: if (isrFncAdc != NULL_FNC)
	mov	a,_isrFncAdc
	orl	a,(_isrFncAdc + 1)
	jz	00102$
	C$isrvectors.c$185$2$2 ==.
;	isrvectors.c:185: isrFncAdc();
	mov	dpl,_isrFncAdc
	mov	dph,(_isrFncAdc + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$187$1$1 ==.
;	isrvectors.c:187: ADCON &= ~0x10;
	anl	_ADCON,#0xEF
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$188$1$1 ==.
	XG$IsrAdc$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'IsrCanTmr'
;------------------------------------------------------------
;------------------------------------------------------------
	G$IsrCanTmr$0$0 ==.
	C$isrvectors.c$195$1$1 ==.
;	isrvectors.c:195: void IsrCanTmr(void) __interrupt (9)
;	-----------------------------------------
;	 function IsrCanTmr
;	-----------------------------------------
_IsrCanTmr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$isrvectors.c$197$1$1 ==.
;	isrvectors.c:197: if (isrFncCanTmr != 0)
	mov	a,_isrFncCanTmr
	orl	a,(_isrFncCanTmr + 1)
	jz	00102$
	C$isrvectors.c$199$2$2 ==.
;	isrvectors.c:199: isrFncCanTmr();
	mov	dpl,_isrFncCanTmr
	mov	dph,(_isrFncCanTmr + 1)
	lcall	__sdcc_call_dptr
00102$:
	C$isrvectors.c$201$1$1 ==.
;	isrvectors.c:201: CANGIT &= ~20;
	anl	_CANGIT,#0xEB
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$isrvectors.c$202$1$1 ==.
	XG$IsrCanTmr$0$0 ==.
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
