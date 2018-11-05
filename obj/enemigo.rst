ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .area _CODE
                              2 
                              3 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                              4 .include "protagonista.h.s"
                              1 ;;====================================
                              2 ;; FUNCIONES PUBLICAS DE PROTAGONISTA
                              3 ;;====================================
                              4 
                              5 .globl prota_getPtrIX
                              6 .globl prota_update
                              7 .globl checkColision
                              8 .globl	checkMenu
                              9 .globl	spriteAcorona
                             10 .globl	spriteAnormal
                             11 
                             12 
                     0000    13 .equ pos_x, 0
                     0001    14 .equ pos_y, 1
                     0002    15 .equ ancho, 2
                     0003    16 .equ alto, 3
                     0004    17 .equ colision, 4
                     0005    18 .equ jump, 5
                     0006    19 .equ down, 6	
                     0007    20 .equ ataqueIzq, 7
                     0008    21 .equ ataqueD, 8
                     0009    22 .equ moveD, 9
                     000A    23 .equ moveI, 10
                     000B    24 .equ nivel, 11
                     000C    25 .equ sprite, 12
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                              5 ;;======================================================================
                              6 ;;======================================================================
                              7 ;; DATOS PRIVADOS
                              8 ;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
                              9 ;;======================================================================
                             10 ;;======================================================================
                             11 
                             12 
                             13 .macro defineEnemy name, x, y, w, h, l, s
                             14 
                             15   name'_datos:
                             16 
                             17 		name'_x: .db x 			;; Pos x
                             18 		name'_y: .db y			;; Pos y
                             19 		name'_w: .db w 			;; Ancho
                             20 		name'_h: .db h		  	;; Alto de enemigo 8 lineas (8 bytes)
                             21 		name'_colision: .db -1 		;; Para saber si ha colisionado o no
                             22 		name'_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
                             23 		name'_xi: .db x		 	;; x Actual 
                             24 		name'_yi: .db y		 	;; y Actual
                             25 		name'_l: .db l		 	;; Estado de longitude de recorrido	
                             26 		name'_li: .db l		 	;; Longitud de recorrido inicial
                             27 		name'_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
                             28 		name'_random: .db -1 		;, Esta variable no sirve para nada
                             29 		name'_sprite: .db s
                             30 	.endm
                             31 
                     0000    32 .equ	enem_x, 	0
                     0001    33 .equ	enem_y, 	1
                     0002    34 .equ	enem_w, 	2
                     0003    35 .equ	enem_h, 	3
                     0004    36 .equ	enem_col, 	4	
                     0005    37 .equ 	enem_mue, 	5
                     0006    38 .equ	enem_xi, 	6
                     0007    39 .equ	enem_yi, 	7
                     0008    40 .equ	enem_l, 	8
                     0009    41 .equ	enem_li, 	9
                     000A    42 .equ	enem_dir,	10
                     000B    43 .equ 	enem_random, 	11
                     000C    44 .equ 	enem_sprite, 	12
                             45 
   4A2B                      46 defineEnemy enemigo1, 65, 112, 2, 12, 0, 20 	;; NIVEL 1
                              1 
   0000                       2   enemigo1_datos:
                              3 
   4A2B 41                    4 		enemigo1_x: .db 65 			;; Pos x
   4A2C 70                    5 		enemigo1_y: .db 112			;; Pos y
   4A2D 02                    6 		enemigo1_w: .db 2 			;; Ancho
   4A2E 0C                    7 		enemigo1_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4A2F FF                    8 		enemigo1_colision: .db -1 		;; Para saber si ha colisionado o no
   4A30 FF                    9 		enemigo1_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4A31 41                   10 		enemigo1_xi: .db 65		 	;; x Actual 
   4A32 70                   11 		enemigo1_yi: .db 112		 	;; y Actual
   4A33 00                   12 		enemigo1_l: .db 0		 	;; Estado de longitude de recorrido	
   4A34 00                   13 		enemigo1_li: .db 0		 	;; Longitud de recorrido inicial
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



   4A35 01                   14 		enemigo1_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4A36 FF                   15 		enemigo1_random: .db -1 		;, Esta variable no sirve para nada
   4A37 14                   16 		enemigo1_sprite: .db 20
                             47 
   4A38                      48 defineEnemy enemigo2, 80-2, 112, 2, 12, 0, 20      ;; NIVEL 2
                              1 
   000D                       2   enemigo2_datos:
                              3 
   4A38 4E                    4 		enemigo2_x: .db 80-2 			;; Pos x
   4A39 70                    5 		enemigo2_y: .db 112			;; Pos y
   4A3A 02                    6 		enemigo2_w: .db 2 			;; Ancho
   4A3B 0C                    7 		enemigo2_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4A3C FF                    8 		enemigo2_colision: .db -1 		;; Para saber si ha colisionado o no
   4A3D FF                    9 		enemigo2_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4A3E 4E                   10 		enemigo2_xi: .db 80-2		 	;; x Actual 
   4A3F 70                   11 		enemigo2_yi: .db 112		 	;; y Actual
   4A40 00                   12 		enemigo2_l: .db 0		 	;; Estado de longitude de recorrido	
   4A41 00                   13 		enemigo2_li: .db 0		 	;; Longitud de recorrido inicial
   4A42 01                   14 		enemigo2_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4A43 FF                   15 		enemigo2_random: .db -1 		;, Esta variable no sirve para nada
   4A44 14                   16 		enemigo2_sprite: .db 20
   4A45                      49 defineEnemy enemigo3, 9, 80, 2, 12, 0, 21	   ;; NIVEL 2
                              1 
   001A                       2   enemigo3_datos:
                              3 
   4A45 09                    4 		enemigo3_x: .db 9 			;; Pos x
   4A46 50                    5 		enemigo3_y: .db 80			;; Pos y
   4A47 02                    6 		enemigo3_w: .db 2 			;; Ancho
   4A48 0C                    7 		enemigo3_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4A49 FF                    8 		enemigo3_colision: .db -1 		;; Para saber si ha colisionado o no
   4A4A FF                    9 		enemigo3_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4A4B 09                   10 		enemigo3_xi: .db 9		 	;; x Actual 
   4A4C 50                   11 		enemigo3_yi: .db 80		 	;; y Actual
   4A4D 00                   12 		enemigo3_l: .db 0		 	;; Estado de longitude de recorrido	
   4A4E 00                   13 		enemigo3_li: .db 0		 	;; Longitud de recorrido inicial
   4A4F 01                   14 		enemigo3_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4A50 FF                   15 		enemigo3_random: .db -1 		;, Esta variable no sirve para nada
   4A51 15                   16 		enemigo3_sprite: .db 21
                             50 
   4A52                      51 defineEnemy enemigo7, 66, 112, 2, 12, 0, 20         ;; NIVEL 3
                              1 
   0027                       2   enemigo7_datos:
                              3 
   4A52 42                    4 		enemigo7_x: .db 66 			;; Pos x
   4A53 70                    5 		enemigo7_y: .db 112			;; Pos y
   4A54 02                    6 		enemigo7_w: .db 2 			;; Ancho
   4A55 0C                    7 		enemigo7_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4A56 FF                    8 		enemigo7_colision: .db -1 		;; Para saber si ha colisionado o no
   4A57 FF                    9 		enemigo7_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4A58 42                   10 		enemigo7_xi: .db 66		 	;; x Actual 
   4A59 70                   11 		enemigo7_yi: .db 112		 	;; y Actual
   4A5A 00                   12 		enemigo7_l: .db 0		 	;; Estado de longitude de recorrido	
   4A5B 00                   13 		enemigo7_li: .db 0		 	;; Longitud de recorrido inicial
   4A5C 01                   14 		enemigo7_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4A5D FF                   15 		enemigo7_random: .db -1 		;, Esta variable no sirve para nada
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



   4A5E 14                   16 		enemigo7_sprite: .db 20
   4A5F                      52 defineEnemy enemigo8, 20, 80, 2, 12, 0, 21           ;; NIVEL 3
                              1 
   0034                       2   enemigo8_datos:
                              3 
   4A5F 14                    4 		enemigo8_x: .db 20 			;; Pos x
   4A60 50                    5 		enemigo8_y: .db 80			;; Pos y
   4A61 02                    6 		enemigo8_w: .db 2 			;; Ancho
   4A62 0C                    7 		enemigo8_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4A63 FF                    8 		enemigo8_colision: .db -1 		;; Para saber si ha colisionado o no
   4A64 FF                    9 		enemigo8_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4A65 14                   10 		enemigo8_xi: .db 20		 	;; x Actual 
   4A66 50                   11 		enemigo8_yi: .db 80		 	;; y Actual
   4A67 00                   12 		enemigo8_l: .db 0		 	;; Estado de longitude de recorrido	
   4A68 00                   13 		enemigo8_li: .db 0		 	;; Longitud de recorrido inicial
   4A69 01                   14 		enemigo8_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4A6A FF                   15 		enemigo8_random: .db -1 		;, Esta variable no sirve para nada
   4A6B 15                   16 		enemigo8_sprite: .db 21
   4A6C                      53 defineEnemy enemigo9, 65, 52, 2, 12, 40, 20         ;; NIVEL 3
                              1 
   0041                       2   enemigo9_datos:
                              3 
   4A6C 41                    4 		enemigo9_x: .db 65 			;; Pos x
   4A6D 34                    5 		enemigo9_y: .db 52			;; Pos y
   4A6E 02                    6 		enemigo9_w: .db 2 			;; Ancho
   4A6F 0C                    7 		enemigo9_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4A70 FF                    8 		enemigo9_colision: .db -1 		;; Para saber si ha colisionado o no
   4A71 FF                    9 		enemigo9_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4A72 41                   10 		enemigo9_xi: .db 65		 	;; x Actual 
   4A73 34                   11 		enemigo9_yi: .db 52		 	;; y Actual
   4A74 28                   12 		enemigo9_l: .db 40		 	;; Estado de longitude de recorrido	
   4A75 28                   13 		enemigo9_li: .db 40		 	;; Longitud de recorrido inicial
   4A76 01                   14 		enemigo9_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4A77 FF                   15 		enemigo9_random: .db -1 		;, Esta variable no sirve para nada
   4A78 14                   16 		enemigo9_sprite: .db 20
                             54 
   4A79                      55 defineEnemy enemigo10, 70, 112, 2, 12, 0, 20        ;; NIVEL 4
                              1 
   004E                       2   enemigo10_datos:
                              3 
   4A79 46                    4 		enemigo10_x: .db 70 			;; Pos x
   4A7A 70                    5 		enemigo10_y: .db 112			;; Pos y
   4A7B 02                    6 		enemigo10_w: .db 2 			;; Ancho
   4A7C 0C                    7 		enemigo10_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4A7D FF                    8 		enemigo10_colision: .db -1 		;; Para saber si ha colisionado o no
   4A7E FF                    9 		enemigo10_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4A7F 46                   10 		enemigo10_xi: .db 70		 	;; x Actual 
   4A80 70                   11 		enemigo10_yi: .db 112		 	;; y Actual
   4A81 00                   12 		enemigo10_l: .db 0		 	;; Estado de longitude de recorrido	
   4A82 00                   13 		enemigo10_li: .db 0		 	;; Longitud de recorrido inicial
   4A83 01                   14 		enemigo10_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4A84 FF                   15 		enemigo10_random: .db -1 		;, Esta variable no sirve para nada
   4A85 14                   16 		enemigo10_sprite: .db 20
                             56 
   4A86                      57 defineEnemy enemigo11, 80-2, 112, 2, 12, 0, 20      ;; NIVEL 5
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



                              1 
   005B                       2   enemigo11_datos:
                              3 
   4A86 4E                    4 		enemigo11_x: .db 80-2 			;; Pos x
   4A87 70                    5 		enemigo11_y: .db 112			;; Pos y
   4A88 02                    6 		enemigo11_w: .db 2 			;; Ancho
   4A89 0C                    7 		enemigo11_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4A8A FF                    8 		enemigo11_colision: .db -1 		;; Para saber si ha colisionado o no
   4A8B FF                    9 		enemigo11_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4A8C 4E                   10 		enemigo11_xi: .db 80-2		 	;; x Actual 
   4A8D 70                   11 		enemigo11_yi: .db 112		 	;; y Actual
   4A8E 00                   12 		enemigo11_l: .db 0		 	;; Estado de longitude de recorrido	
   4A8F 00                   13 		enemigo11_li: .db 0		 	;; Longitud de recorrido inicial
   4A90 01                   14 		enemigo11_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4A91 FF                   15 		enemigo11_random: .db -1 		;, Esta variable no sirve para nada
   4A92 14                   16 		enemigo11_sprite: .db 20
   4A93                      58 defineEnemy enemigo12, 9, 80, 2, 12, 0, 21	    ;; NIVEL 5
                              1 
   0068                       2   enemigo12_datos:
                              3 
   4A93 09                    4 		enemigo12_x: .db 9 			;; Pos x
   4A94 50                    5 		enemigo12_y: .db 80			;; Pos y
   4A95 02                    6 		enemigo12_w: .db 2 			;; Ancho
   4A96 0C                    7 		enemigo12_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4A97 FF                    8 		enemigo12_colision: .db -1 		;; Para saber si ha colisionado o no
   4A98 FF                    9 		enemigo12_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4A99 09                   10 		enemigo12_xi: .db 9		 	;; x Actual 
   4A9A 50                   11 		enemigo12_yi: .db 80		 	;; y Actual
   4A9B 00                   12 		enemigo12_l: .db 0		 	;; Estado de longitude de recorrido	
   4A9C 00                   13 		enemigo12_li: .db 0		 	;; Longitud de recorrido inicial
   4A9D 01                   14 		enemigo12_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4A9E FF                   15 		enemigo12_random: .db -1 		;, Esta variable no sirve para nada
   4A9F 15                   16 		enemigo12_sprite: .db 21
                             59 
   4AA0                      60 defineEnemy enemigo16, 65, 110, 2, 12, 108, 20      ;; NIVEL 6
                              1 
   0075                       2   enemigo16_datos:
                              3 
   4AA0 41                    4 		enemigo16_x: .db 65 			;; Pos x
   4AA1 6E                    5 		enemigo16_y: .db 110			;; Pos y
   4AA2 02                    6 		enemigo16_w: .db 2 			;; Ancho
   4AA3 0C                    7 		enemigo16_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4AA4 FF                    8 		enemigo16_colision: .db -1 		;; Para saber si ha colisionado o no
   4AA5 FF                    9 		enemigo16_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4AA6 41                   10 		enemigo16_xi: .db 65		 	;; x Actual 
   4AA7 6E                   11 		enemigo16_yi: .db 110		 	;; y Actual
   4AA8 6C                   12 		enemigo16_l: .db 108		 	;; Estado de longitude de recorrido	
   4AA9 6C                   13 		enemigo16_li: .db 108		 	;; Longitud de recorrido inicial
   4AAA 01                   14 		enemigo16_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4AAB FF                   15 		enemigo16_random: .db -1 		;, Esta variable no sirve para nada
   4AAC 14                   16 		enemigo16_sprite: .db 20
                             61 
   4AAD                      62 defineEnemy enemigo17, 65, 112, 2, 12, 0, 20       ;; NIVEL 7
                              1 
   0082                       2   enemigo17_datos:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



                              3 
   4AAD 41                    4 		enemigo17_x: .db 65 			;; Pos x
   4AAE 70                    5 		enemigo17_y: .db 112			;; Pos y
   4AAF 02                    6 		enemigo17_w: .db 2 			;; Ancho
   4AB0 0C                    7 		enemigo17_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4AB1 FF                    8 		enemigo17_colision: .db -1 		;; Para saber si ha colisionado o no
   4AB2 FF                    9 		enemigo17_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4AB3 41                   10 		enemigo17_xi: .db 65		 	;; x Actual 
   4AB4 70                   11 		enemigo17_yi: .db 112		 	;; y Actual
   4AB5 00                   12 		enemigo17_l: .db 0		 	;; Estado de longitude de recorrido	
   4AB6 00                   13 		enemigo17_li: .db 0		 	;; Longitud de recorrido inicial
   4AB7 01                   14 		enemigo17_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4AB8 FF                   15 		enemigo17_random: .db -1 		;, Esta variable no sirve para nada
   4AB9 14                   16 		enemigo17_sprite: .db 20
                             63 
   4ABA                      64 defineEnemy enemigo18, 66, 112, 2, 12, 0, 20       ;; NIVEL 8
                              1 
   008F                       2   enemigo18_datos:
                              3 
   4ABA 42                    4 		enemigo18_x: .db 66 			;; Pos x
   4ABB 70                    5 		enemigo18_y: .db 112			;; Pos y
   4ABC 02                    6 		enemigo18_w: .db 2 			;; Ancho
   4ABD 0C                    7 		enemigo18_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4ABE FF                    8 		enemigo18_colision: .db -1 		;; Para saber si ha colisionado o no
   4ABF FF                    9 		enemigo18_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4AC0 42                   10 		enemigo18_xi: .db 66		 	;; x Actual 
   4AC1 70                   11 		enemigo18_yi: .db 112		 	;; y Actual
   4AC2 00                   12 		enemigo18_l: .db 0		 	;; Estado de longitude de recorrido	
   4AC3 00                   13 		enemigo18_li: .db 0		 	;; Longitud de recorrido inicial
   4AC4 01                   14 		enemigo18_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4AC5 FF                   15 		enemigo18_random: .db -1 		;, Esta variable no sirve para nada
   4AC6 14                   16 		enemigo18_sprite: .db 20
   4AC7                      65 defineEnemy enemigo19, 9, 52, 2, 12, 40, 21       ;; NIVEL 8
                              1 
   009C                       2   enemigo19_datos:
                              3 
   4AC7 09                    4 		enemigo19_x: .db 9 			;; Pos x
   4AC8 34                    5 		enemigo19_y: .db 52			;; Pos y
   4AC9 02                    6 		enemigo19_w: .db 2 			;; Ancho
   4ACA 0C                    7 		enemigo19_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4ACB FF                    8 		enemigo19_colision: .db -1 		;; Para saber si ha colisionado o no
   4ACC FF                    9 		enemigo19_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4ACD 09                   10 		enemigo19_xi: .db 9		 	;; x Actual 
   4ACE 34                   11 		enemigo19_yi: .db 52		 	;; y Actual
   4ACF 28                   12 		enemigo19_l: .db 40		 	;; Estado de longitude de recorrido	
   4AD0 28                   13 		enemigo19_li: .db 40		 	;; Longitud de recorrido inicial
   4AD1 01                   14 		enemigo19_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4AD2 FF                   15 		enemigo19_random: .db -1 		;, Esta variable no sirve para nada
   4AD3 15                   16 		enemigo19_sprite: .db 21
                             66 
   4AD4                      67 defineEnemy enemigo20, 65, 50, 2, 12, 35, 20       ;; NIVEL 9
                              1 
   00A9                       2   enemigo20_datos:
                              3 
   4AD4 41                    4 		enemigo20_x: .db 65 			;; Pos x
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   4AD5 32                    5 		enemigo20_y: .db 50			;; Pos y
   4AD6 02                    6 		enemigo20_w: .db 2 			;; Ancho
   4AD7 0C                    7 		enemigo20_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4AD8 FF                    8 		enemigo20_colision: .db -1 		;; Para saber si ha colisionado o no
   4AD9 FF                    9 		enemigo20_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4ADA 41                   10 		enemigo20_xi: .db 65		 	;; x Actual 
   4ADB 32                   11 		enemigo20_yi: .db 50		 	;; y Actual
   4ADC 23                   12 		enemigo20_l: .db 35		 	;; Estado de longitude de recorrido	
   4ADD 23                   13 		enemigo20_li: .db 35		 	;; Longitud de recorrido inicial
   4ADE 01                   14 		enemigo20_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4ADF FF                   15 		enemigo20_random: .db -1 		;, Esta variable no sirve para nada
   4AE0 14                   16 		enemigo20_sprite: .db 20
   4AE1                      68 defineEnemy enemigo21, 9, 80, 2, 12, 50, 21       ;; NIVEL 9
                              1 
   00B6                       2   enemigo21_datos:
                              3 
   4AE1 09                    4 		enemigo21_x: .db 9 			;; Pos x
   4AE2 50                    5 		enemigo21_y: .db 80			;; Pos y
   4AE3 02                    6 		enemigo21_w: .db 2 			;; Ancho
   4AE4 0C                    7 		enemigo21_h: .db 12		  	;; Alto de enemigo 8 lineas (8 bytes)
   4AE5 FF                    8 		enemigo21_colision: .db -1 		;; Para saber si ha colisionado o no
   4AE6 FF                    9 		enemigo21_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
   4AE7 09                   10 		enemigo21_xi: .db 9		 	;; x Actual 
   4AE8 50                   11 		enemigo21_yi: .db 80		 	;; y Actual
   4AE9 32                   12 		enemigo21_l: .db 50		 	;; Estado de longitude de recorrido	
   4AEA 32                   13 		enemigo21_li: .db 50		 	;; Longitud de recorrido inicial
   4AEB 01                   14 		enemigo21_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
   4AEC FF                   15 		enemigo21_random: .db -1 		;, Esta variable no sirve para nada
   4AED 15                   16 		enemigo21_sprite: .db 21
                             69 
                             70 ;;=====================================================================
                             71 ;;=====================================================================
                             72 ;;FUNCIONES PUBLICAS
                             73 ;;=====================================================================
                             74 ;;=====================================================================
                             75 
                             76 ;;==============================================================================
                             77 ;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE ENEMIGO
                             78 ;; MODIFICA : IX
                             79 ;; DEVUELVE : 
                             80 ;;		IX: Puntero a los datos del enemigo
                             81 ;;===============================================================================
   4AEE                      82 enemigo1_getPtrIX::
                             83 
                             84 
   4AEE DD 21 2B 4A   [14]   85 	ld ix, #enemigo1_datos
                             86 
   4AF2 C9            [10]   87 	ret
                             88 
                             89 
                             90 
                             91 ;;============================================================================================
                             92 ;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IY PARA GUARDAR LOS DATOS DE ENEMIGO PARA LA COLISION
                             93 ;; MODIFICA : IX
                             94 ;; DEVUELVE : 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



                             95 ;;		IX: Puntero a los datos del enemigo
                             96 ;;============================================================================================
   4AF3                      97 enemigo1_getPtrIY::
                             98 
                             99 
   4AF3 FD 21 2B 4A   [14]  100 	ld iy, #enemigo1_datos
                            101 
   4AF7 C9            [10]  102 	ret
                            103 
                            104 
   4AF8                     105 enemigo2_getPtrIX::
                            106 
                            107 
   4AF8 DD 21 38 4A   [14]  108 	ld ix, #enemigo2_datos
                            109 
   4AFC C9            [10]  110 	ret
                            111 
   4AFD                     112 enemigo2_getPtrIY::
                            113 
                            114 
   4AFD FD 21 38 4A   [14]  115 	ld iy, #enemigo2_datos
                            116 
   4B01 C9            [10]  117 	ret
                            118 
                            119 
                            120 
   4B02                     121 enemigo3_getPtrIX::
                            122 
                            123 
   4B02 DD 21 45 4A   [14]  124 	ld ix, #enemigo3_datos
                            125 
   4B06 C9            [10]  126 	ret
                            127 
   4B07                     128 enemigo3_getPtrIY::
                            129 
                            130 
   4B07 FD 21 45 4A   [14]  131 	ld iy, #enemigo3_datos
                            132 
   4B0B C9            [10]  133 	ret
                            134 
   4B0C                     135 enemigo7_getPtrIX::
                            136 
                            137 
   4B0C DD 21 52 4A   [14]  138 	ld ix, #enemigo7_datos
                            139 
   4B10 C9            [10]  140 	ret
                            141 
                            142 
   4B11                     143 enemigo7_getPtrIY::
                            144 
                            145 
   4B11 FD 21 52 4A   [14]  146 	ld iy, #enemigo7_datos
                            147 
   4B15 C9            [10]  148 	ret
                            149 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   4B16                     150 enemigo8_getPtrIX::
                            151 
                            152 
   4B16 DD 21 5F 4A   [14]  153 	ld ix, #enemigo8_datos
                            154 
   4B1A C9            [10]  155 	ret
                            156 
                            157 
   4B1B                     158 enemigo8_getPtrIY::
                            159 
                            160 
   4B1B FD 21 5F 4A   [14]  161 	ld iy, #enemigo8_datos
                            162 
   4B1F C9            [10]  163 	ret
                            164 
   4B20                     165 enemigo9_getPtrIX::
                            166 
                            167 
   4B20 DD 21 6C 4A   [14]  168 	ld ix, #enemigo9_datos
                            169 
   4B24 C9            [10]  170 	ret
                            171 
                            172 
   4B25                     173 enemigo9_getPtrIY::
                            174 
                            175 
   4B25 FD 21 6C 4A   [14]  176 	ld iy, #enemigo9_datos
                            177 
   4B29 C9            [10]  178 	ret
                            179 
   4B2A                     180 enemigo10_getPtrIX::
                            181 
                            182 
   4B2A DD 21 79 4A   [14]  183 	ld ix, #enemigo10_datos
                            184 
   4B2E C9            [10]  185 	ret
                            186 
                            187 
   4B2F                     188 enemigo10_getPtrIY::
                            189 
                            190 
   4B2F FD 21 79 4A   [14]  191 	ld iy, #enemigo10_datos
                            192 
   4B33 C9            [10]  193 	ret
                            194 
   4B34                     195 enemigo11_getPtrIX::
                            196 
                            197 
   4B34 DD 21 86 4A   [14]  198 	ld ix, #enemigo11_datos
                            199 
   4B38 C9            [10]  200 	ret
                            201 
                            202 
   4B39                     203 enemigo11_getPtrIY::
                            204 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



                            205 
   4B39 FD 21 86 4A   [14]  206 	ld iy, #enemigo11_datos
                            207 
   4B3D C9            [10]  208 	ret
                            209 
   4B3E                     210 enemigo12_getPtrIX::
                            211 
                            212 
   4B3E DD 21 93 4A   [14]  213 	ld ix, #enemigo12_datos
                            214 
   4B42 C9            [10]  215 	ret
                            216 
                            217 
   4B43                     218 enemigo12_getPtrIY::
                            219 
                            220 
   4B43 FD 21 93 4A   [14]  221 	ld iy, #enemigo12_datos
                            222 
   4B47 C9            [10]  223 	ret
                            224 
   4B48                     225 enemigo16_getPtrIX::
                            226 
                            227 
   4B48 DD 21 A0 4A   [14]  228 	ld ix, #enemigo16_datos
                            229 
   4B4C C9            [10]  230 	ret
                            231 
                            232 
   4B4D                     233 enemigo16_getPtrIY::
                            234 
                            235 
   4B4D FD 21 A0 4A   [14]  236 	ld iy, #enemigo16_datos
                            237 
   4B51 C9            [10]  238 	ret
                            239 
   4B52                     240 enemigo17_getPtrIX::
                            241 
                            242 
   4B52 DD 21 AD 4A   [14]  243 	ld ix, #enemigo17_datos
                            244 
   4B56 C9            [10]  245 	ret
                            246 
                            247 
   4B57                     248 enemigo17_getPtrIY::
                            249 
                            250 
   4B57 FD 21 AD 4A   [14]  251 	ld iy, #enemigo17_datos
                            252 
   4B5B C9            [10]  253 	ret
                            254 
   4B5C                     255 enemigo18_getPtrIX::
                            256 
                            257 
   4B5C DD 21 BA 4A   [14]  258 	ld ix, #enemigo18_datos
                            259 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   4B60 C9            [10]  260 	ret
                            261 
                            262 
   4B61                     263 enemigo18_getPtrIY::
                            264 
                            265 
   4B61 FD 21 BA 4A   [14]  266 	ld iy, #enemigo18_datos
                            267 
   4B65 C9            [10]  268 	ret
                            269 
   4B66                     270 enemigo19_getPtrIX::
                            271 
                            272 
   4B66 DD 21 C7 4A   [14]  273 	ld ix, #enemigo19_datos
                            274 
   4B6A C9            [10]  275 	ret
                            276 
                            277 
   4B6B                     278 enemigo19_getPtrIY::
                            279 
                            280 
   4B6B FD 21 C7 4A   [14]  281 	ld iy, #enemigo19_datos
                            282 
   4B6F C9            [10]  283 	ret
                            284 
   4B70                     285 enemigo20_getPtrIX::
                            286 
                            287 
   4B70 DD 21 D4 4A   [14]  288 	ld ix, #enemigo20_datos
                            289 
   4B74 C9            [10]  290 	ret
                            291 
                            292 
   4B75                     293 enemigo20_getPtrIY::
                            294 
                            295 
   4B75 FD 21 D4 4A   [14]  296 	ld iy, #enemigo20_datos
                            297 
   4B79 C9            [10]  298 	ret
                            299 
   4B7A                     300 enemigo21_getPtrIX::
                            301 
                            302 
   4B7A DD 21 E1 4A   [14]  303 	ld ix, #enemigo21_datos
                            304 
   4B7E C9            [10]  305 	ret
                            306 
                            307 
   4B7F                     308 enemigo21_getPtrIY::
                            309 
                            310 
   4B7F FD 21 E1 4A   [14]  311 	ld iy, #enemigo21_datos
                            312 
   4B83 C9            [10]  313 	ret
                            314 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



                            315 
                            316 
                            317 ;;=======================================
                            318 ;; UPDATE DE LOS ENEMIGOS QUE SE MUEVEN
                            319 ;; MODIFICA : AF, BC, DE, HL
                            320 ;;========================================
   4B84                     321 enemigo9_update::
                            322 	
                            323 	
                            324 	;;nocolision:
   4B84 DD 7E 0A      [19]  325 	ld a, enem_dir(ix)
   4B87 FE 01         [ 7]  326 	cp #1
   4B89 28 13         [12]  327 	jr z, goup1
                            328 
                            329 	;; ABAJO
                            330 
                            331 	;; Move Obsacle DOWN	
   4B8B DD 34 01      [23]  332 	inc	enem_y(ix)			;; enemigo2_y ++
   4B8E DD 35 08      [23]  333 	dec 	enem_l(ix)			;; enemigo2_l --
   4B91 20 0A         [12]  334 	jr 	nz, not_restart_x11	;; If (Obs_x == 0)then not_restart_x
                            335 	
                            336 		;; Restart x or y when it is 0
   4B93 DD 36 0A 01   [19]  337 		ld 	enem_dir(ix), #1 
   4B97 DD 7E 09      [19]  338 		ld 	a, enem_li(ix)
   4B9A DD 77 08      [19]  339 		ld	enem_l(ix), a 	;; xa (actual) = x (inicial)
                            340 
   4B9D                     341 	not_restart_x11:
                            342 
   4B9D C9            [10]  343 	ret
                            344 	
                            345 
   4B9E                     346 	goup1:
                            347 
                            348 	;; ARRIBA
                            349 	
   4B9E DD 35 01      [23]  350 	dec	enem_y(ix)			;; enemigo2_y --
   4BA1 DD 35 08      [23]  351 	dec 	enem_l(ix)			;; enemigo2_l --
   4BA4 20 0A         [12]  352 	jr 	nz, not_restart_x22	;; If (Obs_x == 0)then not_restart_x
                            353 	
                            354 		;; Restart_x when it is 0
   4BA6 DD 36 0A 00   [19]  355 		ld 	enem_dir(ix), #0 
   4BAA DD 7E 09      [19]  356 		ld 	a, enem_li(ix)
   4BAD DD 77 08      [19]  357 		ld	enem_l(ix), a 	;; xa (actual) = x (inicial)
                            358 
   4BB0                     359 	not_restart_x22:
                            360 
                            361 
   4BB0 C9            [10]  362 	ret
                            363 
                            364 ;;=====================================================================
                            365 ;;=====================================================================
                            366 ;;FUNCIONES PRIVADAS
                            367 ;;=====================================================================
                            368 ;;=====================================================================
