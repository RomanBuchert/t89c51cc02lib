;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sun Feb 20 14:49:26 2011
;--------------------------------------------------------
	.module timer1
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Tmr1Init_PARM_2
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
	.globl _Tmr1UsrIsrFnc
	.globl _u32Tmr1TmpReload
	.globl _u32Tmr1Reload
	.globl _Tmr1Init
	.globl _Tmr1SetTime
	.globl _Tmr1SetValue
	.globl _Tmr1GetValue
	.globl _Tmr1IsrFnc
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
G$u32Tmr1Reload$0$0==.
_u32Tmr1Reload::
	.ds 4
G$u32Tmr1TmpReload$0$0==.
_u32Tmr1TmpReload::
	.ds 4
G$Tmr1UsrIsrFnc$0$0==.
_Tmr1UsrIsrFnc::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
LTmr1Init$Typ$1$1==.
_Tmr1Init_PARM_2::
	.ds 1
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
LTmr1SetTime$bTR1$1$1==.
_Tmr1SetTime_bTR1_1_1:
	.ds 1
LTmr1SetTime$bET1$1$1==.
_Tmr1SetTime_bET1_1_1:
	.ds 1
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
	G$Tmr1IsrFnc$0$0 ==.
	C$timer1.c$22$1$1 ==.
;	timer1.c:22: void (*Tmr1UsrIsrFnc) (void) = NULL_FNC;
	clr	a
	mov	_Tmr1UsrIsrFnc,a
	mov	(_Tmr1UsrIsrFnc + 1),a
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
;Allocation info for local variables in function 'Tmr1Init'
;------------------------------------------------------------
;Typ                       Allocated with name '_Tmr1Init_PARM_2'
;Mode                      Allocated to registers r2 
;------------------------------------------------------------
	G$Tmr1Init$0$0 ==.
	C$timer1.c$30$0$0 ==.
;	timer1.c:30: void Tmr1Init(TTmrMode Mode, TTmrTyp Typ)
;	-----------------------------------------
;	 function Tmr1Init
;	-----------------------------------------
_Tmr1Init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	C$timer1.c$33$1$1 ==.
;	timer1.c:33: TMOD &= ~0x30;
	anl	_TMOD,#0xCF
	C$timer1.c$34$1$1 ==.
;	timer1.c:34: TMOD |= ((Mode << 4) &0x30);
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
	mov	a,#0x30
	anl	a,r2
	orl	_TMOD,a
	C$timer1.c$37$1$1 ==.
;	timer1.c:37: TMOD &= ~0x40;
	anl	_TMOD,#0xBF
	C$timer1.c$38$1$1 ==.
;	timer1.c:38: TMOD |= ((Typ << 6) & 0x40);
	mov	a,_Tmr1Init_PARM_2
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r2,a
	mov	a,#0x40
	anl	a,r2
	orl	_TMOD,a
	C$timer1.c$39$1$1 ==.
	XG$Tmr1Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Tmr1SetTime'
;------------------------------------------------------------
;u16Zeit                   Allocated to registers r2 r3 
;------------------------------------------------------------
	G$Tmr1SetTime$0$0 ==.
	C$timer1.c$52$1$1 ==.
;	timer1.c:52: void Tmr1SetTime(__u16 u16Zeit) __critical
;	-----------------------------------------
;	 function Tmr1SetTime
;	-----------------------------------------
_Tmr1SetTime:
	setb	c
	jbc	ea,00108$
	clr	c
00108$:
	push	psw
	mov	r2,dpl
	mov	r3,dph
	C$timer1.c$54$1$1 ==.
;	timer1.c:54: __bit bTR1 = TR1;
	mov	c,_TR1
	mov	_Tmr1SetTime_bTR1_1_1,c
	C$timer1.c$55$1$1 ==.
;	timer1.c:55: __bit bET1 = ET1;
	mov	c,_ET1
	mov	_Tmr1SetTime_bET1_1_1,c
	C$timer1.c$58$1$1 ==.
;	timer1.c:58: TR1 = 0;
	clr	_TR1
	C$timer1.c$59$1$1 ==.
;	timer1.c:59: u32Tmr1Reload = (SysGetQuarzFreq() / 1000L) * u16Zeit;
	push	ar2
	push	ar3
	lcall	_SysGetQuarzFreq
	mov	__divulong_PARM_2,#0xE8
	mov	(__divulong_PARM_2 + 1),#0x03
	mov	(__divulong_PARM_2 + 2),#0x00
	mov	(__divulong_PARM_2 + 3),#0x00
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
	mov	__mullong_PARM_2,r2
	mov	(__mullong_PARM_2 + 1),r3
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__mullong
	mov	_u32Tmr1Reload,dpl
	mov	(_u32Tmr1Reload + 1),dph
	mov	(_u32Tmr1Reload + 2),b
	mov	(_u32Tmr1Reload + 3),a
	C$timer1.c$60$1$1 ==.
