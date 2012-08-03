                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
                              4 ; This file was generated Sun Feb 20 14:49:26 2011
                              5 ;--------------------------------------------------------
                              6 	.module sdcc_test2
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _CCF0
                             14 	.globl _CCF1
                             15 	.globl _CCF2
                             16 	.globl _CCF3
                             17 	.globl _CCF4
                             18 	.globl _CR
                             19 	.globl _CF
                             20 	.globl _ECAN
                             21 	.globl _EADC
                             22 	.globl _ETIM
                             23 	.globl _EX0
                             24 	.globl _ET0
                             25 	.globl _EX1
                             26 	.globl _ET1
                             27 	.globl _ES
                             28 	.globl _ET2
                             29 	.globl _EC
                             30 	.globl _EA
                             31 	.globl _RI
                             32 	.globl _TI
                             33 	.globl _RB8
                             34 	.globl _TB8
                             35 	.globl _REN
                             36 	.globl _SM2
                             37 	.globl _SM1
                             38 	.globl _FE
                             39 	.globl _SM0
                             40 	.globl _CP_RL2
                             41 	.globl _C_T2
                             42 	.globl _TR2
                             43 	.globl _EXEN2
                             44 	.globl _TCLK
                             45 	.globl _RCLK
                             46 	.globl _EXF2
                             47 	.globl _TF2
                             48 	.globl _IT0
                             49 	.globl _IE0
                             50 	.globl _IT1
                             51 	.globl _IE1
                             52 	.globl _TR0
                             53 	.globl _TF0
                             54 	.globl _TR1
                             55 	.globl _TF1
                             56 	.globl _P
                             57 	.globl _UD
                             58 	.globl _OV
                             59 	.globl _RS0
                             60 	.globl _RS1
                             61 	.globl _F0
                             62 	.globl _AC
                             63 	.globl _CY
                             64 	.globl _P4_0
                             65 	.globl _P4_1
                             66 	.globl _RXD
                             67 	.globl _TXD
                             68 	.globl _INT0
                             69 	.globl _INT1
                             70 	.globl _T0
                             71 	.globl _T1
                             72 	.globl _WR
                             73 	.globl _RD
                             74 	.globl _P3_0
                             75 	.globl _P3_1
                             76 	.globl _P3_2
                             77 	.globl _P3_3
                             78 	.globl _P3_4
                             79 	.globl _P3_5
                             80 	.globl _P3_6
                             81 	.globl _P3_7
                             82 	.globl _P2_0
                             83 	.globl _P2_1
                             84 	.globl _P1_0
                             85 	.globl _P1_1
                             86 	.globl _P1_2
                             87 	.globl _P1_3
                             88 	.globl _P1_4
                             89 	.globl _P1_5
                             90 	.globl _P1_6
                             91 	.globl _P1_7
                             92 	.globl _CANEN
                             93 	.globl _CANIDM4
                             94 	.globl _CANIDM3
                             95 	.globl _CANIDM2
                             96 	.globl _CANIDM1
                             97 	.globl _CANIE
                             98 	.globl _CANGIE
                             99 	.globl _CANIDT4
                            100 	.globl _CANIDT3
                            101 	.globl _CANIDT2
                            102 	.globl _CANIDT1
                            103 	.globl _CANSIT
                            104 	.globl _CANBT3
                            105 	.globl _CANBT2
                            106 	.globl _CANBT1
                            107 	.globl _CANCONCH
                            108 	.globl _CANSTCH
                            109 	.globl _CANPAGE
                            110 	.globl _CANSTMPH
                            111 	.globl _CANSTMPL
                            112 	.globl _CANTIMH
                            113 	.globl _CANTIML
                            114 	.globl _CANGCON
                            115 	.globl _CANGSTA
                            116 	.globl _CANTTCH
                            117 	.globl _CANTTCL
                            118 	.globl _CANMSG
                            119 	.globl _CANTCON
                            120 	.globl _CANREC
                            121 	.globl _CANTEC
                            122 	.globl _CANGIT
                            123 	.globl _CCAPM4
                            124 	.globl _CCAP4L
                            125 	.globl _CCAP4H
                            126 	.globl _CCAPM3
                            127 	.globl _CCAP3L
                            128 	.globl _CCAP3H
                            129 	.globl _CCAPM2
                            130 	.globl _CCAP2L
                            131 	.globl _CCAP2H
                            132 	.globl _CCAPM1
                            133 	.globl _CCAP1L
                            134 	.globl _CCAP1H
                            135 	.globl _CCAPM0
                            136 	.globl _CCAP0L
                            137 	.globl _CCAP0H
                            138 	.globl _CL
                            139 	.globl _CH
                            140 	.globl _CMOD
                            141 	.globl _CCON
                            142 	.globl _IEN1
                            143 	.globl _IPH0
                            144 	.globl _IPL0
                            145 	.globl _IEN0
                            146 	.globl _IPH1
                            147 	.globl _IPL1
                            148 	.globl _AUXR1
                            149 	.globl _AUXR
                            150 	.globl _EECON
                            151 	.globl _FCON
                            152 	.globl _ADCF
                            153 	.globl _ADDH
                            154 	.globl _ADDL
                            155 	.globl _ADCON
                            156 	.globl _ADCLK
                            157 	.globl _SADDR
                            158 	.globl _SADEN
                            159 	.globl _SBUF
                            160 	.globl _SCON
                            161 	.globl _WDTPRG
                            162 	.globl _WDTRST
                            163 	.globl _RCAP2H
                            164 	.globl _RCAP2L
                            165 	.globl _TH2
                            166 	.globl _TH1
                            167 	.globl _TH0
                            168 	.globl _TL2
                            169 	.globl _TL1
                            170 	.globl _TL0
                            171 	.globl _T2MOD
                            172 	.globl _T2CON
                            173 	.globl _TMOD
                            174 	.globl _TCON
                            175 	.globl _CKCON
                            176 	.globl _PCON
                            177 	.globl _DPH
                            178 	.globl _DPL
                            179 	.globl _SP
                            180 	.globl _B
                            181 	.globl _ACC
                            182 	.globl _PSW
                            183 	.globl _P4
                            184 	.globl _P3
                            185 	.globl _P2
                            186 	.globl _P1
                            187 ;--------------------------------------------------------
                            188 ; special function registers
                            189 ;--------------------------------------------------------
                            190 	.area RSEG    (DATA)
                    0090    191 G$P1$0$0 == 0x0090
                    0090    192 _P1	=	0x0090
                    00A0    193 G$P2$0$0 == 0x00a0
                    00A0    194 _P2	=	0x00a0
                    00B0    195 G$P3$0$0 == 0x00b0
                    00B0    196 _P3	=	0x00b0
                    00C0    197 G$P4$0$0 == 0x00c0
                    00C0    198 _P4	=	0x00c0
                    00D0    199 G$PSW$0$0 == 0x00d0
                    00D0    200 _PSW	=	0x00d0
                    00E0    201 G$ACC$0$0 == 0x00e0
                    00E0    202 _ACC	=	0x00e0
                    00F0    203 G$B$0$0 == 0x00f0
                    00F0    204 _B	=	0x00f0
                    0081    205 G$SP$0$0 == 0x0081
                    0081    206 _SP	=	0x0081
                    0082    207 G$DPL$0$0 == 0x0082
                    0082    208 _DPL	=	0x0082
                    0083    209 G$DPH$0$0 == 0x0083
                    0083    210 _DPH	=	0x0083
                    0087    211 G$PCON$0$0 == 0x0087
                    0087    212 _PCON	=	0x0087
                    008F    213 G$CKCON$0$0 == 0x008f
                    008F    214 _CKCON	=	0x008f
                    0088    215 G$TCON$0$0 == 0x0088
                    0088    216 _TCON	=	0x0088
                    0089    217 G$TMOD$0$0 == 0x0089
                    0089    218 _TMOD	=	0x0089
                    00C8    219 G$T2CON$0$0 == 0x00c8
                    00C8    220 _T2CON	=	0x00c8
                    00C9    221 G$T2MOD$0$0 == 0x00c9
                    00C9    222 _T2MOD	=	0x00c9
                    008A    223 G$TL0$0$0 == 0x008a
                    008A    224 _TL0	=	0x008a
                    008B    225 G$TL1$0$0 == 0x008b
                    008B    226 _TL1	=	0x008b
                    00CC    227 G$TL2$0$0 == 0x00cc
                    00CC    228 _TL2	=	0x00cc
                    008C    229 G$TH0$0$0 == 0x008c
                    008C    230 _TH0	=	0x008c
                    008D    231 G$TH1$0$0 == 0x008d
                    008D    232 _TH1	=	0x008d
                    00CD    233 G$TH2$0$0 == 0x00cd
                    00CD    234 _TH2	=	0x00cd
                    00CA    235 G$RCAP2L$0$0 == 0x00ca
                    00CA    236 _RCAP2L	=	0x00ca
                    00CB    237 G$RCAP2H$0$0 == 0x00cb
                    00CB    238 _RCAP2H	=	0x00cb
                    00A6    239 G$WDTRST$0$0 == 0x00a6
                    00A6    240 _WDTRST	=	0x00a6
                    00A7    241 G$WDTPRG$0$0 == 0x00a7
                    00A7    242 _WDTPRG	=	0x00a7
                    0098    243 G$SCON$0$0 == 0x0098
                    0098    244 _SCON	=	0x0098
                    0099    245 G$SBUF$0$0 == 0x0099
                    0099    246 _SBUF	=	0x0099
                    00B9    247 G$SADEN$0$0 == 0x00b9
                    00B9    248 _SADEN	=	0x00b9
                    00A9    249 G$SADDR$0$0 == 0x00a9
                    00A9    250 _SADDR	=	0x00a9
                    00F2    251 G$ADCLK$0$0 == 0x00f2
                    00F2    252 _ADCLK	=	0x00f2
                    00F3    253 G$ADCON$0$0 == 0x00f3
                    00F3    254 _ADCON	=	0x00f3
                    00F4    255 G$ADDL$0$0 == 0x00f4
                    00F4    256 _ADDL	=	0x00f4
                    00F5    257 G$ADDH$0$0 == 0x00f5
                    00F5    258 _ADDH	=	0x00f5
                    00F6    259 G$ADCF$0$0 == 0x00f6
                    00F6    260 _ADCF	=	0x00f6
                    00D1    261 G$FCON$0$0 == 0x00d1
                    00D1    262 _FCON	=	0x00d1
                    00D2    263 G$EECON$0$0 == 0x00d2
                    00D2    264 _EECON	=	0x00d2
                    008E    265 G$AUXR$0$0 == 0x008e
                    008E    266 _AUXR	=	0x008e
                    00A2    267 G$AUXR1$0$0 == 0x00a2
                    00A2    268 _AUXR1	=	0x00a2
                    00F8    269 G$IPL1$0$0 == 0x00f8
                    00F8    270 _IPL1	=	0x00f8
                    00F7    271 G$IPH1$0$0 == 0x00f7
                    00F7    272 _IPH1	=	0x00f7
                    00A8    273 G$IEN0$0$0 == 0x00a8
                    00A8    274 _IEN0	=	0x00a8
                    00B8    275 G$IPL0$0$0 == 0x00b8
                    00B8    276 _IPL0	=	0x00b8
                    00B7    277 G$IPH0$0$0 == 0x00b7
                    00B7    278 _IPH0	=	0x00b7
                    00E8    279 G$IEN1$0$0 == 0x00e8
                    00E8    280 _IEN1	=	0x00e8
                    00D8    281 G$CCON$0$0 == 0x00d8
                    00D8    282 _CCON	=	0x00d8
                    00D9    283 G$CMOD$0$0 == 0x00d9
                    00D9    284 _CMOD	=	0x00d9
                    00F9    285 G$CH$0$0 == 0x00f9
                    00F9    286 _CH	=	0x00f9
                    00E9    287 G$CL$0$0 == 0x00e9
                    00E9    288 _CL	=	0x00e9
                    00FA    289 G$CCAP0H$0$0 == 0x00fa
                    00FA    290 _CCAP0H	=	0x00fa
                    00EA    291 G$CCAP0L$0$0 == 0x00ea
                    00EA    292 _CCAP0L	=	0x00ea
                    00DA    293 G$CCAPM0$0$0 == 0x00da
                    00DA    294 _CCAPM0	=	0x00da
                    00FB    295 G$CCAP1H$0$0 == 0x00fb
                    00FB    296 _CCAP1H	=	0x00fb
                    00EB    297 G$CCAP1L$0$0 == 0x00eb
                    00EB    298 _CCAP1L	=	0x00eb
                    00DB    299 G$CCAPM1$0$0 == 0x00db
                    00DB    300 _CCAPM1	=	0x00db
                    00FC    301 G$CCAP2H$0$0 == 0x00fc
                    00FC    302 _CCAP2H	=	0x00fc
                    00EC    303 G$CCAP2L$0$0 == 0x00ec
                    00EC    304 _CCAP2L	=	0x00ec
                    00DC    305 G$CCAPM2$0$0 == 0x00dc
                    00DC    306 _CCAPM2	=	0x00dc
                    00FD    307 G$CCAP3H$0$0 == 0x00fd
                    00FD    308 _CCAP3H	=	0x00fd
                    00ED    309 G$CCAP3L$0$0 == 0x00ed
                    00ED    310 _CCAP3L	=	0x00ed
                    00DD    311 G$CCAPM3$0$0 == 0x00dd
                    00DD    312 _CCAPM3	=	0x00dd
                    00FE    313 G$CCAP4H$0$0 == 0x00fe
                    00FE    314 _CCAP4H	=	0x00fe
                    00EE    315 G$CCAP4L$0$0 == 0x00ee
                    00EE    316 _CCAP4L	=	0x00ee
                    00DE    317 G$CCAPM4$0$0 == 0x00de
                    00DE    318 _CCAPM4	=	0x00de
                    009B    319 G$CANGIT$0$0 == 0x009b
                    009B    320 _CANGIT	=	0x009b
                    009C    321 G$CANTEC$0$0 == 0x009c
                    009C    322 _CANTEC	=	0x009c
                    009D    323 G$CANREC$0$0 == 0x009d
                    009D    324 _CANREC	=	0x009d
                    00A1    325 G$CANTCON$0$0 == 0x00a1
                    00A1    326 _CANTCON	=	0x00a1
                    00A3    327 G$CANMSG$0$0 == 0x00a3
                    00A3    328 _CANMSG	=	0x00a3
                    00A4    329 G$CANTTCL$0$0 == 0x00a4
                    00A4    330 _CANTTCL	=	0x00a4
                    00A5    331 G$CANTTCH$0$0 == 0x00a5
                    00A5    332 _CANTTCH	=	0x00a5
                    00AA    333 G$CANGSTA$0$0 == 0x00aa
                    00AA    334 _CANGSTA	=	0x00aa
                    00AB    335 G$CANGCON$0$0 == 0x00ab
                    00AB    336 _CANGCON	=	0x00ab
                    00AC    337 G$CANTIML$0$0 == 0x00ac
                    00AC    338 _CANTIML	=	0x00ac
                    00AD    339 G$CANTIMH$0$0 == 0x00ad
                    00AD    340 _CANTIMH	=	0x00ad
                    00AE    341 G$CANSTMPL$0$0 == 0x00ae
                    00AE    342 _CANSTMPL	=	0x00ae
                    00AF    343 G$CANSTMPH$0$0 == 0x00af
                    00AF    344 _CANSTMPH	=	0x00af
                    00B1    345 G$CANPAGE$0$0 == 0x00b1
                    00B1    346 _CANPAGE	=	0x00b1
                    00B2    347 G$CANSTCH$0$0 == 0x00b2
                    00B2    348 _CANSTCH	=	0x00b2
                    00B3    349 G$CANCONCH$0$0 == 0x00b3
                    00B3    350 _CANCONCH	=	0x00b3
                    00B4    351 G$CANBT1$0$0 == 0x00b4
                    00B4    352 _CANBT1	=	0x00b4
                    00B5    353 G$CANBT2$0$0 == 0x00b5
                    00B5    354 _CANBT2	=	0x00b5
                    00B6    355 G$CANBT3$0$0 == 0x00b6
                    00B6    356 _CANBT3	=	0x00b6
                    00BB    357 G$CANSIT$0$0 == 0x00bb
                    00BB    358 _CANSIT	=	0x00bb
                    00BC    359 G$CANIDT1$0$0 == 0x00bc
                    00BC    360 _CANIDT1	=	0x00bc
                    00BD    361 G$CANIDT2$0$0 == 0x00bd
                    00BD    362 _CANIDT2	=	0x00bd
                    00BE    363 G$CANIDT3$0$0 == 0x00be
                    00BE    364 _CANIDT3	=	0x00be
                    00BF    365 G$CANIDT4$0$0 == 0x00bf
                    00BF    366 _CANIDT4	=	0x00bf
                    00C1    367 G$CANGIE$0$0 == 0x00c1
                    00C1    368 _CANGIE	=	0x00c1
                    00C3    369 G$CANIE$0$0 == 0x00c3
                    00C3    370 _CANIE	=	0x00c3
                    00C4    371 G$CANIDM1$0$0 == 0x00c4
                    00C4    372 _CANIDM1	=	0x00c4
                    00C5    373 G$CANIDM2$0$0 == 0x00c5
                    00C5    374 _CANIDM2	=	0x00c5
                    00C6    375 G$CANIDM3$0$0 == 0x00c6
                    00C6    376 _CANIDM3	=	0x00c6
                    00C7    377 G$CANIDM4$0$0 == 0x00c7
                    00C7    378 _CANIDM4	=	0x00c7
                    00CF    379 G$CANEN$0$0 == 0x00cf
                    00CF    380 _CANEN	=	0x00cf
                            381 ;--------------------------------------------------------
                            382 ; special function bits
                            383 ;--------------------------------------------------------
                            384 	.area RSEG    (DATA)
                    0097    385 G$P1_7$0$0 == 0x0097
                    0097    386 _P1_7	=	0x0097
                    0096    387 G$P1_6$0$0 == 0x0096
                    0096    388 _P1_6	=	0x0096
                    0095    389 G$P1_5$0$0 == 0x0095
                    0095    390 _P1_5	=	0x0095
                    0094    391 G$P1_4$0$0 == 0x0094
                    0094    392 _P1_4	=	0x0094
                    0093    393 G$P1_3$0$0 == 0x0093
                    0093    394 _P1_3	=	0x0093
                    0092    395 G$P1_2$0$0 == 0x0092
                    0092    396 _P1_2	=	0x0092
                    0091    397 G$P1_1$0$0 == 0x0091
                    0091    398 _P1_1	=	0x0091
                    0090    399 G$P1_0$0$0 == 0x0090
                    0090    400 _P1_0	=	0x0090
                    00A1    401 G$P2_1$0$0 == 0x00a1
                    00A1    402 _P2_1	=	0x00a1
                    00A0    403 G$P2_0$0$0 == 0x00a0
                    00A0    404 _P2_0	=	0x00a0
                    00B7    405 G$P3_7$0$0 == 0x00b7
                    00B7    406 _P3_7	=	0x00b7
                    00B6    407 G$P3_6$0$0 == 0x00b6
                    00B6    408 _P3_6	=	0x00b6
                    00B5    409 G$P3_5$0$0 == 0x00b5
                    00B5    410 _P3_5	=	0x00b5
                    00B4    411 G$P3_4$0$0 == 0x00b4
                    00B4    412 _P3_4	=	0x00b4
                    00B3    413 G$P3_3$0$0 == 0x00b3
                    00B3    414 _P3_3	=	0x00b3
                    00B2    415 G$P3_2$0$0 == 0x00b2
                    00B2    416 _P3_2	=	0x00b2
                    00B1    417 G$P3_1$0$0 == 0x00b1
                    00B1    418 _P3_1	=	0x00b1
                    00B0    419 G$P3_0$0$0 == 0x00b0
                    00B0    420 _P3_0	=	0x00b0
                    00B7    421 G$RD$0$0 == 0x00b7
                    00B7    422 _RD	=	0x00b7
                    00B6    423 G$WR$0$0 == 0x00b6
                    00B6    424 _WR	=	0x00b6
                    00B5    425 G$T1$0$0 == 0x00b5
                    00B5    426 _T1	=	0x00b5
                    00B4    427 G$T0$0$0 == 0x00b4
                    00B4    428 _T0	=	0x00b4
                    00B3    429 G$INT1$0$0 == 0x00b3
                    00B3    430 _INT1	=	0x00b3
                    00B2    431 G$INT0$0$0 == 0x00b2
                    00B2    432 _INT0	=	0x00b2
                    00B1    433 G$TXD$0$0 == 0x00b1
                    00B1    434 _TXD	=	0x00b1
                    00B0    435 G$RXD$0$0 == 0x00b0
                    00B0    436 _RXD	=	0x00b0
                    00C1    437 G$P4_1$0$0 == 0x00c1
                    00C1    438 _P4_1	=	0x00c1
                    00C0    439 G$P4_0$0$0 == 0x00c0
                    00C0    440 _P4_0	=	0x00c0
                    00D7    441 G$CY$0$0 == 0x00d7
                    00D7    442 _CY	=	0x00d7
                    00D6    443 G$AC$0$0 == 0x00d6
                    00D6    444 _AC	=	0x00d6
                    00D5    445 G$F0$0$0 == 0x00d5
                    00D5    446 _F0	=	0x00d5
                    00D4    447 G$RS1$0$0 == 0x00d4
                    00D4    448 _RS1	=	0x00d4
                    00D3    449 G$RS0$0$0 == 0x00d3
                    00D3    450 _RS0	=	0x00d3
                    00D2    451 G$OV$0$0 == 0x00d2
                    00D2    452 _OV	=	0x00d2
                    00D1    453 G$UD$0$0 == 0x00d1
                    00D1    454 _UD	=	0x00d1
                    00D0    455 G$P$0$0 == 0x00d0
                    00D0    456 _P	=	0x00d0
                    008F    457 G$TF1$0$0 == 0x008f
                    008F    458 _TF1	=	0x008f
                    008E    459 G$TR1$0$0 == 0x008e
                    008E    460 _TR1	=	0x008e
                    008D    461 G$TF0$0$0 == 0x008d
                    008D    462 _TF0	=	0x008d
                    008C    463 G$TR0$0$0 == 0x008c
                    008C    464 _TR0	=	0x008c
                    008B    465 G$IE1$0$0 == 0x008b
                    008B    466 _IE1	=	0x008b
                    008A    467 G$IT1$0$0 == 0x008a
                    008A    468 _IT1	=	0x008a
                    0089    469 G$IE0$0$0 == 0x0089
                    0089    470 _IE0	=	0x0089
                    0088    471 G$IT0$0$0 == 0x0088
                    0088    472 _IT0	=	0x0088
                    00CF    473 G$TF2$0$0 == 0x00cf
                    00CF    474 _TF2	=	0x00cf
                    00CE    475 G$EXF2$0$0 == 0x00ce
                    00CE    476 _EXF2	=	0x00ce
                    00CD    477 G$RCLK$0$0 == 0x00cd
                    00CD    478 _RCLK	=	0x00cd
                    00CC    479 G$TCLK$0$0 == 0x00cc
                    00CC    480 _TCLK	=	0x00cc
                    00CB    481 G$EXEN2$0$0 == 0x00cb
                    00CB    482 _EXEN2	=	0x00cb
                    00CA    483 G$TR2$0$0 == 0x00ca
                    00CA    484 _TR2	=	0x00ca
                    00C9    485 G$C_T2$0$0 == 0x00c9
                    00C9    486 _C_T2	=	0x00c9
                    00C8    487 G$CP_RL2$0$0 == 0x00c8
                    00C8    488 _CP_RL2	=	0x00c8
                    009F    489 G$SM0$0$0 == 0x009f
                    009F    490 _SM0	=	0x009f
                    009F    491 G$FE$0$0 == 0x009f
                    009F    492 _FE	=	0x009f
                    009E    493 G$SM1$0$0 == 0x009e
                    009E    494 _SM1	=	0x009e
                    009D    495 G$SM2$0$0 == 0x009d
                    009D    496 _SM2	=	0x009d
                    009C    497 G$REN$0$0 == 0x009c
                    009C    498 _REN	=	0x009c
                    009B    499 G$TB8$0$0 == 0x009b
                    009B    500 _TB8	=	0x009b
                    009A    501 G$RB8$0$0 == 0x009a
                    009A    502 _RB8	=	0x009a
                    0099    503 G$TI$0$0 == 0x0099
                    0099    504 _TI	=	0x0099
                    0098    505 G$RI$0$0 == 0x0098
                    0098    506 _RI	=	0x0098
                    00AF    507 G$EA$0$0 == 0x00af
                    00AF    508 _EA	=	0x00af
                    00AE    509 G$EC$0$0 == 0x00ae
                    00AE    510 _EC	=	0x00ae
                    00AD    511 G$ET2$0$0 == 0x00ad
                    00AD    512 _ET2	=	0x00ad
                    00AC    513 G$ES$0$0 == 0x00ac
                    00AC    514 _ES	=	0x00ac
                    00AB    515 G$ET1$0$0 == 0x00ab
                    00AB    516 _ET1	=	0x00ab
                    00AA    517 G$EX1$0$0 == 0x00aa
                    00AA    518 _EX1	=	0x00aa
                    00A9    519 G$ET0$0$0 == 0x00a9
                    00A9    520 _ET0	=	0x00a9
                    00A8    521 G$EX0$0$0 == 0x00a8
                    00A8    522 _EX0	=	0x00a8
                    00EA    523 G$ETIM$0$0 == 0x00ea
                    00EA    524 _ETIM	=	0x00ea
                    00E9    525 G$EADC$0$0 == 0x00e9
                    00E9    526 _EADC	=	0x00e9
                    00E8    527 G$ECAN$0$0 == 0x00e8
                    00E8    528 _ECAN	=	0x00e8
                    00DF    529 G$CF$0$0 == 0x00df
                    00DF    530 _CF	=	0x00df
                    00DE    531 G$CR$0$0 == 0x00de
                    00DE    532 _CR	=	0x00de
                    00DC    533 G$CCF4$0$0 == 0x00dc
                    00DC    534 _CCF4	=	0x00dc
                    00DB    535 G$CCF3$0$0 == 0x00db
                    00DB    536 _CCF3	=	0x00db
                    00DA    537 G$CCF2$0$0 == 0x00da
                    00DA    538 _CCF2	=	0x00da
                    00D9    539 G$CCF1$0$0 == 0x00d9
                    00D9    540 _CCF1	=	0x00d9
                    00D8    541 G$CCF0$0$0 == 0x00d8
                    00D8    542 _CCF0	=	0x00d8
                            543 ;--------------------------------------------------------
                            544 ; overlayable register banks
                            545 ;--------------------------------------------------------
                            546 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     547 	.ds 8
                            548 ;--------------------------------------------------------
                            549 ; internal ram data
                            550 ;--------------------------------------------------------
                            551 	.area DSEG    (DATA)
                            552 ;--------------------------------------------------------
                            553 ; overlayable items in internal ram 
                            554 ;--------------------------------------------------------
                            555 	.area OSEG    (OVR,DATA)
                            556 ;--------------------------------------------------------
                            557 ; Stack segment in internal ram 
                            558 ;--------------------------------------------------------
                            559 	.area	SSEG	(DATA)
   003B                     560 __start__stack:
   003B                     561 	.ds	1
                            562 
                            563 ;--------------------------------------------------------
                            564 ; indirectly addressable internal ram data
                            565 ;--------------------------------------------------------
                            566 	.area ISEG    (DATA)
                            567 ;--------------------------------------------------------
                            568 ; absolute internal ram data
                            569 ;--------------------------------------------------------
                            570 	.area IABS    (ABS,DATA)
                            571 	.area IABS    (ABS,DATA)
                            572 ;--------------------------------------------------------
                            573 ; bit data
                            574 ;--------------------------------------------------------
                            575 	.area BSEG    (BIT)
                            576 ;--------------------------------------------------------
                            577 ; paged external ram data
                            578 ;--------------------------------------------------------
                            579 	.area PSEG    (PAG,XDATA)
                            580 ;--------------------------------------------------------
                            581 ; external ram data
                            582 ;--------------------------------------------------------
                            583 	.area XSEG    (XDATA)
                            584 ;--------------------------------------------------------
                            585 ; absolute external ram data
                            586 ;--------------------------------------------------------
                            587 	.area XABS    (ABS,XDATA)
                            588 ;--------------------------------------------------------
                            589 ; external initialized ram data
                            590 ;--------------------------------------------------------
                            591 	.area XISEG   (XDATA)
                            592 	.area HOME    (CODE)
                            593 	.area GSINIT0 (CODE)
                            594 	.area GSINIT1 (CODE)
                            595 	.area GSINIT2 (CODE)
                            596 	.area GSINIT3 (CODE)
                            597 	.area GSINIT4 (CODE)
                            598 	.area GSINIT5 (CODE)
                            599 	.area GSINIT  (CODE)
                            600 	.area GSFINAL (CODE)
                            601 	.area CSEG    (CODE)
                            602 ;--------------------------------------------------------
                            603 ; interrupt vector 
                            604 ;--------------------------------------------------------
                            605 	.area HOME    (CODE)
   0000                     606 __interrupt_vect:
   0000 02 00 55            607 	ljmp	__sdcc_gsinit_startup
   0003 02 07 10            608 	ljmp	_IsrExt0
   0006                     609 	.ds	5
   000B 02 07 61            610 	ljmp	_IsrTmr0
   000E                     611 	.ds	5
   0013 02 07 AE            612 	ljmp	_IsrExt1
   0016                     613 	.ds	5
   001B 02 07 FF            614 	ljmp	_IsrTmr1
   001E                     615 	.ds	5
   0023 02 08 4C            616 	ljmp	_IsrUart
   0026                     617 	.ds	5
   002B 02 08 9B            618 	ljmp	_IsrTmr2
   002E                     619 	.ds	5
   0033 02 08 EA            620 	ljmp	_IsrPca
   0036                     621 	.ds	5
   003B 02 09 3B            622 	ljmp	_IsrCan
   003E                     623 	.ds	5
   0043 02 09 8C            624 	ljmp	_IsrAdc
   0046                     625 	.ds	5
   004B 02 09 DA            626 	ljmp	_IsrCanTmr
                            627 ;--------------------------------------------------------
                            628 ; global & static initialisations
                            629 ;--------------------------------------------------------
                            630 	.area HOME    (CODE)
                            631 	.area GSINIT  (CODE)
                            632 	.area GSFINAL (CODE)
                            633 	.area GSINIT  (CODE)
                            634 	.globl __sdcc_gsinit_startup
                            635 	.globl __sdcc_program_startup
                            636 	.globl __start__stack
                            637 	.globl __mcs51_genXINIT
                            638 	.globl __mcs51_genXRAMCLEAR
                            639 	.globl __mcs51_genRAMCLEAR
                            640 	.area GSFINAL (CODE)
   00EE 02 00 4E            641 	ljmp	__sdcc_program_startup
                            642 ;--------------------------------------------------------
                            643 ; Home
                            644 ;--------------------------------------------------------
                            645 	.area HOME    (CODE)
                            646 	.area HOME    (CODE)
   004E                     647 __sdcc_program_startup:
   004E 12 00 F1            648 	lcall	_main
                            649 ;	return from main will lock up
   0051 80 FE               650 	sjmp .
                            651 ;--------------------------------------------------------
                            652 ; code
                            653 ;--------------------------------------------------------
                            654 	.area CSEG    (CODE)
                            655 ;------------------------------------------------------------
                            656 ;Allocation info for local variables in function 'main'
                            657 ;------------------------------------------------------------
                            658 ;u16AdcWert                Allocated to registers r2 r3 
                            659 ;u16AdcSpg                 Allocated to registers r4 r5 
                            660 ;u16Loop                   Allocated to registers r2 r3 
                            661 ;------------------------------------------------------------
                    0000    662 	G$main$0$0 ==.
                    0000    663 	C$sdcc_test2.c$19$0$0 ==.
                            664 ;	sdcc_test2.c:19: void main(void)
                            665 ;	-----------------------------------------
                            666 ;	 function main
                            667 ;	-----------------------------------------
   00F1                     668 _main:
                    0002    669 	ar2 = 0x02
                    0003    670 	ar3 = 0x03
                    0004    671 	ar4 = 0x04
                    0005    672 	ar5 = 0x05
                    0006    673 	ar6 = 0x06
                    0007    674 	ar7 = 0x07
                    0000    675 	ar0 = 0x00
                    0001    676 	ar1 = 0x01
                    0000    677 	C$sdcc_test2.c$34$1$1 ==.
                            678 ;	sdcc_test2.c:34: SysInit(20000000, X2_ON);
   00F1 75 37 01            679 	mov	_SysInit_PARM_2,#0x01
   00F4 90 2D 00            680 	mov	dptr,#0x2D00
   00F7 75 F0 31            681 	mov	b,#0x31
   00FA 74 01               682 	mov	a,#0x01
   00FC 12 05 BC            683 	lcall	_SysInit
                    000E    684 	C$sdcc_test2.c$37$1$1 ==.
                            685 ;	sdcc_test2.c:37: IsrInit();
   00FF 12 06 E4            686 	lcall	_IsrInit
                    0011    687 	C$sdcc_test2.c$40$1$1 ==.
                            688 ;	sdcc_test2.c:40: UsartInit();
   0102 12 01 CB            689 	lcall	_UsartInit
                    0014    690 	C$sdcc_test2.c$41$1$1 ==.
                            691 ;	sdcc_test2.c:41: UsartSetBaudrate(57600);
   0105 90 E1 00            692 	mov	dptr,#0xE100
   0108 E4                  693 	clr	a
   0109 F5 F0               694 	mov	b,a
   010B 12 02 69            695 	lcall	_UsartSetBaudrate
                    001D    696 	C$sdcc_test2.c$42$1$1 ==.
                            697 ;	sdcc_test2.c:42: UsartRecEna();
   010E D2 9C               698 	setb	_REN
                    001F    699 	C$sdcc_test2.c$45$1$1 ==.
                            700 ;	sdcc_test2.c:45: AdcInit(ADC_IN0);
   0110 75 82 01            701 	mov	dpl,#0x01
   0113 12 05 F9            702 	lcall	_AdcInit
                    0025    703 	C$sdcc_test2.c$48$1$1 ==.
                            704 ;	sdcc_test2.c:48: PcaInit(FPCA_2);
   0116 75 82 01            705 	mov	dpl,#0x01
   0119 12 05 31            706 	lcall	_PcaInit
                    002B    707 	C$sdcc_test2.c$49$1$1 ==.
                            708 ;	sdcc_test2.c:49: PcaInitModul(Pca0, Pwm);
   011C 75 37 42            709 	mov	_PcaInitModul_PARM_2,#0x42
   011F 75 82 00            710 	mov	dpl,#0x00
   0122 12 05 46            711 	lcall	_PcaInitModul
                    0034    712 	C$sdcc_test2.c$50$1$1 ==.
                            713 ;	sdcc_test2.c:50: PcaInitModul(Pca1, Pwm);
   0125 75 37 42            714 	mov	_PcaInitModul_PARM_2,#0x42
   0128 75 82 01            715 	mov	dpl,#0x01
   012B 12 05 46            716 	lcall	_PcaInitModul
                    003D    717 	C$sdcc_test2.c$52$1$1 ==.
                            718 ;	sdcc_test2.c:52: printf_tiny("\r\nStarting Application-Loop\r\n");
   012E 74 F5               719 	mov	a,#__str_0
   0130 C0 E0               720 	push	acc
   0132 74 0C               721 	mov	a,#(__str_0 >> 8)
   0134 C0 E0               722 	push	acc
   0136 12 0A 41            723 	lcall	_printf_tiny
   0139 15 81               724 	dec	sp
   013B 15 81               725 	dec	sp
                    004C    726 	C$sdcc_test2.c$53$1$1 ==.
                            727 ;	sdcc_test2.c:53: while (1)
   013D                     728 00102$:
                    004C    729 	C$sdcc_test2.c$55$2$2 ==.
                            730 ;	sdcc_test2.c:55: u16AdcWert = Adc10BitConversion(ADC_CH0);
   013D 75 82 00            731 	mov	dpl,#0x00
   0140 12 06 49            732 	lcall	_Adc10BitConversion
   0143 AA 82               733 	mov	r2,dpl
   0145 AB 83               734 	mov	r3,dph
                    0056    735 	C$sdcc_test2.c$56$2$2 ==.
                            736 ;	sdcc_test2.c:56: u16AdcSpg = (__u16) ((3003L * (__u32)u16AdcWert) >> 10);
   0147 8A 37               737 	mov	__mullong_PARM_2,r2
   0149 8B 38               738 	mov	(__mullong_PARM_2 + 1),r3
   014B 75 39 00            739 	mov	(__mullong_PARM_2 + 2),#0x00
   014E 75 3A 00            740 	mov	(__mullong_PARM_2 + 3),#0x00
   0151 90 0B BB            741 	mov	dptr,#0x0BBB
   0154 E4                  742 	clr	a
   0155 F5 F0               743 	mov	b,a
   0157 C0 02               744 	push	ar2
   0159 C0 03               745 	push	ar3
   015B 12 0B 67            746 	lcall	__mullong
   015E AD 83               747 	mov	r5,dph
   0160 AE F0               748 	mov	r6,b
   0162 FF                  749 	mov	r7,a
   0163 8D 04               750 	mov	ar4,r5
   0165 EE                  751 	mov	a,r6
   0166 C3                  752 	clr	c
   0167 13                  753 	rrc	a
   0168 CC                  754 	xch	a,r4
   0169 13                  755 	rrc	a
   016A CC                  756 	xch	a,r4
   016B C3                  757 	clr	c
   016C 13                  758 	rrc	a
   016D CC                  759 	xch	a,r4
   016E 13                  760 	rrc	a
   016F CC                  761 	xch	a,r4
   0170 FD                  762 	mov	r5,a
   0171 EF                  763 	mov	a,r7
   0172 03                  764 	rr	a
   0173 03                  765 	rr	a
   0174 54 C0               766 	anl	a,#0xc0
   0176 4D                  767 	orl	a,r5
   0177 FD                  768 	mov	r5,a
   0178 EF                  769 	mov	a,r7
   0179 03                  770 	rr	a
   017A 03                  771 	rr	a
   017B 54 3F               772 	anl	a,#0x3f
                    008C    773 	C$sdcc_test2.c$58$2$2 ==.
                            774 ;	sdcc_test2.c:58: PcaSetPwm(Pca0, u8LedValues[ADDH]);
   017D E5 F5               775 	mov	a,_ADDH
   017F 90 0B F5            776 	mov	dptr,#_u8LedValues
   0182 93                  777 	movc	a,@a+dptr
   0183 F5 18               778 	mov	_PcaSetPwm_PARM_2,a
   0185 75 82 00            779 	mov	dpl,#0x00
   0188 C0 04               780 	push	ar4
   018A C0 05               781 	push	ar5
   018C 12 05 86            782 	lcall	_PcaSetPwm
                    009E    783 	C$sdcc_test2.c$59$2$2 ==.
                            784 ;	sdcc_test2.c:59: PcaSetPwm(Pca1, ADDH);
   018F 85 F5 18            785 	mov	_PcaSetPwm_PARM_2,_ADDH
   0192 75 82 01            786 	mov	dpl,#0x01
   0195 12 05 86            787 	lcall	_PcaSetPwm
   0198 D0 05               788 	pop	ar5
   019A D0 04               789 	pop	ar4
   019C D0 03               790 	pop	ar3
   019E D0 02               791 	pop	ar2
                    00AF    792 	C$sdcc_test2.c$60$2$2 ==.
                            793 ;	sdcc_test2.c:60: printf_tiny("AD-Wert: %d = %dmV        \r",u16AdcWert, u16AdcSpg);
   01A0 C0 04               794 	push	ar4
   01A2 C0 05               795 	push	ar5
   01A4 C0 02               796 	push	ar2
   01A6 C0 03               797 	push	ar3
   01A8 74 13               798 	mov	a,#__str_1
   01AA C0 E0               799 	push	acc
   01AC 74 0D               800 	mov	a,#(__str_1 >> 8)
   01AE C0 E0               801 	push	acc
   01B0 12 0A 41            802 	lcall	_printf_tiny
   01B3 E5 81               803 	mov	a,sp
   01B5 24 FA               804 	add	a,#0xfa
   01B7 F5 81               805 	mov	sp,a
                    00C8    806 	C$sdcc_test2.c$61$1$1 ==.
                            807 ;	sdcc_test2.c:61: for (u16Loop = 10000; u16Loop; u16Loop--);
   01B9 7A 10               808 	mov	r2,#0x10
   01BB 7B 27               809 	mov	r3,#0x27
   01BD                     810 00104$:
   01BD EA                  811 	mov	a,r2
   01BE 4B                  812 	orl	a,r3
   01BF 70 03               813 	jnz	00113$
   01C1 02 01 3D            814 	ljmp	00102$
   01C4                     815 00113$:
   01C4 1A                  816 	dec	r2
   01C5 BA FF F5            817 	cjne	r2,#0xff,00104$
   01C8 1B                  818 	dec	r3
                    00D8    819 	C$sdcc_test2.c$63$1$1 ==.
                    00D8    820 	XG$main$0$0 ==.
   01C9 80 F2               821 	sjmp	00104$
                            822 	.area CSEG    (CODE)
                            823 	.area CONST   (CODE)
                    0000    824 Fsdcc_test2$u8LedValues$0$0 == .
   0BF5                     825 _u8LedValues:
   0BF5 00                  826 	.db #0x00
   0BF6 01                  827 	.db #0x01
   0BF7 01                  828 	.db #0x01
   0BF8 01                  829 	.db #0x01
   0BF9 01                  830 	.db #0x01
   0BFA 01                  831 	.db #0x01
   0BFB 01                  832 	.db #0x01
   0BFC 01                  833 	.db #0x01
   0BFD 01                  834 	.db #0x01
   0BFE 01                  835 	.db #0x01
   0BFF 01                  836 	.db #0x01
   0C00 01                  837 	.db #0x01
   0C01 01                  838 	.db #0x01
   0C02 01                  839 	.db #0x01
   0C03 01                  840 	.db #0x01
   0C04 01                  841 	.db #0x01
   0C05 01                  842 	.db #0x01
   0C06 01                  843 	.db #0x01
   0C07 01                  844 	.db #0x01
   0C08 01                  845 	.db #0x01
   0C09 02                  846 	.db #0x02
   0C0A 02                  847 	.db #0x02
   0C0B 02                  848 	.db #0x02
   0C0C 02                  849 	.db #0x02
   0C0D 02                  850 	.db #0x02
   0C0E 02                  851 	.db #0x02
   0C0F 02                  852 	.db #0x02
   0C10 02                  853 	.db #0x02
   0C11 02                  854 	.db #0x02
   0C12 02                  855 	.db #0x02
   0C13 02                  856 	.db #0x02
   0C14 02                  857 	.db #0x02
   0C15 02                  858 	.db #0x02
   0C16 02                  859 	.db #0x02
   0C17 02                  860 	.db #0x02
   0C18 02                  861 	.db #0x02
   0C19 02                  862 	.db #0x02
   0C1A 02                  863 	.db #0x02
   0C1B 02                  864 	.db #0x02
   0C1C 02                  865 	.db #0x02
   0C1D 02                  866 	.db #0x02
   0C1E 02                  867 	.db #0x02
   0C1F 02                  868 	.db #0x02
   0C20 02                  869 	.db #0x02
   0C21 03                  870 	.db #0x03
   0C22 03                  871 	.db #0x03
   0C23 03                  872 	.db #0x03
   0C24 03                  873 	.db #0x03
   0C25 03                  874 	.db #0x03
   0C26 03                  875 	.db #0x03
   0C27 03                  876 	.db #0x03
   0C28 03                  877 	.db #0x03
   0C29 03                  878 	.db #0x03
   0C2A 03                  879 	.db #0x03
   0C2B 03                  880 	.db #0x03
   0C2C 03                  881 	.db #0x03
   0C2D 03                  882 	.db #0x03
   0C2E 03                  883 	.db #0x03
   0C2F 03                  884 	.db #0x03
   0C30 04                  885 	.db #0x04
   0C31 04                  886 	.db #0x04
   0C32 04                  887 	.db #0x04
   0C33 04                  888 	.db #0x04
   0C34 04                  889 	.db #0x04
   0C35 04                  890 	.db #0x04
   0C36 04                  891 	.db #0x04
   0C37 04                  892 	.db #0x04
   0C38 04                  893 	.db #0x04
   0C39 04                  894 	.db #0x04
   0C3A 04                  895 	.db #0x04
   0C3B 05                  896 	.db #0x05
   0C3C 05                  897 	.db #0x05
   0C3D 05                  898 	.db #0x05
   0C3E 05                  899 	.db #0x05
   0C3F 05                  900 	.db #0x05
   0C40 05                  901 	.db #0x05
   0C41 05                  902 	.db #0x05
   0C42 05                  903 	.db #0x05
   0C43 05                  904 	.db #0x05
   0C44 05                  905 	.db #0x05
   0C45 06                  906 	.db #0x06
   0C46 06                  907 	.db #0x06
   0C47 06                  908 	.db #0x06
   0C48 06                  909 	.db #0x06
   0C49 06                  910 	.db #0x06
   0C4A 06                  911 	.db #0x06
   0C4B 06                  912 	.db #0x06
   0C4C 07                  913 	.db #0x07
   0C4D 07                  914 	.db #0x07
   0C4E 07                  915 	.db #0x07
   0C4F 07                  916 	.db #0x07
   0C50 07                  917 	.db #0x07
   0C51 07                  918 	.db #0x07
   0C52 07                  919 	.db #0x07
   0C53 08                  920 	.db #0x08
   0C54 08                  921 	.db #0x08
   0C55 08                  922 	.db #0x08
   0C56 08                  923 	.db #0x08
   0C57 08                  924 	.db #0x08
   0C58 08                  925 	.db #0x08
   0C59 09                  926 	.db #0x09
   0C5A 09                  927 	.db #0x09
   0C5B 09                  928 	.db #0x09
   0C5C 09                  929 	.db #0x09
   0C5D 09                  930 	.db #0x09
   0C5E 0A                  931 	.db #0x0A
   0C5F 0A                  932 	.db #0x0A
   0C60 0A                  933 	.db #0x0A
   0C61 0A                  934 	.db #0x0A
   0C62 0B                  935 	.db #0x0B
   0C63 0B                  936 	.db #0x0B
   0C64 0B                  937 	.db #0x0B
   0C65 0B                  938 	.db #0x0B
   0C66 0C                  939 	.db #0x0C
   0C67 0C                  940 	.db #0x0C
   0C68 0C                  941 	.db #0x0C
   0C69 0C                  942 	.db #0x0C
   0C6A 0D                  943 	.db #0x0D
   0C6B 0D                  944 	.db #0x0D
   0C6C 0D                  945 	.db #0x0D
   0C6D 0D                  946 	.db #0x0D
   0C6E 0E                  947 	.db #0x0E
   0C6F 0E                  948 	.db #0x0E
   0C70 0E                  949 	.db #0x0E
   0C71 0F                  950 	.db #0x0F
   0C72 0F                  951 	.db #0x0F
   0C73 0F                  952 	.db #0x0F
   0C74 10                  953 	.db #0x10
   0C75 10                  954 	.db #0x10
   0C76 10                  955 	.db #0x10
   0C77 11                  956 	.db #0x11
   0C78 11                  957 	.db #0x11
   0C79 11                  958 	.db #0x11
   0C7A 12                  959 	.db #0x12
   0C7B 12                  960 	.db #0x12
   0C7C 13                  961 	.db #0x13
   0C7D 13                  962 	.db #0x13
   0C7E 13                  963 	.db #0x13
   0C7F 14                  964 	.db #0x14
   0C80 14                  965 	.db #0x14
   0C81 15                  966 	.db #0x15
   0C82 15                  967 	.db #0x15
   0C83 16                  968 	.db #0x16
   0C84 16                  969 	.db #0x16
   0C85 17                  970 	.db #0x17
   0C86 17                  971 	.db #0x17
   0C87 18                  972 	.db #0x18
   0C88 18                  973 	.db #0x18
   0C89 19                  974 	.db #0x19
   0C8A 19                  975 	.db #0x19
   0C8B 1A                  976 	.db #0x1A
   0C8C 1A                  977 	.db #0x1A
   0C8D 1B                  978 	.db #0x1B
   0C8E 1C                  979 	.db #0x1C
   0C8F 1C                  980 	.db #0x1C
   0C90 1D                  981 	.db #0x1D
   0C91 1D                  982 	.db #0x1D
   0C92 1E                  983 	.db #0x1E
   0C93 1F                  984 	.db #0x1F
   0C94 1F                  985 	.db #0x1F
   0C95 20                  986 	.db #0x20
   0C96 21                  987 	.db #0x21
   0C97 22                  988 	.db #0x22
   0C98 22                  989 	.db #0x22
   0C99 23                  990 	.db #0x23
   0C9A 24                  991 	.db #0x24
   0C9B 25                  992 	.db #0x25
   0C9C 25                  993 	.db #0x25
   0C9D 26                  994 	.db #0x26
   0C9E 27                  995 	.db #0x27
   0C9F 28                  996 	.db #0x28
   0CA0 29                  997 	.db #0x29
   0CA1 2A                  998 	.db #0x2A
   0CA2 2B                  999 	.db #0x2B
   0CA3 2C                 1000 	.db #0x2C
   0CA4 2D                 1001 	.db #0x2D
   0CA5 2E                 1002 	.db #0x2E
   0CA6 2F                 1003 	.db #0x2F
   0CA7 30                 1004 	.db #0x30
   0CA8 31                 1005 	.db #0x31
   0CA9 32                 1006 	.db #0x32
   0CAA 33                 1007 	.db #0x33
   0CAB 34                 1008 	.db #0x34
   0CAC 35                 1009 	.db #0x35
   0CAD 36                 1010 	.db #0x36
   0CAE 37                 1011 	.db #0x37
   0CAF 39                 1012 	.db #0x39
   0CB0 3A                 1013 	.db #0x3A
   0CB1 3B                 1014 	.db #0x3B
   0CB2 3C                 1015 	.db #0x3C
   0CB3 3E                 1016 	.db #0x3E
   0CB4 3F                 1017 	.db #0x3F
   0CB5 41                 1018 	.db #0x41
   0CB6 42                 1019 	.db #0x42
   0CB7 43                 1020 	.db #0x43
   0CB8 45                 1021 	.db #0x45
   0CB9 46                 1022 	.db #0x46
   0CBA 48                 1023 	.db #0x48
   0CBB 4A                 1024 	.db #0x4A
   0CBC 4B                 1025 	.db #0x4B
   0CBD 4D                 1026 	.db #0x4D
   0CBE 4F                 1027 	.db #0x4F
   0CBF 50                 1028 	.db #0x50
   0CC0 52                 1029 	.db #0x52
   0CC1 54                 1030 	.db #0x54
   0CC2 56                 1031 	.db #0x56
   0CC3 58                 1032 	.db #0x58
   0CC4 59                 1033 	.db #0x59
   0CC5 5B                 1034 	.db #0x5B
   0CC6 5D                 1035 	.db #0x5D
   0CC7 60                 1036 	.db #0x60
   0CC8 62                 1037 	.db #0x62
   0CC9 64                 1038 	.db #0x64
   0CCA 66                 1039 	.db #0x66
   0CCB 68                 1040 	.db #0x68
   0CCC 6B                 1041 	.db #0x6B
   0CCD 6D                 1042 	.db #0x6D
   0CCE 6F                 1043 	.db #0x6F
   0CCF 72                 1044 	.db #0x72
   0CD0 74                 1045 	.db #0x74
   0CD1 77                 1046 	.db #0x77
   0CD2 79                 1047 	.db #0x79
   0CD3 7C                 1048 	.db #0x7C
   0CD4 7F                 1049 	.db #0x7F
   0CD5 82                 1050 	.db #0x82
   0CD6 85                 1051 	.db #0x85
   0CD7 87                 1052 	.db #0x87
   0CD8 8A                 1053 	.db #0x8A
   0CD9 8D                 1054 	.db #0x8D
   0CDA 91                 1055 	.db #0x91
   0CDB 94                 1056 	.db #0x94
   0CDC 97                 1057 	.db #0x97
   0CDD 9A                 1058 	.db #0x9A
   0CDE 9E                 1059 	.db #0x9E
   0CDF A1                 1060 	.db #0xA1
   0CE0 A5                 1061 	.db #0xA5
   0CE1 A8                 1062 	.db #0xA8
   0CE2 AC                 1063 	.db #0xAC
   0CE3 B0                 1064 	.db #0xB0
   0CE4 B4                 1065 	.db #0xB4
   0CE5 B8                 1066 	.db #0xB8
   0CE6 BC                 1067 	.db #0xBC
   0CE7 C0                 1068 	.db #0xC0
   0CE8 C4                 1069 	.db #0xC4
   0CE9 C9                 1070 	.db #0xC9
   0CEA CD                 1071 	.db #0xCD
   0CEB D2                 1072 	.db #0xD2
   0CEC D6                 1073 	.db #0xD6
   0CED DB                 1074 	.db #0xDB
   0CEE E0                 1075 	.db #0xE0
   0CEF E5                 1076 	.db #0xE5
   0CF0 EA                 1077 	.db #0xEA
   0CF1 EF                 1078 	.db #0xEF
   0CF2 F4                 1079 	.db #0xF4
   0CF3 F9                 1080 	.db #0xF9
   0CF4 FF                 1081 	.db #0xFF
                    0100   1082 Fsdcc_test2$_str_0$0$0 == .
   0CF5                    1083 __str_0:
   0CF5 0D                 1084 	.db 0x0D
   0CF6 0A                 1085 	.db 0x0A
   0CF7 53 74 61 72 74 69  1086 	.ascii "Starting Application-Loop"
        6E 67 20 41 70 70
        6C 69 63 61 74 69
        6F 6E 2D 4C 6F 6F
        70
   0D10 0D                 1087 	.db 0x0D
   0D11 0A                 1088 	.db 0x0A
   0D12 00                 1089 	.db 0x00
                    011E   1090 Fsdcc_test2$_str_1$0$0 == .
   0D13                    1091 __str_1:
   0D13 41 44 2D 57 65 72  1092 	.ascii "AD-Wert: %d = %dmV        "
        74 3A 20 25 64 20
        3D 20 25 64 6D 56
        20 20 20 20 20 20
        20 20
   0D2D 0D                 1093 	.db 0x0D
   0D2E 00                 1094 	.db 0x00
                           1095 	.area XINIT   (CODE)
                           1096 	.area CABS    (ABS,CODE)
