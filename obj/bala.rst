ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .area _CODE
                              2 
                              3 ;======================================================================
                              4 ;;======================================================================
                              5 ;; DATOS PRIVADOS
                              6 ;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
                              7 ;;======================================================================
                              8 ;;======================================================================
                              9 
                             10 
                             11 .macro defineBala num, x, y, w, h, l, r, d, s, ralt
                             12 
                             13   	num'_datos:
                             14 
                             15 		num'_x: .db x		  ;; x Inicial
                             16 		num'_y: .db y		  ;; y Inicial
                             17 		num'_w: .db w		  ;; Ancho
                             18 		num'_h: .db h		  ;; Alto de enemigo 8 lineas (8 bytes)
                             19 		num'_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
                             20 		num'_xi: .db x		  ;; x Actual 
                             21 		num'_yi: .db y		  ;; y Actual
                             22 		num'_l: .db l		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
                             23 		num'_li: .db l		  ;; l inicial
                             24 		num'_r: .db r		  ;; Retardo de salida de la bala
                             25 		num'_dir: .db d	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
                             26 		num'_random: .db -1 		;, Esta variable no sirve para nada
                             27 		num'_sprite: .db s	
                             28 		num'_ralt: .db ralt	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             29 
                             30 
                             31 .endm
                             32 
                     0000    33 .equ	b_x, 	0
                     0001    34 .equ	b_y, 	1
                     0002    35 .equ	b_w, 	2
                     0003    36 .equ	b_h, 	3
                     0004    37 .equ	b_col, 	4	
                     0005    38 .equ	b_xi, 	5
                     0006    39 .equ	b_yi, 	6
                     0007    40 .equ	b_l, 	7
                     0008    41 .equ	b_li, 	8
                     0009    42 .equ	b_r, 	9
                     000A    43 .equ	b_dir,	10
                     000B    44 .equ    b_rand, 11
                     000C    45 .equ    b_sprite, 12
                     000D    46 .equ 	b_ralt, 13
                             47 
   409C 00                   48 newposX: .db 0
   409D 00                   49 newposY: .db 0
                             50 
   409E                      51 defineBala b1, 65, 116, 1, 4, 55, 0, 1, 22, 8  		;; NIVEL 1 (nombre, x, y, ancho, alto, recorrido, retardo, direcc)
                              1 
   0002                       2   	b1_datos:
                              3 
   409E 41                    4 		b1_x: .db 65		  ;; x Inicial
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



   409F 74                    5 		b1_y: .db 116		  ;; y Inicial
   40A0 01                    6 		b1_w: .db 1		  ;; Ancho
   40A1 04                    7 		b1_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   40A2 00                    8 		b1_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   40A3 41                    9 		b1_xi: .db 65		  ;; x Actual 
   40A4 74                   10 		b1_yi: .db 116		  ;; y Actual
   40A5 37                   11 		b1_l: .db 55		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   40A6 37                   12 		b1_li: .db 55		  ;; l inicial
   40A7 00                   13 		b1_r: .db 0		  ;; Retardo de salida de la bala
   40A8 01                   14 		b1_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   40A9 FF                   15 		b1_random: .db -1 		;, Esta variable no sirve para nada
   40AA 16                   16 		b1_sprite: .db 22	
   40AB 08                   17 		b1_ralt: .db 8	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
                             52 
   40AC                      53 defineBala b2, 80-2, 112, 1, 4, 65, 40, 1, 22, 12	;; NIVEL 2
                              1 
   0010                       2   	b2_datos:
                              3 
   40AC 4E                    4 		b2_x: .db 80-2		  ;; x Inicial
   40AD 70                    5 		b2_y: .db 112		  ;; y Inicial
   40AE 01                    6 		b2_w: .db 1		  ;; Ancho
   40AF 04                    7 		b2_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   40B0 00                    8 		b2_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   40B1 4E                    9 		b2_xi: .db 80-2		  ;; x Actual 
   40B2 70                   10 		b2_yi: .db 112		  ;; y Actual
   40B3 41                   11 		b2_l: .db 65		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   40B4 41                   12 		b2_li: .db 65		  ;; l inicial
   40B5 28                   13 		b2_r: .db 40		  ;; Retardo de salida de la bala
   40B6 01                   14 		b2_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   40B7 FF                   15 		b2_random: .db -1 		;, Esta variable no sirve para nada
   40B8 16                   16 		b2_sprite: .db 22	
   40B9 0C                   17 		b2_ralt: .db 12	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   40BA                      54 defineBala b3, 9, 80, 1, 4, 55, 0, 0, 23, 8 		;; NIVEL 2
                              1 
   001E                       2   	b3_datos:
                              3 
   40BA 09                    4 		b3_x: .db 9		  ;; x Inicial
   40BB 50                    5 		b3_y: .db 80		  ;; y Inicial
   40BC 01                    6 		b3_w: .db 1		  ;; Ancho
   40BD 04                    7 		b3_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   40BE 00                    8 		b3_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   40BF 09                    9 		b3_xi: .db 9		  ;; x Actual 
   40C0 50                   10 		b3_yi: .db 80		  ;; y Actual
   40C1 37                   11 		b3_l: .db 55		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   40C2 37                   12 		b3_li: .db 55		  ;; l inicial
   40C3 00                   13 		b3_r: .db 0		  ;; Retardo de salida de la bala
   40C4 00                   14 		b3_dir: .db 0	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   40C5 FF                   15 		b3_random: .db -1 		;, Esta variable no sirve para nada
   40C6 17                   16 		b3_sprite: .db 23	
   40C7 08                   17 		b3_ralt: .db 8	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                             19 
                             55 
   40C8                      56 defineBala b9, 68, 112, 1, 4, 56, 40, 1, 22, 12 	;; NIVEL 3
                              1 
   002C                       2   	b9_datos:
                              3 
   40C8 44                    4 		b9_x: .db 68		  ;; x Inicial
   40C9 70                    5 		b9_y: .db 112		  ;; y Inicial
   40CA 01                    6 		b9_w: .db 1		  ;; Ancho
   40CB 04                    7 		b9_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   40CC 00                    8 		b9_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   40CD 44                    9 		b9_xi: .db 68		  ;; x Actual 
   40CE 70                   10 		b9_yi: .db 112		  ;; y Actual
   40CF 38                   11 		b9_l: .db 56		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   40D0 38                   12 		b9_li: .db 56		  ;; l inicial
   40D1 28                   13 		b9_r: .db 40		  ;; Retardo de salida de la bala
   40D2 01                   14 		b9_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   40D3 FF                   15 		b9_random: .db -1 		;, Esta variable no sirve para nada
   40D4 16                   16 		b9_sprite: .db 22	
   40D5 0C                   17 		b9_ralt: .db 12	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   40D6                      57 defineBala b10, 20, 84, 1, 4, 40, 35, 0, 23, 15 	;; NIVEL 3
                              1 
   003A                       2   	b10_datos:
                              3 
   40D6 14                    4 		b10_x: .db 20		  ;; x Inicial
   40D7 54                    5 		b10_y: .db 84		  ;; y Inicial
   40D8 01                    6 		b10_w: .db 1		  ;; Ancho
   40D9 04                    7 		b10_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   40DA 00                    8 		b10_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   40DB 14                    9 		b10_xi: .db 20		  ;; x Actual 
   40DC 54                   10 		b10_yi: .db 84		  ;; y Actual
   40DD 28                   11 		b10_l: .db 40		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   40DE 28                   12 		b10_li: .db 40		  ;; l inicial
   40DF 23                   13 		b10_r: .db 35		  ;; Retardo de salida de la bala
   40E0 00                   14 		b10_dir: .db 0	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   40E1 FF                   15 		b10_random: .db -1 		;, Esta variable no sirve para nada
   40E2 17                   16 		b10_sprite: .db 23	
   40E3 0F                   17 		b10_ralt: .db 15	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
                             58 
   40E4                      59 defineBala b11, 64, 50, 1, 4, 60, 18, 1, 22, 0 		;; NIVEL 3
                              1 
   0048                       2   	b11_datos:
                              3 
   40E4 40                    4 		b11_x: .db 64		  ;; x Inicial
   40E5 32                    5 		b11_y: .db 50		  ;; y Inicial
   40E6 01                    6 		b11_w: .db 1		  ;; Ancho
   40E7 04                    7 		b11_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   40E8 00                    8 		b11_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   40E9 40                    9 		b11_xi: .db 64		  ;; x Actual 
   40EA 32                   10 		b11_yi: .db 50		  ;; y Actual
   40EB 3C                   11 		b11_l: .db 60		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



   40EC 3C                   12 		b11_li: .db 60		  ;; l inicial
   40ED 12                   13 		b11_r: .db 18		  ;; Retardo de salida de la bala
   40EE 01                   14 		b11_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   40EF FF                   15 		b11_random: .db -1 		;, Esta variable no sirve para nada
   40F0 16                   16 		b11_sprite: .db 22	
   40F1 00                   17 		b11_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   40F2                      60 defineBala b12, 64, 50, 1, 4, 60, 35, 1, 22, 0 		;; NIVEL 3
                              1 
   0056                       2   	b12_datos:
                              3 
   40F2 40                    4 		b12_x: .db 64		  ;; x Inicial
   40F3 32                    5 		b12_y: .db 50		  ;; y Inicial
   40F4 01                    6 		b12_w: .db 1		  ;; Ancho
   40F5 04                    7 		b12_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   40F6 00                    8 		b12_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   40F7 40                    9 		b12_xi: .db 64		  ;; x Actual 
   40F8 32                   10 		b12_yi: .db 50		  ;; y Actual
   40F9 3C                   11 		b12_l: .db 60		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   40FA 3C                   12 		b12_li: .db 60		  ;; l inicial
   40FB 23                   13 		b12_r: .db 35		  ;; Retardo de salida de la bala
   40FC 01                   14 		b12_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   40FD FF                   15 		b12_random: .db -1 		;, Esta variable no sirve para nada
   40FE 16                   16 		b12_sprite: .db 22	
   40FF 00                   17 		b12_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   4100                      61 defineBala b13, 64, 50, 1, 4, 60, 0, 1, 22, 0 		;; NIVEL 3
                              1 
   0064                       2   	b13_datos:
                              3 
   4100 40                    4 		b13_x: .db 64		  ;; x Inicial
   4101 32                    5 		b13_y: .db 50		  ;; y Inicial
   4102 01                    6 		b13_w: .db 1		  ;; Ancho
   4103 04                    7 		b13_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   4104 00                    8 		b13_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   4105 40                    9 		b13_xi: .db 64		  ;; x Actual 
   4106 32                   10 		b13_yi: .db 50		  ;; y Actual
   4107 3C                   11 		b13_l: .db 60		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   4108 3C                   12 		b13_li: .db 60		  ;; l inicial
   4109 00                   13 		b13_r: .db 0		  ;; Retardo de salida de la bala
   410A 01                   14 		b13_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   410B FF                   15 		b13_random: .db -1 		;, Esta variable no sirve para nada
   410C 16                   16 		b13_sprite: .db 22	
   410D 00                   17 		b13_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
                             62 
   410E                      63 defineBala b14, 70, 116, 1, 4, 60, 0, 1, 22, 12		;; NIVEL 4
                              1 
   0072                       2   	b14_datos:
                              3 
   410E 46                    4 		b14_x: .db 70		  ;; x Inicial
   410F 74                    5 		b14_y: .db 116		  ;; y Inicial
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



   4110 01                    6 		b14_w: .db 1		  ;; Ancho
   4111 04                    7 		b14_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   4112 00                    8 		b14_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   4113 46                    9 		b14_xi: .db 70		  ;; x Actual 
   4114 74                   10 		b14_yi: .db 116		  ;; y Actual
   4115 3C                   11 		b14_l: .db 60		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   4116 3C                   12 		b14_li: .db 60		  ;; l inicial
   4117 00                   13 		b14_r: .db 0		  ;; Retardo de salida de la bala
   4118 01                   14 		b14_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   4119 FF                   15 		b14_random: .db -1 		;, Esta variable no sirve para nada
   411A 16                   16 		b14_sprite: .db 22	
   411B 0C                   17 		b14_ralt: .db 12	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
                             64 
   411C                      65 defineBala b15, 80-2, 116, 1, 4, 60, 0, 1, 22, 8 	;; NIVEL 5
                              1 
   0080                       2   	b15_datos:
                              3 
   411C 4E                    4 		b15_x: .db 80-2		  ;; x Inicial
   411D 74                    5 		b15_y: .db 116		  ;; y Inicial
   411E 01                    6 		b15_w: .db 1		  ;; Ancho
   411F 04                    7 		b15_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   4120 00                    8 		b15_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   4121 4E                    9 		b15_xi: .db 80-2		  ;; x Actual 
   4122 74                   10 		b15_yi: .db 116		  ;; y Actual
   4123 3C                   11 		b15_l: .db 60		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   4124 3C                   12 		b15_li: .db 60		  ;; l inicial
   4125 00                   13 		b15_r: .db 0		  ;; Retardo de salida de la bala
   4126 01                   14 		b15_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   4127 FF                   15 		b15_random: .db -1 		;, Esta variable no sirve para nada
   4128 16                   16 		b15_sprite: .db 22	
   4129 08                   17 		b15_ralt: .db 8	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   412A                      66 defineBala b16, 9, 84, 1, 4, 60, 40, 0, 23, 12		;; NIVEL 5
                              1 
   008E                       2   	b16_datos:
                              3 
   412A 09                    4 		b16_x: .db 9		  ;; x Inicial
   412B 54                    5 		b16_y: .db 84		  ;; y Inicial
   412C 01                    6 		b16_w: .db 1		  ;; Ancho
   412D 04                    7 		b16_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   412E 00                    8 		b16_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   412F 09                    9 		b16_xi: .db 9		  ;; x Actual 
   4130 54                   10 		b16_yi: .db 84		  ;; y Actual
   4131 3C                   11 		b16_l: .db 60		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   4132 3C                   12 		b16_li: .db 60		  ;; l inicial
   4133 28                   13 		b16_r: .db 40		  ;; Retardo de salida de la bala
   4134 00                   14 		b16_dir: .db 0	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   4135 FF                   15 		b16_random: .db -1 		;, Esta variable no sirve para nada
   4136 17                   16 		b16_sprite: .db 23	
   4137 0C                   17 		b16_ralt: .db 12	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



                             67 
   4138                      68 defineBala b20, 64, 110, 1, 4, 57, 0, 1, 22, 0 		;; NIVEL 6
                              1 
   009C                       2   	b20_datos:
                              3 
   4138 40                    4 		b20_x: .db 64		  ;; x Inicial
   4139 6E                    5 		b20_y: .db 110		  ;; y Inicial
   413A 01                    6 		b20_w: .db 1		  ;; Ancho
   413B 04                    7 		b20_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   413C 00                    8 		b20_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   413D 40                    9 		b20_xi: .db 64		  ;; x Actual 
   413E 6E                   10 		b20_yi: .db 110		  ;; y Actual
   413F 39                   11 		b20_l: .db 57		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   4140 39                   12 		b20_li: .db 57		  ;; l inicial
   4141 00                   13 		b20_r: .db 0		  ;; Retardo de salida de la bala
   4142 01                   14 		b20_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   4143 FF                   15 		b20_random: .db -1 		;, Esta variable no sirve para nada
   4144 16                   16 		b20_sprite: .db 22	
   4145 00                   17 		b20_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   4146                      69 defineBala b21, 64, 110, 1, 4, 57, 15, 1, 22, 0 	;; NIVEL 6
                              1 
   00AA                       2   	b21_datos:
                              3 
   4146 40                    4 		b21_x: .db 64		  ;; x Inicial
   4147 6E                    5 		b21_y: .db 110		  ;; y Inicial
   4148 01                    6 		b21_w: .db 1		  ;; Ancho
   4149 04                    7 		b21_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   414A 00                    8 		b21_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   414B 40                    9 		b21_xi: .db 64		  ;; x Actual 
   414C 6E                   10 		b21_yi: .db 110		  ;; y Actual
   414D 39                   11 		b21_l: .db 57		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   414E 39                   12 		b21_li: .db 57		  ;; l inicial
   414F 0F                   13 		b21_r: .db 15		  ;; Retardo de salida de la bala
   4150 01                   14 		b21_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   4151 FF                   15 		b21_random: .db -1 		;, Esta variable no sirve para nada
   4152 16                   16 		b21_sprite: .db 22	
   4153 00                   17 		b21_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   4154                      70 defineBala b22, 64, 110, 1, 4, 57, 30, 1, 22, 0 	;; NIVEL 6
                              1 
   00B8                       2   	b22_datos:
                              3 
   4154 40                    4 		b22_x: .db 64		  ;; x Inicial
   4155 6E                    5 		b22_y: .db 110		  ;; y Inicial
   4156 01                    6 		b22_w: .db 1		  ;; Ancho
   4157 04                    7 		b22_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   4158 00                    8 		b22_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   4159 40                    9 		b22_xi: .db 64		  ;; x Actual 
   415A 6E                   10 		b22_yi: .db 110		  ;; y Actual
   415B 39                   11 		b22_l: .db 57		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   415C 39                   12 		b22_li: .db 57		  ;; l inicial
   415D 1E                   13 		b22_r: .db 30		  ;; Retardo de salida de la bala
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   415E 01                   14 		b22_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   415F FF                   15 		b22_random: .db -1 		;, Esta variable no sirve para nada
   4160 16                   16 		b22_sprite: .db 22	
   4161 00                   17 		b22_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   4162                      71 defineBala b23, 64, 110, 1, 4, 57, 45, 1, 22, 0 	;; NIVEL 6
                              1 
   00C6                       2   	b23_datos:
                              3 
   4162 40                    4 		b23_x: .db 64		  ;; x Inicial
   4163 6E                    5 		b23_y: .db 110		  ;; y Inicial
   4164 01                    6 		b23_w: .db 1		  ;; Ancho
   4165 04                    7 		b23_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   4166 00                    8 		b23_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   4167 40                    9 		b23_xi: .db 64		  ;; x Actual 
   4168 6E                   10 		b23_yi: .db 110		  ;; y Actual
   4169 39                   11 		b23_l: .db 57		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   416A 39                   12 		b23_li: .db 57		  ;; l inicial
   416B 2D                   13 		b23_r: .db 45		  ;; Retardo de salida de la bala
   416C 01                   14 		b23_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   416D FF                   15 		b23_random: .db -1 		;, Esta variable no sirve para nada
   416E 16                   16 		b23_sprite: .db 22	
   416F 00                   17 		b23_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
                             72 
   4170                      73 defineBala b24, 65, 112, 1, 4, 57, 0, 1, 22, 0 		;; NIVEL 7
                              1 
   00D4                       2   	b24_datos:
                              3 
   4170 41                    4 		b24_x: .db 65		  ;; x Inicial
   4171 70                    5 		b24_y: .db 112		  ;; y Inicial
   4172 01                    6 		b24_w: .db 1		  ;; Ancho
   4173 04                    7 		b24_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   4174 00                    8 		b24_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   4175 41                    9 		b24_xi: .db 65		  ;; x Actual 
   4176 70                   10 		b24_yi: .db 112		  ;; y Actual
   4177 39                   11 		b24_l: .db 57		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   4178 39                   12 		b24_li: .db 57		  ;; l inicial
   4179 00                   13 		b24_r: .db 0		  ;; Retardo de salida de la bala
   417A 01                   14 		b24_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   417B FF                   15 		b24_random: .db -1 		;, Esta variable no sirve para nada
   417C 16                   16 		b24_sprite: .db 22	
   417D 00                   17 		b24_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   417E                      74 defineBala b25, 65, 112, 1, 4, 57, 20, 1, 22, 0		;; NIVEL 7
                              1 
   00E2                       2   	b25_datos:
                              3 
   417E 41                    4 		b25_x: .db 65		  ;; x Inicial
   417F 70                    5 		b25_y: .db 112		  ;; y Inicial
   4180 01                    6 		b25_w: .db 1		  ;; Ancho
   4181 04                    7 		b25_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   4182 00                    8 		b25_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   4183 41                    9 		b25_xi: .db 65		  ;; x Actual 
   4184 70                   10 		b25_yi: .db 112		  ;; y Actual
   4185 39                   11 		b25_l: .db 57		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   4186 39                   12 		b25_li: .db 57		  ;; l inicial
   4187 14                   13 		b25_r: .db 20		  ;; Retardo de salida de la bala
   4188 01                   14 		b25_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   4189 FF                   15 		b25_random: .db -1 		;, Esta variable no sirve para nada
   418A 16                   16 		b25_sprite: .db 22	
   418B 00                   17 		b25_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
                             75 
                             76 
   418C                      77 defineBala b26, 66, 112, 1, 4, 50, 0, 1, 22, 8 		;; NIVEL 8
                              1 
   00F0                       2   	b26_datos:
                              3 
   418C 42                    4 		b26_x: .db 66		  ;; x Inicial
   418D 70                    5 		b26_y: .db 112		  ;; y Inicial
   418E 01                    6 		b26_w: .db 1		  ;; Ancho
   418F 04                    7 		b26_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   4190 00                    8 		b26_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   4191 42                    9 		b26_xi: .db 66		  ;; x Actual 
   4192 70                   10 		b26_yi: .db 112		  ;; y Actual
   4193 32                   11 		b26_l: .db 50		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   4194 32                   12 		b26_li: .db 50		  ;; l inicial
   4195 00                   13 		b26_r: .db 0		  ;; Retardo de salida de la bala
   4196 01                   14 		b26_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   4197 FF                   15 		b26_random: .db -1 		;, Esta variable no sirve para nada
   4198 16                   16 		b26_sprite: .db 22	
   4199 08                   17 		b26_ralt: .db 8	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   419A                      78 defineBala b33, 66, 112, 1, 4, 55, 32, 1, 22, 8 	;; NIVEL 8
                              1 
   00FE                       2   	b33_datos:
                              3 
   419A 42                    4 		b33_x: .db 66		  ;; x Inicial
   419B 70                    5 		b33_y: .db 112		  ;; y Inicial
   419C 01                    6 		b33_w: .db 1		  ;; Ancho
   419D 04                    7 		b33_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   419E 00                    8 		b33_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   419F 42                    9 		b33_xi: .db 66		  ;; x Actual 
   41A0 70                   10 		b33_yi: .db 112		  ;; y Actual
   41A1 37                   11 		b33_l: .db 55		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   41A2 37                   12 		b33_li: .db 55		  ;; l inicial
   41A3 20                   13 		b33_r: .db 32		  ;; Retardo de salida de la bala
   41A4 01                   14 		b33_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   41A5 FF                   15 		b33_random: .db -1 		;, Esta variable no sirve para nada
   41A6 16                   16 		b33_sprite: .db 22	
   41A7 08                   17 		b33_ralt: .db 8	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   41A8                      79 defineBala b27, 9, 52, 1, 4, 62, 0, 0, 23, 0 		;; NIVEL 8
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



                              1 
   010C                       2   	b27_datos:
                              3 
   41A8 09                    4 		b27_x: .db 9		  ;; x Inicial
   41A9 34                    5 		b27_y: .db 52		  ;; y Inicial
   41AA 01                    6 		b27_w: .db 1		  ;; Ancho
   41AB 04                    7 		b27_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   41AC 00                    8 		b27_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   41AD 09                    9 		b27_xi: .db 9		  ;; x Actual 
   41AE 34                   10 		b27_yi: .db 52		  ;; y Actual
   41AF 3E                   11 		b27_l: .db 62		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   41B0 3E                   12 		b27_li: .db 62		  ;; l inicial
   41B1 00                   13 		b27_r: .db 0		  ;; Retardo de salida de la bala
   41B2 00                   14 		b27_dir: .db 0	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   41B3 FF                   15 		b27_random: .db -1 		;, Esta variable no sirve para nada
   41B4 17                   16 		b27_sprite: .db 23	
   41B5 00                   17 		b27_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   41B6                      80 defineBala b28, 9, 52, 1, 4, 62, 15, 0, 23, 0 		;; NIVEL 8
                              1 
   011A                       2   	b28_datos:
                              3 
   41B6 09                    4 		b28_x: .db 9		  ;; x Inicial
   41B7 34                    5 		b28_y: .db 52		  ;; y Inicial
   41B8 01                    6 		b28_w: .db 1		  ;; Ancho
   41B9 04                    7 		b28_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   41BA 00                    8 		b28_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   41BB 09                    9 		b28_xi: .db 9		  ;; x Actual 
   41BC 34                   10 		b28_yi: .db 52		  ;; y Actual
   41BD 3E                   11 		b28_l: .db 62		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   41BE 3E                   12 		b28_li: .db 62		  ;; l inicial
   41BF 0F                   13 		b28_r: .db 15		  ;; Retardo de salida de la bala
   41C0 00                   14 		b28_dir: .db 0	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   41C1 FF                   15 		b28_random: .db -1 		;, Esta variable no sirve para nada
   41C2 17                   16 		b28_sprite: .db 23	
   41C3 00                   17 		b28_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   41C4                      81 defineBala b30, 9, 52, 1, 4, 62, 30, 0, 23, 0 		;; NIVEL 8
                              1 
   0128                       2   	b30_datos:
                              3 
   41C4 09                    4 		b30_x: .db 9		  ;; x Inicial
   41C5 34                    5 		b30_y: .db 52		  ;; y Inicial
   41C6 01                    6 		b30_w: .db 1		  ;; Ancho
   41C7 04                    7 		b30_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   41C8 00                    8 		b30_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   41C9 09                    9 		b30_xi: .db 9		  ;; x Actual 
   41CA 34                   10 		b30_yi: .db 52		  ;; y Actual
   41CB 3E                   11 		b30_l: .db 62		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   41CC 3E                   12 		b30_li: .db 62		  ;; l inicial
   41CD 1E                   13 		b30_r: .db 30		  ;; Retardo de salida de la bala
   41CE 00                   14 		b30_dir: .db 0	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   41CF FF                   15 		b30_random: .db -1 		;, Esta variable no sirve para nada
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   41D0 17                   16 		b30_sprite: .db 23	
   41D1 00                   17 		b30_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
                             82 
   41D2                      83 defineBala b29, 9, 75, 1, 4, 45, 20, 0, 23, 0 		;; NIVEL 9
                              1 
   0136                       2   	b29_datos:
                              3 
   41D2 09                    4 		b29_x: .db 9		  ;; x Inicial
   41D3 4B                    5 		b29_y: .db 75		  ;; y Inicial
   41D4 01                    6 		b29_w: .db 1		  ;; Ancho
   41D5 04                    7 		b29_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   41D6 00                    8 		b29_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   41D7 09                    9 		b29_xi: .db 9		  ;; x Actual 
   41D8 4B                   10 		b29_yi: .db 75		  ;; y Actual
   41D9 2D                   11 		b29_l: .db 45		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   41DA 2D                   12 		b29_li: .db 45		  ;; l inicial
   41DB 14                   13 		b29_r: .db 20		  ;; Retardo de salida de la bala
   41DC 00                   14 		b29_dir: .db 0	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   41DD FF                   15 		b29_random: .db -1 		;, Esta variable no sirve para nada
   41DE 17                   16 		b29_sprite: .db 23	
   41DF 00                   17 		b29_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   41E0                      84 defineBala b31, 65, 50, 1, 4, 45, 0, 1, 22, 0 		;; NIVEL 9
                              1 
   0144                       2   	b31_datos:
                              3 
   41E0 41                    4 		b31_x: .db 65		  ;; x Inicial
   41E1 32                    5 		b31_y: .db 50		  ;; y Inicial
   41E2 01                    6 		b31_w: .db 1		  ;; Ancho
   41E3 04                    7 		b31_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   41E4 00                    8 		b31_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   41E5 41                    9 		b31_xi: .db 65		  ;; x Actual 
   41E6 32                   10 		b31_yi: .db 50		  ;; y Actual
   41E7 2D                   11 		b31_l: .db 45		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   41E8 2D                   12 		b31_li: .db 45		  ;; l inicial
   41E9 00                   13 		b31_r: .db 0		  ;; Retardo de salida de la bala
   41EA 01                   14 		b31_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   41EB FF                   15 		b31_random: .db -1 		;, Esta variable no sirve para nada
   41EC 16                   16 		b31_sprite: .db 22	
   41ED 00                   17 		b31_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
   41EE                      85 defineBala b32, 65, 50, 1, 4, 45, 20, 1, 22, 0 		;; NIVEL 9
                              1 
   0152                       2   	b32_datos:
                              3 
   41EE 41                    4 		b32_x: .db 65		  ;; x Inicial
   41EF 32                    5 		b32_y: .db 50		  ;; y Inicial
   41F0 01                    6 		b32_w: .db 1		  ;; Ancho
   41F1 04                    7 		b32_h: .db 4		  ;; Alto de enemigo 8 lineas (8 bytes)
   41F2 00                    8 		b32_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
   41F3 41                    9 		b32_xi: .db 65		  ;; x Actual 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   41F4 32                   10 		b32_yi: .db 50		  ;; y Actual
   41F5 2D                   11 		b32_l: .db 45		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
   41F6 2D                   12 		b32_li: .db 45		  ;; l inicial
   41F7 14                   13 		b32_r: .db 20		  ;; Retardo de salida de la bala
   41F8 01                   14 		b32_dir: .db 1	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
   41F9 FF                   15 		b32_random: .db -1 		;, Esta variable no sirve para nada
   41FA 16                   16 		b32_sprite: .db 22	
   41FB 00                   17 		b32_ralt: .db 0	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero
                             18 
                             19 
                             86 
                             87 
                             88 
                             89 ;;=====================================================================
                             90 ;;=====================================================================
                             91 ;;FUNCIONES PUBLICAS
                             92 ;;=====================================================================
                             93 ;;=====================================================================
                             94 
                             95 ;;==============================================================================
                             96 ;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE LA BALA 1
                             97 ;; MODIFICA : IX
                             98 ;; DEVUELVE : 
                             99 ;;		IX: Puntero a los datos del enemigo
                            100 ;;===============================================================================
   41FC                     101 b1_getPtrIX::
                            102 
   41FC DD 21 9E 40   [14]  103 	ld ix, #b1_datos
                            104 
   4200 C9            [10]  105 	ret
                            106 
   4201                     107 b1_getPtrIY::
                            108 
   4201 FD 21 9E 40   [14]  109 	ld iy, #b1_datos
                            110 
   4205 C9            [10]  111 	ret
                            112 
   4206                     113 b2_getPtrIX::
                            114 
   4206 DD 21 AC 40   [14]  115 	ld ix, #b2_datos
                            116 
   420A C9            [10]  117 	ret
                            118 
   420B                     119 b2_getPtrIY::
                            120 
   420B FD 21 AC 40   [14]  121 	ld iy, #b2_datos
                            122 
   420F C9            [10]  123 	ret
                            124 
   4210                     125 b3_getPtrIX::
                            126 
   4210 DD 21 BA 40   [14]  127 	ld ix, #b3_datos
                            128 
   4214 C9            [10]  129 	ret
                            130 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   4215                     131 b3_getPtrIY::
                            132 
   4215 FD 21 BA 40   [14]  133 	ld iy, #b3_datos
                            134 
   4219 C9            [10]  135 	ret
   421A                     136 b9_getPtrIX::
                            137 
   421A DD 21 C8 40   [14]  138 	ld ix, #b9_datos
                            139 
   421E C9            [10]  140 	ret
                            141 
   421F                     142 b9_getPtrIY::
                            143 
   421F FD 21 C8 40   [14]  144 	ld iy, #b9_datos
                            145 
   4223 C9            [10]  146 	ret
   4224                     147 b10_getPtrIX::
                            148 
   4224 DD 21 D6 40   [14]  149 	ld ix, #b10_datos
                            150 
   4228 C9            [10]  151 	ret
                            152 
   4229                     153 b10_getPtrIY::
                            154 
   4229 FD 21 D6 40   [14]  155 	ld iy, #b10_datos
                            156 
   422D C9            [10]  157 	ret
   422E                     158 b11_getPtrIX::
                            159 
   422E DD 21 E4 40   [14]  160 	ld ix, #b11_datos
                            161 
   4232 C9            [10]  162 	ret
                            163 
   4233                     164 b11_getPtrIY::
                            165 
   4233 FD 21 E4 40   [14]  166 	ld iy, #b11_datos
                            167 
   4237 C9            [10]  168 	ret
   4238                     169 b12_getPtrIX::
                            170 
   4238 DD 21 F2 40   [14]  171 	ld ix, #b12_datos
                            172 
   423C C9            [10]  173 	ret
                            174 
   423D                     175 b12_getPtrIY::
                            176 
   423D FD 21 F2 40   [14]  177 	ld iy, #b12_datos
                            178 
   4241 C9            [10]  179 	ret
   4242                     180 b13_getPtrIX::
                            181 
   4242 DD 21 00 41   [14]  182 	ld ix, #b13_datos
                            183 
   4246 C9            [10]  184 	ret
                            185 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   4247                     186 b13_getPtrIY::
                            187 
   4247 FD 21 00 41   [14]  188 	ld iy, #b13_datos
                            189 
   424B C9            [10]  190 	ret
                            191 
   424C                     192 b14_getPtrIX::
                            193 
   424C DD 21 0E 41   [14]  194 	ld ix, #b14_datos
                            195 
   4250 C9            [10]  196 	ret
                            197 
   4251                     198 b14_getPtrIY::
                            199 
   4251 FD 21 0E 41   [14]  200 	ld iy, #b14_datos
                            201 
   4255 C9            [10]  202 	ret
                            203 
   4256                     204 b15_getPtrIX::
                            205 
   4256 DD 21 1C 41   [14]  206 	ld ix, #b15_datos
                            207 
   425A C9            [10]  208 	ret
                            209 
   425B                     210 b15_getPtrIY::
                            211 
   425B FD 21 1C 41   [14]  212 	ld iy, #b15_datos
                            213 
   425F C9            [10]  214 	ret
                            215 
   4260                     216 b16_getPtrIX::
                            217 
   4260 DD 21 2A 41   [14]  218 	ld ix, #b16_datos
                            219 
   4264 C9            [10]  220 	ret
                            221 
   4265                     222 b16_getPtrIY::
                            223 
   4265 FD 21 2A 41   [14]  224 	ld iy, #b16_datos
                            225 
   4269 C9            [10]  226 	ret
                            227 
   426A                     228 b20_getPtrIX::
                            229 
   426A DD 21 38 41   [14]  230 	ld ix, #b20_datos
                            231 
   426E C9            [10]  232 	ret
                            233 
   426F                     234 b20_getPtrIY::
                            235 
   426F FD 21 38 41   [14]  236 	ld iy, #b20_datos
                            237 
   4273 C9            [10]  238 	ret
                            239 
   4274                     240 b21_getPtrIX::
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



                            241 
   4274 DD 21 46 41   [14]  242 	ld ix, #b21_datos
                            243 
   4278 C9            [10]  244 	ret
                            245 
   4279                     246 b21_getPtrIY::
                            247 
   4279 FD 21 46 41   [14]  248 	ld iy, #b21_datos
                            249 
   427D C9            [10]  250 	ret
                            251 
   427E                     252 b22_getPtrIX::
                            253 
   427E DD 21 54 41   [14]  254 	ld ix, #b22_datos
                            255 
   4282 C9            [10]  256 	ret
                            257 
   4283                     258 b22_getPtrIY::
                            259 
   4283 FD 21 54 41   [14]  260 	ld iy, #b22_datos
                            261 
   4287 C9            [10]  262 	ret
                            263 
   4288                     264 b23_getPtrIX::
                            265 
   4288 DD 21 62 41   [14]  266 	ld ix, #b23_datos
                            267 
   428C C9            [10]  268 	ret
                            269 
   428D                     270 b23_getPtrIY::
                            271 
   428D FD 21 62 41   [14]  272 	ld iy, #b23_datos
                            273 
   4291 C9            [10]  274 	ret
                            275 
   4292                     276 b24_getPtrIX::
                            277 
   4292 DD 21 70 41   [14]  278 	ld ix, #b24_datos
                            279 
   4296 C9            [10]  280 	ret
                            281 
   4297                     282 b24_getPtrIY::
                            283 
   4297 FD 21 70 41   [14]  284 	ld iy, #b24_datos
                            285 
   429B C9            [10]  286 	ret
   429C                     287 b25_getPtrIX::
                            288 
   429C DD 21 7E 41   [14]  289 	ld ix, #b25_datos
                            290 
   42A0 C9            [10]  291 	ret
                            292 
   42A1                     293 b25_getPtrIY::
                            294 
   42A1 FD 21 7E 41   [14]  295 	ld iy, #b25_datos
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



                            296 
   42A5 C9            [10]  297 	ret
                            298 
   42A6                     299 b26_getPtrIX::
                            300 
   42A6 DD 21 8C 41   [14]  301 	ld ix, #b26_datos
                            302 
   42AA C9            [10]  303 	ret
                            304 
   42AB                     305 b26_getPtrIY::
                            306 
   42AB FD 21 8C 41   [14]  307 	ld iy, #b26_datos
                            308 
   42AF C9            [10]  309 	ret
   42B0                     310 b27_getPtrIX::
                            311 
   42B0 DD 21 A8 41   [14]  312 	ld ix, #b27_datos
                            313 
   42B4 C9            [10]  314 	ret
                            315 
   42B5                     316 b27_getPtrIY::
                            317 
   42B5 FD 21 A8 41   [14]  318 	ld iy, #b27_datos
                            319 
   42B9 C9            [10]  320 	ret
   42BA                     321 b28_getPtrIX::
                            322 
   42BA DD 21 B6 41   [14]  323 	ld ix, #b28_datos
                            324 
   42BE C9            [10]  325 	ret
                            326 
   42BF                     327 b28_getPtrIY::
                            328 
   42BF FD 21 B6 41   [14]  329 	ld iy, #b28_datos
                            330 
   42C3 C9            [10]  331 	ret
   42C4                     332 b29_getPtrIX::
                            333 
   42C4 DD 21 D2 41   [14]  334 	ld ix, #b29_datos
                            335 
   42C8 C9            [10]  336 	ret
                            337 
   42C9                     338 b29_getPtrIY::
                            339 
   42C9 FD 21 D2 41   [14]  340 	ld iy, #b29_datos
                            341 
   42CD C9            [10]  342 	ret
   42CE                     343 b30_getPtrIX::
                            344 
   42CE DD 21 C4 41   [14]  345 	ld ix, #b30_datos
                            346 
   42D2 C9            [10]  347 	ret
                            348 
   42D3                     349 b30_getPtrIY::
                            350 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



   42D3 FD 21 C4 41   [14]  351 	ld iy, #b30_datos
                            352 
   42D7 C9            [10]  353 	ret
                            354 
   42D8                     355 b31_getPtrIX::
                            356 
   42D8 DD 21 E0 41   [14]  357 	ld ix, #b31_datos
                            358 
   42DC C9            [10]  359 	ret
                            360 
   42DD                     361 b31_getPtrIY::
                            362 
   42DD FD 21 E0 41   [14]  363 	ld iy, #b31_datos
                            364 
   42E1 C9            [10]  365 	ret
                            366 
   42E2                     367 b32_getPtrIX::
                            368 
   42E2 DD 21 EE 41   [14]  369 	ld ix, #b32_datos
                            370 
   42E6 C9            [10]  371 	ret
                            372 
   42E7                     373 b32_getPtrIY::
                            374 
   42E7 FD 21 EE 41   [14]  375 	ld iy, #b32_datos
                            376 
   42EB C9            [10]  377 	ret
                            378 
   42EC                     379 b33_getPtrIX::
                            380 
   42EC DD 21 9A 41   [14]  381 	ld ix, #b33_datos
                            382 
   42F0 C9            [10]  383 	ret
                            384 
   42F1                     385 b33_getPtrIY::
                            386 
   42F1 FD 21 9A 41   [14]  387 	ld iy, #b33_datos
                            388 
   42F5 C9            [10]  389 	ret
                            390 
                            391 
   42F6                     392 minuevaposicion::
                            393 
   42F6 DD 7E 00      [19]  394 	ld	a, 0(ix)
   42F9 32 9C 40      [13]  395 	ld 	(newposX), a
   42FC DD 7E 01      [19]  396 	ld	a, 1(ix)
   42FF 32 9D 40      [13]  397 	ld 	(newposY), a
                            398 
   4302 C9            [10]  399 	ret
                            400 
                            401 ;;==============================================================================
                            402 ;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE LA BALA
                            403 ;; MODIFICA : 	A,
                            404 ;; INPUT:  	IX: Puntero con los datos de la bala a modificar.
                            405 ;; DEVUELVE : 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



                            406 ;;===============================================================================
                            407 
   4303                     408 bala_update::
                            409 
   4303 FD 35 04      [23]  410 	dec	b_col(iy)
   4306 20 18         [12]  411 	jr	nz, nocolision 
                            412 
   4308 DD 7E 0D      [19]  413 	ld 	a, b_ralt(ix)	;; retardo (actual) = retardo (alternativo)
   430B DD 77 09      [19]  414 	ld 	b_r(ix), a
   430E DD 7E 05      [19]  415 	ld 	a, b_xi(ix)
   4311 DD 77 00      [19]  416 	ld	b_x(ix), a 	;; x (actual) = xi (inicial)
   4314 DD 7E 06      [19]  417 	ld 	a, b_yi(ix)
   4317 DD 77 01      [19]  418 	ld	b_y(ix), a 	;; y (actual) = yi (inicial)
   431A DD 7E 08      [19]  419 	ld 	a, b_li(ix)
   431D DD 77 07      [19]  420 	ld	b_l(ix), a 	;;
                            421 
   4320                     422 	nocolision:
   4320 DD 7E 0A      [19]  423 	ld a, b_dir(ix)
   4323 FE 01         [ 7]  424 	cp #1
   4325 28 39         [12]  425 	jr z, izq
                            426 
                            427 	;; DERECHA
   4327 3A 9C 40      [13]  428 	ld 	a, (newposX)
   432A 3C            [ 4]  429 	inc a
   432B 3C            [ 4]  430 	inc a
   432C 3C            [ 4]  431 	inc a
                            432 
   432D DD 77 05      [19]  433 	ld  	b_xi(ix), a
   4330 3A 9D 40      [13]  434 	ld	a, (newposY)
   4333 3C            [ 4]  435 	inc a
   4334 3C            [ 4]  436 	inc a
   4335 3C            [ 4]  437 	inc a
   4336 DD 77 06      [19]  438 	ld	b_yi(ix), a
                            439 
                            440 	;; Move Obsacle to the left
   4339 DD 7E 09      [19]  441 	ld 	a, b_r(ix)
   433C FE 00         [ 7]  442 	cp  	#0
   433E 28 05         [12]  443 	jr 	z, mueve1
                            444 
   4340 DD 35 09      [23]  445 	dec 	b_r(ix)
   4343 20 1A         [12]  446 	jr	nz, not_restart_x1
                            447 
   4345                     448 	mueve1:
                            449 	
   4345 DD 34 00      [23]  450 	inc	b_x(ix)			;; b_xa --
   4348 DD 35 07      [23]  451 	dec 	b_l(ix)			;; b_la --
   434B 20 12         [12]  452 	jr 	nz, not_restart_x1	;; If (Obs_x == 0)then not_restart_x
                            453 	
                            454 		;; Restart_x when it is 0
   434D DD 7E 05      [19]  455 		ld 	a, b_xi(ix)
   4350 DD 77 00      [19]  456 		ld	b_x(ix), a 	;; x (actual) = xi (inicial)
   4353 DD 7E 06      [19]  457 		ld 	a, b_yi(ix)
   4356 DD 77 01      [19]  458 		ld	b_y(ix), a 	;; y (actual) = yi (inicial)
   4359 DD 7E 08      [19]  459 		ld 	a, b_li(ix)
   435C DD 77 07      [19]  460 		ld	b_l(ix), a 	;;
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



                            461 
   435F                     462 	not_restart_x1:
                            463 
   435F C9            [10]  464 	ret
                            465 	
                            466 
   4360                     467 	izq:
                            468 	;; IZQUIERDA
   4360 3A 9C 40      [13]  469 	ld 	a, (newposX)
   4363 3D            [ 4]  470 	dec	a
   4364 3D            [ 4]  471 	dec	a
   4365 DD 77 05      [19]  472 	ld  	b_xi(ix), a
   4368 3A 9D 40      [13]  473 	ld	a, (newposY)
   436B 3C            [ 4]  474 	inc a
   436C 3C            [ 4]  475 	inc a
   436D 3C            [ 4]  476 	inc a
   436E DD 77 06      [19]  477 	ld	b_yi(ix), a
                            478 
                            479 	;; Move Obsacle to the left
   4371 DD 7E 09      [19]  480 	ld 	a, b_r(ix)
   4374 FE 00         [ 7]  481 	cp  	#0
   4376 28 05         [12]  482 	jr 	z, mueve2
                            483 
   4378 DD 35 09      [23]  484 	dec 	b_r(ix)
   437B 20 1A         [12]  485 	jr	nz, not_restart_x2
                            486 
   437D                     487 	mueve2:
                            488 	
   437D DD 35 00      [23]  489 	dec	b_x(ix)			;; b_xa --
   4380 DD 35 07      [23]  490 	dec 	b_l(ix)			;; b_la --
   4383 20 12         [12]  491 	jr 	nz, not_restart_x2	;; If (Obs_x == 0)then not_restart_x
                            492 	
                            493 		;; Restart_x when it is 0
   4385 DD 7E 05      [19]  494 		ld 	a, b_xi(ix)
   4388 DD 77 00      [19]  495 		ld	b_x(ix), a 	;; x (actual) = xi (inicial)
   438B DD 7E 06      [19]  496 		ld 	a, b_yi(ix)
   438E DD 77 01      [19]  497 		ld	b_y(ix), a 	;; y (actual) = yi (inicial)
   4391 DD 7E 08      [19]  498 		ld 	a, b_li(ix)
   4394 DD 77 07      [19]  499 		ld	b_l(ix), a 	;;
                            500 
   4397                     501 	not_restart_x2:
                            502 
   4397 C9            [10]  503 	ret
                            504 