;	timer1.c:60: u32Tmr1Reload /= 6;
	mov	__divulong_PARM_2,#0x06
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,_u32Tmr1Reload
	mov	dph,(_u32Tmr1Reload + 1)
	mov	b,(_u32Tmr1Reload + 2)
	mov	a,(_u32Tmr1Reload + 3)
	lcall	__divulong
	mov	_u32Tmr1Reload,dpl
	mov	(_u32Tmr1Reload + 1),dph
	mov	(_u32Tmr1Reload + 2),b
	mov	(_u32Tmr1Reload + 3),a
	C$timer1.c$63$1$1 ==.
;	timer1.c:63: if ((isrFncTmr1 != Tmr1IsrFnc) && (Tmr1UsrIsrFnc != Tmr1IsrFnc))
	mov	a,#_Tmr1IsrFnc
	cjne	a,_isrFncTmr1,00109$
	mov	a,#(_Tmr1IsrFnc >> 8)
	cjne	a,(_isrFncTmr1 + 1),00109$
	sjmp	00102$
00109$:
	mov	a,#_Tmr1IsrFnc
	cjne	a,_Tmr1UsrIsrFnc,00110$
	mov	a,#(_Tmr1IsrFnc >> 8)
	cjne	a,(_Tmr1UsrIsrFnc + 1),00110$
	sjmp	00102$
00110$:
	C$timer1.c$65$2$2 ==.
;	timer1.c:65: Tmr1UsrIsrFnc = isrFncTmr1;
	mov	_Tmr1UsrIsrFnc,_isrFncTmr1
	mov	(_Tmr1UsrIsrFnc + 1),(_isrFncTmr1 + 1)
	C$timer1.c$66$2$2 ==.
;	timer1.c:66: isrFncTmr1 = Tmr1IsrFnc;
	mov	_isrFncTmr1,#_Tmr1IsrFnc
	mov	(_isrFncTmr1 + 1),#(_Tmr1IsrFnc >> 8)
00102$:
	C$timer1.c$69$1$1 ==.
;	timer1.c:69: TR1 = bTR1;
	mov	c,_Tmr1SetTime_bTR1_1_1
	mov	_TR1,c
	C$timer1.c$70$1$1 ==.
;	timer1.c:70: ET1 = bET1;
	mov	c,_Tmr1SetTime_bET1_1_1
	mov	_ET1,c
	pop	psw
	mov	ea,c
	C$timer1.c$71$1$1 ==.
	XG$Tmr1SetTime$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Tmr1SetValue'
;------------------------------------------------------------
;u16Value                  Allocated to registers r2 r3 
;------------------------------------------------------------
	G$Tmr1SetValue$0$0 ==.
	C$timer1.c$78$1$1 ==.
;	timer1.c:78: void Tmr1SetValue(__u16 u16Value) __critical
;	-----------------------------------------
;	 function Tmr1SetValue
;	-----------------------------------------
_Tmr1SetValue:
	setb	c
	jbc	ea,00103$
	clr	c
00103$:
	push	psw
	mov	r2,dpl
	mov	r3,dph
	C$timer1.c$80$1$1 ==.
;	timer1.c:80: TL1 = (__u8) (u16Value & 0x00FF);
	mov	ar4,r2
	mov	_TL1,r4
	C$timer1.c$81$1$1 ==.
;	timer1.c:81: TH1 = (__u8) (u16Value >> 8);
	mov	_TH1,r3
	pop	psw
	mov	ea,c
	C$timer1.c$82$1$1 ==.
	XG$Tmr1SetValue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Tmr1GetValue'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Tmr1GetValue$0$0 ==.
	C$timer1.c$89$1$1 ==.
;	timer1.c:89: __u16 Tmr1GetValue(void) __critical
;	-----------------------------------------
;	 function Tmr1GetValue
;	-----------------------------------------
_Tmr1GetValue:
	setb	c
	jbc	ea,00108$
	clr	c
00108$:
	push	psw
	C$timer1.c$91$1$1 ==.
;	timer1.c:91: return (__u16)(((__u16)TH1 << 8) || TL1);
	mov	r2,_TH1
	mov	ar3,r2
	clr	a
	mov	r2,a
	orl	a,r3
	jnz	00104$
	mov	a,_TL1
	jnz	00104$
	mov	r2,a
	sjmp	00105$
00104$:
	mov	r2,#0x01
00105$:
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	pop	psw
	mov	ea,c
	C$timer1.c$92$1$1 ==.
	XG$Tmr1GetValue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Tmr1IsrFnc'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Tmr1IsrFnc$0$0 ==.
	C$timer1.c$102$1$1 ==.
;	timer1.c:102: void Tmr1IsrFnc(void) __critical
;	-----------------------------------------
;	 function Tmr1IsrFnc
;	-----------------------------------------
_Tmr1IsrFnc:
	setb	c
	jbc	ea,00113$
	clr	c
00113$:
	push	psw
	C$timer1.c$105$1$1 ==.
;	timer1.c:105: if (u32Tmr1TmpReload == 0)
	mov	a,_u32Tmr1TmpReload
	orl	a,(_u32Tmr1TmpReload + 1)
	orl	a,(_u32Tmr1TmpReload + 2)
	orl	a,(_u32Tmr1TmpReload + 3)
	jnz	00104$
	C$timer1.c$107$2$2 ==.
;	timer1.c:107: u32Tmr1TmpReload = u32Tmr1Reload;
	mov	_u32Tmr1TmpReload,_u32Tmr1Reload
	mov	(_u32Tmr1TmpReload + 1),(_u32Tmr1Reload + 1)
	mov	(_u32Tmr1TmpReload + 2),(_u32Tmr1Reload + 2)
	mov	(_u32Tmr1TmpReload + 3),(_u32Tmr1Reload + 3)
	C$timer1.c$108$2$2 ==.
;	timer1.c:108: if (Tmr1UsrIsrFnc != NULL_FNC)
	mov	a,_Tmr1UsrIsrFnc
	orl	a,(_Tmr1UsrIsrFnc + 1)
	jz	00104$
	C$timer1.c$110$3$3 ==.
;	timer1.c:110: Tmr1UsrIsrFnc();
	mov	dpl,_Tmr1UsrIsrFnc
	mov	dph,(_Tmr1UsrIsrFnc + 1)
	lcall	__sdcc_call_dptr
00104$:
	C$timer1.c$114$1$1 ==.
;	timer1.c:114: if (u32Tmr1TmpReload < 0x0000FFFFL)
	clr	c
	mov	a,_u32Tmr1TmpReload
	subb	a,#0xFF
	mov	a,(_u32Tmr1TmpReload + 1)
	subb	a,#0xFF
	mov	a,(_u32Tmr1TmpReload + 2)
	subb	a,#0x00
	mov	a,(_u32Tmr1TmpReload + 3)
	subb	a,#0x00
	jnc	00106$
	C$timer1.c$116$2$4 ==.
;	timer1.c:116: u32Tmr1TmpReload = (-u32Tmr1TmpReload);
	clr	c
	clr	a
	subb	a,_u32Tmr1TmpReload
	mov	_u32Tmr1TmpReload,a
	clr	a
	subb	a,(_u32Tmr1TmpReload + 1)
	mov	(_u32Tmr1TmpReload + 1),a
	clr	a
	subb	a,(_u32Tmr1TmpReload + 2)
	mov	(_u32Tmr1TmpReload + 2),a
	clr	a
	subb	a,(_u32Tmr1TmpReload + 3)
	mov	(_u32Tmr1TmpReload + 3),a
	C$timer1.c$118$2$4 ==.
;	timer1.c:118: TL1 = (__u8) (u32Tmr1TmpReload & 0xFF);
	mov	r2,_u32Tmr1TmpReload
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	_TL1,r2
	C$timer1.c$119$2$4 ==.
;	timer1.c:119: TH1 = (__u8) (u32Tmr1TmpReload >> 8);
	mov	_TH1,(_u32Tmr1TmpReload + 1)
	C$timer1.c$120$2$4 ==.
;	timer1.c:120: u32Tmr1TmpReload = 0;
	clr	a
	mov	_u32Tmr1TmpReload,a
	mov	(_u32Tmr1TmpReload + 1),a
	mov	(_u32Tmr1TmpReload + 2),a
	mov	(_u32Tmr1TmpReload + 3),a
	sjmp	00108$
00106$:
	C$timer1.c$125$2$5 ==.
;	timer1.c:125: u32Tmr1TmpReload -= 0xFFFFL;
	mov	a,_u32Tmr1TmpReload
	add	a,#0x01
	mov	_u32Tmr1TmpReload,a
	clr	a
	addc	a,(_u32Tmr1TmpReload + 1)
	mov	(_u32Tmr1TmpReload + 1),a
	mov	a,(_u32Tmr1TmpReload + 2)
	addc	a,#0xff
	mov	(_u32Tmr1TmpReload + 2),a
	mov	a,(_u32Tmr1TmpReload + 3)
	addc	a,#0xff
	mov	(_u32Tmr1TmpReload + 3),a
00108$:
	pop	psw
	mov	ea,c
	C$timer1.c$127$1$1 ==.
	XG$Tmr1IsrFnc$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
