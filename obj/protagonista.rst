ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .area _CODE
                              2 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                              3 .include "mapas.h"
                              1  ;;====================================
                              2  ;; FUNCIONES PUBLICAS DE MAPA  
                              3  ;;====================================
                              4 
                              5  .globl mapa_draw
                              6  .globl mapa_redraw
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                              4 .include "cpctelera.h.s"
                              1 .globl cpct_drawSolidBox_asm
                              2 .globl cpct_getScreenPtr_asm
                              3 .globl cpct_scanKeyboard_asm
                              4 .globl cpct_isKeyPressed_asm
                              5 .globl cpct_waitVSYNC_asm
                              6 .globl cpct_etm_setTileset2x4_asm
                              7 .globl cpct_etm_drawTileBox2x4_asm
                              8 .globl cpct_disableFirmware_asm
                              9 .globl cpct_setVideoMode_asm
                             10 .globl cpct_drawSprite_asm
                             11 .globl cpct_setPalette_asm
                             12 .globl cpct_drawStringM0_asm
                             13 .globl cpct_setPALColour_asm
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



                              5 .include "objetos.h.s"
                              1 ;;====================================
                              2 ;; FUNCIONES PUBLICAS DE ENEMIGO
                              3 ;;====================================
                              4 
                              5 
                              6 .globl llave_getPtrIX
                              7 .globl llave_getPtrIY
                              8 .globl pocion_getPtrIX
                              9 .globl pocion_getPtrIY
                             10 .globl comprobar_recogido
                             11 .globl update_corona
                             12 .globl update_pocion
                             13 .globl coronaIsMatada
                             14 .globl PocionIsMatada
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                              6 .include "hud.h.s"
                              1 ;;===============================================================================
                              2 ;;===============================================================================
                              3 ;;	HUD PUBLIC FUNCIONS
                              4 ;;===============================================================================
                              5 ;;===============================================================================
                              6 
                              7 .globl	hud_draw
                              8 .globl	hud_erase	
                              9 .globl	hud_getHP
                             10 .globl hud_title
                             11 .globl hud_ertitle
                             12 .globl hud_getPtrIX
                             13 .globl hud_getPtrFIN
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



                              7 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



                              8 .include "keyboard/keyboard.s"  		;;METEMOS LA LIBRERIA DE TECLAS
                              1 ;;-----------------------------LICENSE NOTICE------------------------------------
                              2 ;;  This file is part of CPCtelera: An Amstrad CPC Game Engine 
                              3 ;;  Copyright (C) 2014 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
                              4 ;;
                              5 ;;  This program is free software: you can redistribute it and/or modify
                              6 ;;  it under the terms of the GNU Lesser General Public License as published by
                              7 ;;  the Free Software Foundation, either version 3 of the License, or
                              8 ;;  (at your option) any later version.
                              9 ;;
                             10 ;;  This program is distributed in the hope that it will be useful,
                             11 ;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
                             12 ;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
                             13 ;;  GNU Lesser General Public License for more details.
                             14 ;;
                             15 ;;  You should have received a copy of the GNU Lesser General Public License
                             16 ;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
                             17 ;;-------------------------------------------------------------------------------
                             18 .module cpct_keyboard
                             19 
                             20 ;; bndry directive does not work when linking previously compiled files
                             21 ;.bndry 16
                             22 ;;   16-byte aligned in memory to let functions use 8-bit maths for pointing
                             23 ;;   (alignment not working on user linking)
                             24 
   448B                      25 _cpct_keyboardStatusBuffer:: .ds 10
                             26 
                             27 ;;
                             28 ;; Assembly constant definitions for keyboard mapping
                             29 ;;
                             30 
                             31 ;; Matrix Line 0x00
                     0100    32 .equ Key_CursorUp     ,#0x0100  ;; Bit 0 (01h) => | 0000 0001 |
                     0200    33 .equ Key_CursorRight  ,#0x0200  ;; Bit 1 (02h) => | 0000 0010 |
                     0400    34 .equ Key_CursorDown   ,#0x0400  ;; Bit 2 (04h) => | 0000 0100 |
                     0800    35 .equ Key_F9           ,#0x0800  ;; Bit 3 (08h) => | 0000 1000 |
                     1000    36 .equ Key_F6           ,#0x1000  ;; Bit 4 (10h) => | 0001 0000 |
                     2000    37 .equ Key_F3           ,#0x2000  ;; Bit 5 (20h) => | 0010 0000 |
                     4000    38 .equ Key_Enter        ,#0x4000  ;; Bit 6 (40h) => | 0100 0000 |
                     8000    39 .equ Key_FDot         ,#0x8000  ;; Bit 7 (80h) => | 1000 0000 |
                             40 ;; Matrix Line 0x01
                     0101    41 .equ Key_CursorLeft   ,#0x0101
                     0201    42 .equ Key_Copy         ,#0x0201
                     0401    43 .equ Key_F7           ,#0x0401
                     0801    44 .equ Key_F8           ,#0x0801
                     1001    45 .equ Key_F5           ,#0x1001
                     2001    46 .equ Key_F1           ,#0x2001
                     4001    47 .equ Key_F2           ,#0x4001
                     8001    48 .equ Key_F0           ,#0x8001
                             49 ;; Matrix Line 0x02
                     0102    50 .equ Key_Clr          ,#0x0102
                     0202    51 .equ Key_OpenBracket  ,#0x0202
                     0402    52 .equ Key_Return       ,#0x0402
                     0802    53 .equ Key_CloseBracket ,#0x0802
                     1002    54 .equ Key_F4           ,#0x1002
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



                     2002    55 .equ Key_Shift        ,#0x2002
                     4002    56 .equ Key_BackSlash    ,#0x4002
                     8002    57 .equ Key_Control      ,#0x8002
                             58 ;; Matrix Line 0x03
                     0103    59 .equ Key_Caret        ,#0x0103
                     0203    60 .equ Key_Hyphen       ,#0x0203
                     0403    61 .equ Key_At           ,#0x0403
                     0803    62 .equ Key_P            ,#0x0803
                     1003    63 .equ Key_SemiColon    ,#0x1003
                     2003    64 .equ Key_Colon        ,#0x2003
                     4003    65 .equ Key_Slash        ,#0x4003
                     8003    66 .equ Key_Dot          ,#0x8003
                             67 ;; Matrix Line 0x04
                     0104    68 .equ Key_0            ,#0x0104
                     0204    69 .equ Key_9            ,#0x0204
                     0404    70 .equ Key_O            ,#0x0404
                     0804    71 .equ Key_I            ,#0x0804
                     1004    72 .equ Key_L            ,#0x1004
                     2004    73 .equ Key_K            ,#0x2004
                     4004    74 .equ Key_M            ,#0x4004
                     8004    75 .equ Key_Comma        ,#0x8004
                             76 ;; Matrix Line 0x05
                     0105    77 .equ Key_8            ,#0x0105
                     0205    78 .equ Key_7            ,#0x0205
                     0405    79 .equ Key_U            ,#0x0405
                     0805    80 .equ Key_Y            ,#0x0805
                     1005    81 .equ Key_H            ,#0x1005
                     2005    82 .equ Key_J            ,#0x2005
                     4005    83 .equ Key_N            ,#0x4005
                     8005    84 .equ Key_Space        ,#0x8005
                             85 ;; Matrix Line 0x06
                     0106    86 .equ Key_6            ,#0x0106
                     0106    87 .equ Joy1_Up          ,#0x0106
                     0206    88 .equ Key_5            ,#0x0206
                     0206    89 .equ Joy1_Down        ,#0x0206
                     0406    90 .equ Key_R            ,#0x0406
                     0406    91 .equ Joy1_Left        ,#0x0406
                     0806    92 .equ Key_T            ,#0x0806
                     0806    93 .equ Joy1_Right       ,#0x0806
                     1006    94 .equ Key_G            ,#0x1006
                     1006    95 .equ Joy1_Fire1       ,#0x1006
                     2006    96 .equ Key_F            ,#0x2006
                     2006    97 .equ Joy1_Fire2       ,#0x2006
                     4006    98 .equ Key_B            ,#0x4006
                     4006    99 .equ Joy1_Fire3       ,#0x4006
                     8006   100 .equ Key_V            ,#0x8006
                            101 ;; Matrix Line 0x07
                     0107   102 .equ Key_4            ,#0x0107
                     0207   103 .equ Key_3            ,#0x0207
                     0407   104 .equ Key_E            ,#0x0407
                     0807   105 .equ Key_W            ,#0x0807
                     1007   106 .equ Key_S            ,#0x1007
                     2007   107 .equ Key_D            ,#0x2007
                     4007   108 .equ Key_C            ,#0x4007
                     8007   109 .equ Key_X            ,#0x8007
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



                            110 ;; Matrix Line 0x08
                     0108   111 .equ Key_1            ,#0x0108
                     0208   112 .equ Key_2            ,#0x0208
                     0408   113 .equ Key_Esc          ,#0x0408
                     0808   114 .equ Key_Q            ,#0x0808
                     1008   115 .equ Key_Tab          ,#0x1008
                     2008   116 .equ Key_A            ,#0x2008
                     4008   117 .equ Key_CapsLock     ,#0x4008
                     8008   118 .equ Key_Z            ,#0x8008
                            119 ;; Matrix Line 0x09
                     0109   120 .equ Joy0_Up          ,#0x0109
                     0209   121 .equ Joy0_Down        ,#0x0209
                     0409   122 .equ Joy0_Left        ,#0x0409
                     0809   123 .equ Joy0_Right       ,#0x0809
                     1009   124 .equ Joy0_Fire1       ,#0x1009
                     2009   125 .equ Joy0_Fire2       ,#0x2009
                     4009   126 .equ Joy0_Fire3       ,#0x4009
                     8009   127 .equ Key_Del          ,#0x8009
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



                              9 
                             10 ;;======================================================================
                             11 ;;======================================================================
                             12 ;; DATOS PRIVADOS
                             13 ;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
                             14 ;;======================================================================
                             15 ;;======================================================================
                             16 
   4495                      17 prota_datos:
                             18 
   4495 03                   19 	prota_x: .db #3			  	  ;; Esto definicion en bytes 
   4496 6D                   20 	prota_y: .db #109
   4497 04                   21 	prota_w: .db #4 			  ;; Ancho de hero 8 pixeles (2 bytes)
   4498 0F                   22 	prota_h: .db #15				  ;; Alto de hero 8 lineas (8 bytes)
   4499 FF                   23 	prota_colision: .db #-1 	  ;; Para saber si ha colisionado
   449A FF                   24 	prota_jump: .db #-1			  ;; prota_jump = -1 --> Salto inactivo /  prota_jump = -1 --> Salto activo 
   449B 01                   25 	prota_down : .db #1			  ;; prota_down= 0 --> Salto hacia abajo / prota_down= 1 --> Salto hacia arriba
   449C FF                   26 	prota_atack_left: .db #-1	
   449D FF                   27  	prota_atack_right: .db #-1	
   449E FF                   28 	prota_move_right : .db -1     ;; Para saber si se esta moviendo a la derecha
   449F FF                   29 	prota_move_left : .db -1 	  ;; 								a la izqda  
   44A0 01                   30 	prota_nivel : .db #1 		  ;; El nivel en el que se encuentra el protagonista
   44A1 00                   31 	prota_sprite: .db #0
   44A2 01                   32 	prota_dir: .db #0x01			;; Direccion en la que mira el personaje actualmente (1, hacia derecha, 0 hacia izquierda)
   44A3 01                   33 	prota_diri: .db #0x01			;; Direccion en la que debe mirar el pj (1, hacia derecha, 0 hacia izquierda)
                             34 	
                             35 
                             36 
                     0000    37 .equ pos_x, 0
                     0001    38 .equ pos_y, 1
                     0002    39 .equ ancho, 2
                     0003    40 .equ alto, 3
                     0004    41 .equ colision, 4
                     0005    42 .equ jump, 5
                     0006    43 .equ down, 6	
                     0007    44 .equ ataqueIzq, 7
                     0008    45 .equ ataqueD, 8
                     0009    46 .equ moveD, 9
                     000A    47 .equ moveI, 10
                     000B    48 .equ nivel, 11
                     000C    49 .equ sprite, 12
                     000D    50 .equ dir, 13
                     000E    51 .equ diri, 14
                             52 
   44A4 FF                   53 cambioPisoUp: .db -1 			;; Para saber si estamos pulsando ESPACIO para cambior de piso
   44A5 FF                   54 posCorrectaUp: .db -1 			;; Para saber si estamos en la posicion correcta para cambiar de piso
                             55 
                             56 ;;TABLA DE SALTO CORTO CON 12 VALORES (PARA ESQUIVAR)
   44A6                      57  jumptableShort:
   44A6 FC F8 FC FE          58  	.db #-4, #-8, #-4, #-2    ;; PRIMER MOVIMIENTO (MAS RAPIDO) HACIA ARRIBA
   44AA FF 00 00 01          59  	.db #-1, #00, #00, #01	  ;; ME QUEDO QUIETO ARRIBA
   44AE 02 04 08 04          60  	.db #02, #04, #08, #04	  ;; BAJO CADA VEZ MAS RAPIDO
   44B2 00 00 00 00          61  	.db #00, #00, #00, #00
   44B6 80                   62  	.db #0x080	  	  ;; FINAL DEL SALTO
                             63 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



                             64 ;;TABLA DE SALTO LARGO CON 8 VALORES (PARA SUBIR DE PISO)
   44B7                      65 jumptableLarge:
   44B7 FC F8 F8 F4          66  	.db #-4, #-8, #-8, #-12
   44BB 00 00 00 00          67  	.db #00, #00, #00, #00  
   44BF 00 00 00 00          68  	.db #00, #00, #00, #00
   44C3 00 00 00 00          69  	.db #00, #00, #00, #00  
   44C7 80                   70  	.db #0x080	  	  ;; FINAL DEL SALTO				  
                             71 
                             72 ;;TABLA DE SALTO HACIA ABAJO (PARA BAJAR DE PISO)
   44C8                      73 jumptableDown:
   44C8 04 08 08 0C          74  	.db #4, #8, #8, #12
   44CC 00 00 00 00          75  	.db #00, #00, #00, #00   	  
   44D0 00 00 00 00          76  	.db #00, #00, #00, #00 
   44D4 00 00 00 00          77  	.db #00, #00, #00, #00 
   44D8 80                   78  	.db #0x080	  	;; FINAL DEL SALTO	
                             79 
                             80  ;;TABLA DE ATAQUE DERECHA 
   44D9                      81  atackright:
   44D9 00 00 00 01          82  	.db #0, #0, #0, #1    	 
   44DD 01 01 01 FE          83  	.db #1, #1, #1, #-2
   44E1 FE 00 00 00          84  	.db #-2, #0, #0, #0
   44E5 80                   85  	.db #0x080 				  ;; FINAL DEL ATAQUE
                             86  	
                             87  ;;TABLA DE ATAQUE IZQD
   44E6                      88  atackleft:
   44E6 00 00 00 FF          89  	.db #0, #0, #0, #-1    	  
   44EA FF FF FF 02          90  	.db #-1, #-1, #-1, #2
   44EE 02 00 00 00          91  	.db #2, #0, #0, #0
   44F2 80                   92  	.db #0x080 				  ;; FINAL DEL ATAQUE
                             93 
                             94 
                             95 
                             96 ;;=====================================================================
                             97 ;;=====================================================================
                             98 ;;FUNCIONES PUBLICAS
                             99 ;;=====================================================================
                            100 ;;=====================================================================
                            101 
                            102 ;;=============================================================================
                            103 ;; FUNCION GLOBAL QUE ACTUALIZA EL SPRITE DEL PROTA CUANDO COGE LA CORONA
                            104 ;; MODIFICA : A
                            105 ;;===============================================================================
                            106 
   44F3                     107 spriteAcorona::
                            108 
                            109 
   44F3 3A A1 44      [13]  110 	ld 	a, (prota_sprite)
   44F6 C6 05         [ 7]  111 	add	#5
   44F8 32 A1 44      [13]  112 	ld 	(prota_sprite), a
                            113 
   44FB C9            [10]  114 	ret
                            115 
                            116 ;;==============================================================================
                            117 ;; FUNCION GLOBAL QUE ACTUALIZA EL SPRITE DEL PROTA CUANDO AVANZA DE NIVEL Y PIERDE LA CORONA
                            118 ;; MODIFICA : A
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



                            119 ;;===============================================================================
                            120 
   44FC                     121 spriteAnormal::
                            122 
                            123 
   44FC 3A A1 44      [13]  124 	ld 	a, (prota_sprite)
   44FF D6 05         [ 7]  125 	sub	#5
   4501 32 A1 44      [13]  126 	ld 	(prota_sprite), a
                            127 
   4504 C9            [10]  128 	ret
                            129 
                            130 
                            131 ;;==============================================================================
                            132 ;;   FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE PROTA
                            133 ;; MODIFICA : IX
                            134 ;; DEVUELVE : 
                            135 ;;		IX: Puntero a los datos del prota
                            136 ;;===============================================================================
                            137 
   4505                     138 prota_getPtrIX::
                            139 
                            140 
   4505 DD 21 95 44   [14]  141 	ld ix, #prota_datos
                            142 
   4509 C9            [10]  143 	ret
                            144 
                            145 
                            146 
                            147 ;;==============================================================================
                            148 ;; 		     FUNCION GLOBAL QUE ACTUALIZA EL PROTA
                            149 ;; MODIFICA : 
                            150 ;;===============================================================================
                            151 
   450A                     152 prota_update::
                            153 
                            154 
   450A CD CF 47      [17]  155 	call cambioPisoControl 			;; Para controlar cuando cambiar de piso
   450D CD 38 46      [17]  156 	call jumpControl 			;; HAGO EL SALTO
   4510 CD AE 46      [17]  157 	call atackControlLeft			;; HAGO EL ataque left
   4513 CD D6 46      [17]  158 	call atackControlRight			;; HAGO EL ataque right
   4516 CD 7B 45      [17]  159 	call checkUserInput 			;; CONTROLO LO QUE INTRODUCEN POR TECLADO
   4519 CD 74 49      [17]  160 	call dirControl
                            161 
   451C C9            [10]  162 	ret
                            163 
                            164 
                            165 
                            166 ;;==============================================================================
                            167 ;; 		    FUNCION GLOBAL PARA COMPROBAR COLISION 
                            168 ;; INPUTS : 
                            169 ;;			IX : Puntero que apunta los datos del  prota
                            170 ;;			IY : Puntero que apunta a los datos de la entidad con la que colisiona
                            171 ;; DEVUELVE :
                            172 ;;
                            173 ;;===============================================================================
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   451D                     174 checkColision::
                            175 
                            176 
                            177 	 ;;
                            178 	 ;;COLISION EN X
                            179 	 ;;
                            180 	 ;;Comprobamos si el obstaculo esta a la izquierda del hero
                            181 
                            182 	 ;; if (obs_x + obs_w <hero_x) NO COLISION
                            183 	 ;;
                            184 	 ;; EQUIVALENTE obs_x + obs_w - hero_x <=0
                            185 	 ;;
                            186 
                            187 
   451D FD 4E 00      [19]  188 	 ld c, 0(iy) 					;; C = ENTIDAD_X
   4520 FD 7E 02      [19]  189 	 ld a, 2(iy) 					;; A = ENTIDAD_W
   4523 81            [ 4]  190 	 add c 							;; A=obs_x + obs_w 
   4524 DD 96 00      [19]  191 	 sub pos_x(ix)					;;Hace una resta con lo que hay en el acumulador con aqullo a lo que apunta iy (en este casoprota_x). (ent_x+ent_w)-prota_x
                            192 
   4527 28 3B         [12]  193 	 jr z, no_collision				;; if(<=0) Este comprueba si lo anterior da 0, en ese caso, no hay colision
   4529 FA 64 45      [10]  194 	 jp m, no_collision				;; Si no da cero, comprueba si es positivo o no, si no lo es, Entonces no hay colision
                            195 
                            196 	 ;;Comprobamos si esta a la derecha del hero
                            197 
                            198 	 ;; if(hero_x+hero_w<=obs_x)
                            199 	 ;;
                            200 	 ;;hero_x+hero_w-obs_x <=0
                            201 
   452C DD 7E 00      [19]  202 	 ld a, pos_x(ix) 				;; A = PROTA_X
   452F DD 86 02      [19]  203 	 add ancho(ix) 					;; A= A(PROTA_X)+PROTA_W
   4532 4F            [ 4]  204 	 ld c, a 						;; C = Ancho del prota
   4533 FD 46 00      [19]  205 	 ld b, 0(iy) 					;; B = ENTIDAD_X
   4536 79            [ 4]  206 	 ld a, c						;; A=PROTA_X+PROTA_W
   4537 90            [ 4]  207 	 sub b 							;; A-B --> PROTA_X+PROTA_W-ENTIDAD_X
                            208 
                            209 
   4538 28 2A         [12]  210 	 jr z, no_collision				;; if(<=0)
   453A FA 64 45      [10]  211 	 jp m, no_collision 			;; Si da menor que 0 no hay colision
                            212 
                            213 	 ;; EL OBSTACULO NO ESTA NI A LA DERECHA NI A LA IZQUIERDA DE HERO. FALTA COMPROBAR SI ESTA EN Y
                            214 	 ;;
                            215 	 ;;COLISION EN Y
                            216 	 ;;Comprobamos si colisiona Por arriba
                            217 
                            218 	 ;;
                            219 	 ;;if(hero_y+hero_h<=obs_y) NO COLISION
                            220 	 ;;
                            221 	 ;;hero_y+hero_h-obs_y<=0
                            222 
   453D DD 7E 01      [19]  223 	 ld a, pos_y(ix) 				;; A = prota_y
   4540 DD 86 03      [19]  224 	 add alto(ix) 					;; A= prota_y + prota_h
   4543 4F            [ 4]  225 	 ld c, a 						;; C = Alto del prota
   4544 FD 46 01      [19]  226 	 ld b, 1(iy) 					;; B = ENTIDAD_Y
   4547 79            [ 4]  227 	 ld a, c						;; A= prota_y + prota_h
   4548 90            [ 4]  228 	 sub b 							;; A-B --> PROTA_X+PROTA_W-ENTIDAD_X
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



                            229 
                            230 
   4549 28 19         [12]  231 	 jr z, no_collision
   454B FA 64 45      [10]  232 	 jp m, no_collision
                            233 
                            234 	 ;;Comprobamos  si colisiona por abajo
                            235 
                            236 	 ;;
                            237 	 ;;if(obs_y+obs_h<=hero_y) NO COLISION
                            238 	 ;;
                            239 	 ;;obs_y+obs_h-hero_y<=0
                            240 
   454E FD 4E 01      [19]  241 	 ld c, 1(iy) 					;; C = ENTIDAD_Y
   4551 FD 7E 03      [19]  242 	 ld a, 3(iy) 					;; A = ENTIDAD_H
   4554 81            [ 4]  243 	 add c 							;; A=ENTIDAD_Y + ENTIDAD_H 
   4555 DD 96 01      [19]  244 	 sub pos_y(ix)					;;Hace una resta con lo que hay en el acumulador con aqullo a lo que apunta iy (en este caso prota_y). (ent_y+ent_h)-prota_y
                            245 
   4558 28 0A         [12]  246 	 jr z, no_collision				;; if(<=0) Este comprueba si lo anterior da 0, en ese caso, no hay colision
   455A FA 64 45      [10]  247 	 jp m, no_collision				;; Si no da cero, comprueba si es positivo o no, si no lo es, Entonces no hay colision
                            248 
                            249 	 ;;SE PRODUCE COLISION TANTO EN Y COMO EN X POR LO TANTO PINTAMOS 
   455D 3E FF         [ 7]  250 	 ld a, #0xFF
   455F FD 36 04 01   [19]  251 	 ld 4(iy), #1 					;; Indicamos al enemigo que se ha producido colision
   4563 C9            [10]  252      ret 
                            253 
                            254 
   4564                     255      no_collision:
   4564 3E 00         [ 7]  256       ld a, #00
   4566 FD 36 04 FF   [19]  257       ld 4(iy), #-1 				;; Indicamos al enemigo que no se ha producido colision
   456A C9            [10]  258 	ret
                            259 
                            260 ;;==============================================================================
                            261 ;; 		FUNCION GLOBAL PARA MOSTRAR EL MENU O NO
                            262 ;; INPUTS : 
                            263 ;;
                            264 ;; DEVUELVE :
                            265 ;;
                            266 ;;===============================================================================
                            267 
   456B                     268 checkMenu::
                            269 
   456B CD 58 57      [17]  270 	call cpct_scanKeyboard_asm
                            271 
   456E 21 02 04      [10]  272 	ld hl, #Key_Return 						;; HL= TECLA INTRO
   4571 CD 0E 54      [17]  273 	call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA D ESTA PULSADA
   4574 FE 00         [ 7]  274 	cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
   4576 28 02         [12]  275 	jr z, ent_not_pressed					;;Solo saltara si lo anterior da cero
                            276 
                            277 		;;INTRO ESTA PULSADA
   4578 3E 01         [ 7]  278 		ld 	a, #1
                            279 		
   457A                     280 	ent_not_pressed:
                            281 
   457A C9            [10]  282 	ret
                            283 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



                            284 ;;=====================================================================
                            285 ;;=====================================================================
                            286 ;;FUNCIONES PRIVADAS
                            287 ;;=====================================================================
                            288 ;;=====================================================================
                            289 
                            290 ;;==============================================================================
                            291 ;; 	FUNCION PARA CONTROLAR LO QUE SE INTRODUCE POR TECLADO Y HACER ALGO
                            292 ;; MODIFICA : 
                            293 ;;===============================================================================
   457B                     294 checkUserInput:
                            295 
   457B CD 58 57      [17]  296 	call cpct_scanKeyboard_asm
                            297 
                            298 	;;Input Parameters (2 Bytes)
                            299 	;;(2B HL) key	A 16-bit value containing a Matrix-Line(1B, L) and a BitMask(1B, H).
                            300 
                            301 	;;COMPRUEBA SI LA TECLA D ESTA PULSADA
                            302 
   457E 21 07 20      [10]  303 	ld hl, #Key_D 						;; HL= TECLA D
   4581 CD 0E 54      [17]  304 	call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA D ESTA PULSADA
   4584 FE 00         [ 7]  305 	cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
   4586 28 12         [12]  306 	jr z, d_not_pressed					;;Solo saltara si lo anterior da cero
                            307 
                            308 		;;D ESTA PULSADA ( MOVIMEINTO A LA DERECHA)
                            309 
   4588 3E 00         [ 7]  310 		ld a, #0
   458A 32 9E 44      [13]  311 		ld (prota_move_right), a 		;; Right a 0 para indicar que nos movemos a la derecha
   458D 3E FF         [ 7]  312 		ld a, #-1
   458F 32 9F 44      [13]  313 		ld (prota_move_left), a 		;; Left a -1 para indicar que no nos movemos a la izqd
                            314 
   4592 CD 28 46      [17]  315 		call moveRight
                            316 
   4595 3E 01         [ 7]  317 		ld 	a, #0x01
   4597 32 A3 44      [13]  318 		ld 	(prota_diri), a
                            319 
                            320 
                            321 		
   459A                     322 	d_not_pressed:
                            323     
                            324 		;;COMPRUEBA SI LA TECLA A ESTA PULSADA
                            325 
   459A 21 08 20      [10]  326 		ld hl, #Key_A 						;; HL= TECLA A
   459D CD 0E 54      [17]  327 		call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA A ESTA PULSADA
   45A0 FE 00         [ 7]  328 		cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
   45A2 28 12         [12]  329 		jr z, a_not_pressed					;;Solo saltara si lo anterior da cero
                            330 
                            331 			;;A ESTA PULSADA (MOVIMIENTO A LA IZQUIERDA)
                            332 
   45A4 3E FF         [ 7]  333 			ld a, #-1
   45A6 32 9E 44      [13]  334 			ld (prota_move_right), a 		;; Right a -1 para indicar que no nos movemos a la derecha
   45A9 3E 00         [ 7]  335 			ld a, #0
   45AB 32 9F 44      [13]  336 			ld (prota_move_left), a 		;; Left a 0 para indicar que nos movemos a la izqd
                            337 
   45AE CD 1B 46      [17]  338 			call moveLeft
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



                            339 			
   45B1 3E 00         [ 7]  340 			ld 	a, #0x00
   45B3 32 A3 44      [13]  341 			ld 	(prota_diri), a
                            342 
   45B6                     343 		a_not_pressed:
                            344 
                            345 			;;COMPRUEBA SI LA TECLA W ESTA PULSADA
                            346 
   45B6 21 07 08      [10]  347 			ld hl, #Key_W 						;; HL= TECLA W
   45B9 CD 0E 54      [17]  348 			call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA W ESTA PULSADA
   45BC FE 00         [ 7]  349 			cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
   45BE 28 0F         [12]  350 			jr z, w_not_pressed					;;Solo saltara si lo anterior da cero
                            351 
                            352 			;;W ESTA PULSADA (SALTO)
                            353 
                            354 			;;SOLAMENTE SALTAMOS SI ESTAMOS AGACHADO
                            355 
   45C0 3A 96 44      [13]  356 			ld a, (prota_y)
   45C3 FE 0D         [ 7]  357 			cp #13
   45C5 28 08         [12]  358 			jr z, no_salto 						;; Si da cero quiere decir que estamos agachados por lo tanto no iniciamos el salto
                            359 
   45C7 3E 01         [ 7]  360 			ld a, #1
   45C9 32 9B 44      [13]  361 			ld (prota_down), a
                            362 
   45CC CD 7E 46      [17]  363 			call StartJump
                            364 			
   45CF                     365 			no_salto:
                            366 
                            367 
   45CF                     368 			w_not_pressed:
                            369 
                            370 			;;COMPRUEBA SI LA TECLA S ESTA PULSADA 
                            371 
   45CF 21 07 10      [10]  372 				ld hl, #Key_S 						;; HL = S
   45D2 CD 0E 54      [17]  373 				call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA S ESTA PULSADA
   45D5 FE 00         [ 7]  374 				cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
   45D7 28 0F         [12]  375 				jr z, s_not_pressed					;;Solo saltara si lo anterior da cero
                            376 
                            377 
                            378 			;;TECLA S PULSADA (SALTO HACIA ABAJO)
                            379 
   45D9 3A 96 44      [13]  380 				ld a, (prota_y)
   45DC FE 6D         [ 7]  381 				cp #109
   45DE 28 08         [12]  382 				jr z, s_not_pressed 					;; Solo si no estamos en la primera fila hacemos el salto hacia abajo
                            383 
   45E0 3E 00         [ 7]  384 					ld a, #0
   45E2 32 9B 44      [13]  385 					ld (prota_down), a
   45E5 CD 7E 46      [17]  386 					call StartJump
                            387 
                            388 				;; NO PULSAMOS LA TECLA S
   45E8                     389 				s_not_pressed:
                            390 
                            391 				;COMPRUEBA SI LA TECLA K ESTA PULSADA
   45E8 21 04 20      [10]  392 				ld hl, #Key_K 						;; HL= TECLA K
   45EB CD 0E 54      [17]  393 				call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA k ESTA PULSADA
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   45EE FE 00         [ 7]  394 				cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
   45F0 28 0F         [12]  395 				jr z, k_not_pressed					;;Solo ataca si lo anterior da cero
                            396 
                            397 				;;K ESTA PULSADA (ATAQUE)
                            398 
                            399 				
   45F2 3A 9F 44      [13]  400 				ld a, (prota_move_left) 			;; A = prtoa_move_left
   45F5 FE FF         [ 7]  401 				cp #-1 
   45F7 28 05         [12]  402 				jr z, ataque_der					;; Si da cero quiere decir que hay que atacar a la derecha
                            403 
                            404 					;; No da cero entonces ataque a la izquierda
   45F9 CD 8A 46      [17]  405 					call StartAtackLeft
   45FC 18 03         [12]  406 					jr k_not_pressed
                            407 
                            408 				;; Da cero entonces ataque derecha
   45FE                     409 				ataque_der:
                            410 
   45FE CD 9C 46      [17]  411 				    call StartAtackRight
                            412 
   4601                     413 				k_not_pressed:
                            414 
                            415 				;; COMPRUEBA SI LA TECLA ESPACIO ESTA PULSADA
                            416 
   4601 21 05 80      [10]  417 				ld hl, #Key_Space 				;; HL = Space
   4604 CD 0E 54      [17]  418 				call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA S ESTA PULSADA
   4607 FE 00         [ 7]  419 				cp #0						;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
   4609 28 0F         [12]  420 				jr z, space_not_pressed				;;Solo saltara si lo anterior da cero
                            421 
                            422 				;;ESPACIO ESTA PULSADA (CAMBIO DE PISO)
   460B 3A A5 44      [13]  423 				ld a, (posCorrectaUp)
   460E FE 01         [ 7]  424 				cp #1
   4610 20 08         [12]  425 				jr nz, space_not_pressed 			;; Solo si estamos en la pos correcta cambiamos de piso
                            426 
   4612 3E 00         [ 7]  427 					ld a, #0
   4614 32 A4 44      [13]  428 					ld (cambioPisoUp), a
   4617 CD 7E 46      [17]  429 					call StartJump
                            430 
   461A                     431 				 space_not_pressed:
                            432 
   461A C9            [10]  433 	ret
                            434 
                            435 
                            436 ;;==============================================================================
                            437 ;; 			FUNCION PARA MOVER A LA IZQUIERDA
                            438 ;; MODIFICA : AF
                            439 ;;===============================================================================
   461B                     440 moveLeft:
                            441 
   461B 3A 95 44      [13]  442 	ld a, (prota_x)					;;Metemos en a lo que hay donde apunta prota_x. Por eso parentesis
   461E FE 03         [ 7]  443 	cp #3							;; Comprueba si es la ptimera pos de la fila
   4620 28 05         [12]  444 	jr z, do_not_move_l				;;Saltara solo si es cero
                            445 
                            446 		;;MOVE LEFT
   4622 3D            [ 4]  447 		dec a
   4623 32 95 44      [13]  448 		ld (prota_x), a 					;; Actualizamos el valor de prota_x
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



                            449 
   4626 C9            [10]  450 		ret
                            451 
   4627                     452 	do_not_move_l:
                            453 
                            454 		
                            455 
   4627 C9            [10]  456 	ret
                            457 
                            458 ;;==============================================================================
                            459 ;;		      FUNCION PARA MOVER A LA DERECHA
                            460 ;; MODIFICA : 
                            461 ;;===============================================================================
   4628                     462 moveRight:
                            463 
   4628 3A 95 44      [13]  464 	ld a, (prota_x)					;;Metemos en a lo que hay donde apunta prota_x. Por eso parentesis
   462B FE 4C         [ 7]  465 	cp #80-4					;; Comprueba si es la ultima pos de la fila
   462D 28 05         [12]  466 	jr z, do_not_move_r				;;Saltara solo si es cero
                            467 
                            468 		;;MOVE RIGHT 
                            469 
   462F 3C            [ 4]  470 		inc a
   4630 32 95 44      [13]  471 		ld (prota_x), a 			;; Actualizamos el valor de prota_x
                            472 
   4633 C9            [10]  473 		ret
                            474 
   4634                     475 	do_not_move_r:
                            476 
   4634 CD FE 46      [17]  477 	call avanzarNivel 				;; Llamamos a la funcion para poder avanzar al siguiente nivel
                            478 
   4637 C9            [10]  479 	ret
                            480 
                            481 
                            482 ;;==============================================================================
                            483 ;; 		 	FUNCION PARA CONTROLAR EL SALTO
                            484 ;; MODIFICA : prota_jump, prota_y
                            485 ;;===============================================================================
   4638                     486 jumpControl:
                            487 
                            488 	;; Comprobamos que tipo de salto hacer (Ariiba corto/Arriba largo/Abajo)
                            489 	
   4638 3A A4 44      [13]  490 	ld a, (cambioPisoUp) 				
   463B FE FF         [ 7]  491 	cp #-1
   463D 28 05         [12]  492 	jr z, no_cambioPiso
                            493 
   463F 21 B7 44      [10]  494 	    ld hl, #jumptableLarge 				;; Salto largo cambio de piso
   4642 18 0F         [12]  495 	    jr seguir_salto
                            496 
   4644                     497 	no_cambioPiso:
                            498 
   4644 3A 9B 44      [13]  499 	ld a, (prota_down) 					;; Prota_Down=0 --> Salto Abajo/  Prota_Down=1 --> Salto Arriba
   4647 FE 00         [ 7]  500 	cp #0
   4649 20 05         [12]  501 	jr nz, salto_arriba
                            502 
                            503 		;; SALTO HACIA ABAJO (BAJAR PISO)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



                            504 
   464B 21 C8 44      [10]  505 		ld hl, #jumptableDown 				;; Hay que hacer el salto hacia abajo
   464E 18 03         [12]  506 		jr seguir_salto
                            507 
   4650                     508 	salto_arriba: 						;; SALTAMOS HACIA ARRIBA
                            509 
   4650 21 A6 44      [10]  510 		ld hl, #jumptableShort				;; Cargamos en hl la posicion donde empieza la tabla de salto corto
                            511 		
   4653                     512 	seguir_salto:
                            513 
                            514 	;;Comprobamos si estamos saltando en este momento 
   4653 3A 9A 44      [13]  515 	ld a, (prota_jump)						;; A= estado de prota_jump
   4656 FE FF         [ 7]  516 	cp #-1								;; A==-1? Comprueba si el valor que hay en a es igual a -1, para saber si estamos saltando
   4658 C8            [11]  517 	ret z								;; Si A==-1, no salto. Si da 0 quiere decir que no estamos saltando por lo tanto salimos de la funcion
                            518 
                            519 	;;Estamos saltando. Obtenemos el valor de prota_jump
                            520 
   4659 CD 29 49      [17]  521 	call jumpAnimation
                            522 
   465C 4F            [ 4]  523 	ld c, a 							;;
   465D 06 00         [ 7]  524 	ld b, #0							;; BC=A. Metemos en bc el valor de a, que contiene el indice de la tabla de saltos(el hero_jump)
   465F 09            [11]  525 	add hl, bc 							;; hl=hl+bc. Asi pasamos de la pos inicial de la tabla a la pos actual de la tabla donde se encuentra el hero 
                            526 
                            527 	;;Comprobamos si estamos en el final del salto
   4660 7E            [ 7]  528 	ld a, (hl)							;; Cargamos en A, el valor actual de la tabla que se encuentra en hl
   4661 FE 80         [ 7]  529 	cp #0x80 							;; A==0x80? OJO! Solo se puede hacer cp al registro A
   4663 28 10         [12]  530 	jr z, end_of_jump 					;; Si da 0 quiere decir que hemos terminado el salto sino seguimos
                            531 
                            532 	;;Movimiento del salto 
   4665 47            [ 4]  533 	ld b, a 							;;B = al indice de la tabla, es decir, el movimiento del salto
   4666 3A 96 44      [13]  534 	ld a, (prota_y) 					;;A=(prota_y)
   4669 80            [ 4]  535 	add b 								;;A+=B Sumamos el movimiento del salto al valor y de nuestro heroe
   466A 32 96 44      [13]  536 	ld (prota_y), a 					;; Actualizamos el valor en prota_y
                            537 
                            538 	;;Incremento del salto 
                            539 
   466D 3A 9A 44      [13]  540 	ld a, (prota_jump)					;; A= prota_jump
   4670 3C            [ 4]  541 	inc a 								;;
   4671 32 9A 44      [13]  542 	ld (prota_jump), a 					;; prota_jump ++
                            543 
   4674 C9            [10]  544 	ret 
                            545 	
                            546 	;;Finalizamos el salto poniendo un -1 en el indice del salto
   4675                     547 	end_of_jump:
                            548 
   4675 3E FF         [ 7]  549 	ld a, #-1							;;A=-1
   4677 32 9A 44      [13]  550 	ld (prota_jump), a 					;; prota_jump=A
   467A 32 A4 44      [13]  551 	ld (cambioPisoUp), a
   467D C9            [10]  552 	ret
                            553 
                            554 
                            555 
                            556 ;;==============================================================================
                            557 ;; 			FUNCION PARA EMPEZAR EL SALTO
                            558 ;; MODIFICA : prota_jump
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



                            559 ;;===============================================================================
   467E                     560 StartJump:
                            561 
   467E 3A 9A 44      [13]  562 	ld a, (prota_jump)					;;A=hero_jump
   4681 FE FF         [ 7]  563 	cp #-1
   4683 C0            [11]  564 	ret nz 								;; Salto Activo. Salimos
                            565 
                            566 	;; El salto esta inactivo
   4684 3E 00         [ 7]  567 	ld a, #0							;;A=0. Inicializamos el valor a 0 para empezar el salto de nuevo
   4686 32 9A 44      [13]  568 	ld (prota_jump), a
                            569 
   4689 C9            [10]  570 	ret
                            571 
                            572 ;;==============================================================================
                            573 ;; 			FUNCION PARA EMPEZAR EL ataque left
                            574 ;; MODIFICA : hero_atack_left
                            575 ;;===============================================================================
   468A                     576 StartAtackLeft:
                            577 
   468A 3A 95 44      [13]  578 	ld a, (prota_x)
   468D FE 00         [ 7]  579 	cp #0
   468F C8            [11]  580 	ret z								;; Solo si no estamos al principio del mapa podemos atacar, sino no ataca				
                            581 
   4690 3A 9C 44      [13]  582 	ld a, (prota_atack_left)			;;A=prota_atack_left
   4693 FE FF         [ 7]  583 	cp #-1
   4695 C0            [11]  584 	ret nz 								;; ataque Activo. atacamos
                            585 
                            586 	;; El ataque esta inactivo
   4696 3E 00         [ 7]  587 	ld a, #0							;;A=0. Inicializamos el valor a 0 para empezar el ataque de nuevo
   4698 32 9C 44      [13]  588 	ld (prota_atack_left), a
                            589 
   469B C9            [10]  590 	ret
                            591 
                            592 ;;==============================================================================
                            593 ;; 			FUNCION PARA EMPEZAR EL ataque right
                            594 ;; MODIFICA : hero_atack_right
                            595 ;;===============================================================================
   469C                     596 StartAtackRight:
                            597 
   469C 3A 95 44      [13]  598 	ld a, (prota_x)
   469F FE 4E         [ 7]  599 	cp #80-2
   46A1 C8            [11]  600 	ret z 								;; Solo si no estamos al final del mapa podemos atacar, sino no ataca
                            601 
   46A2 3A 9D 44      [13]  602 	ld a, (prota_atack_right)					;;A=prota_atack_right
   46A5 FE FF         [ 7]  603 	cp #-1
   46A7 C0            [11]  604 	ret nz 								;; ataque Activo. atacamos
                            605 
                            606 	;; El ataque esta inactivo
   46A8 3E 00         [ 7]  607 	ld a, #0							;;A=0. Inicializamos el valor a 0 para empezar el ataque de nuevo
   46AA 32 9D 44      [13]  608 	ld (prota_atack_right), a
                            609 
   46AD C9            [10]  610 	ret
                            611 
                            612 ;;==============================================================================
                            613 ;; 		    FUNCION PARA CONTROLAR EL ataque left
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



                            614 ;; MODIFICA : 
                            615 ;;===============================================================================
   46AE                     616 atackControlLeft:
                            617 
                            618 	;;Comprobamos si estamos saltando en este momento 
   46AE 3A 9C 44      [13]  619 	ld a, (prota_atack_left)			;; A= estado de hero_atack
   46B1 FE FF         [ 7]  620 	cp #-1								;; A==-1? Comprueba si el valor que hay en a es igual a -1, para saber si estamos saltando
   46B3 C8            [11]  621 	ret z								;; Si A==-1, no salto. Si da 0 quiere decir que no estamos saltando por lo tanto salimos de la funcion
                            622 
                            623 	;;Estamos atacamos Obtenemos el valor de hero_atack
   46B4 21 E6 44      [10]  624 	ld hl, #atackleft 					;; Cargamos en hl la posicion donde empieza la tabla de ataque
   46B7 4F            [ 4]  625 	ld c, a 							;;
   46B8 06 00         [ 7]  626 	ld b, #0							;; BC=A. Metemos en bc el valor de a, que contiene el indice de la tabla de saltos(el hero_jump)
   46BA 09            [11]  627 	add hl, bc 							;; hl=hl+bc. Asi pasamos de la pos inicial de la tabla a la pos actual de la tabla donde se encuentra el hero 
                            628 
                            629 	;;Comprobamos si estamos en el final del ataque
   46BB 7E            [ 7]  630 	ld a, (hl)							;; Cargamos en A, el valor actual de la tabla que se encuentra en hl
   46BC FE 80         [ 7]  631 	cp #0x80 							;; A==0x80? OJO! Solo se puede hacer cp al registro A
   46BE 28 10         [12]  632 	jr z, end_of_atack_left				;; Si da 0 quiere decir que hemos terminado el ataque sino seguimos
                            633 
                            634 		;;Movimiento del ataque 
   46C0 47            [ 4]  635 		ld b, a 						;;B = al indice de la tabla, es decir, el movimiento del ataque
   46C1 3A 95 44      [13]  636 		ld a, (prota_x) 				;;A=(hero_x)
   46C4 80            [ 4]  637 		add b 							;;A+=B Sumamos el movimiento del ataque al valor y de nuestro heroe
   46C5 32 95 44      [13]  638 		ld (prota_x), a 				;; Actualizamos el valor en hero_x
                            639 
                            640 		;;Incremento del salto 
                            641 
   46C8 3A 9C 44      [13]  642 		ld a, (prota_atack_left)		;; A= hero_atack
   46CB 3C            [ 4]  643 		inc a 							;;
   46CC 32 9C 44      [13]  644 		ld (prota_atack_left), a 		;; hero_atack ++
                            645 
   46CF C9            [10]  646 		ret 
                            647 	
                            648 	;;Finalizamos el salto poniendo un -1 en el indice del ataque
   46D0                     649 	end_of_atack_left:
                            650 
   46D0 3E FF         [ 7]  651 	ld a, #-1							;;A=-1
   46D2 32 9C 44      [13]  652 	ld (prota_atack_left), a 			;; hero_atack=A
                            653 
   46D5 C9            [10]  654 	ret
                            655 
                            656 ;;==============================================================================
                            657 ;; 		  FUNCION PARA CONTROLAR EL ataque right
                            658 ;; MODIFICA : 
                            659 ;;===============================================================================
   46D6                     660 atackControlRight:
                            661 
                            662 	;;Comprobamos si estamos atacando en este momento 
   46D6 3A 9D 44      [13]  663 	ld a, (prota_atack_right)			;; A= estado de hero_atack
   46D9 FE FF         [ 7]  664 	cp #-1								;; A==-2? Comprueba si el valor que hay en a es igual a -1, para saber si estamos saltando
   46DB C8            [11]  665 	ret z								;; Si A==-1, no salto. Si da 0 quiere decir que no estamos saltando por lo tanto salimos de la funcion
                            666 
                            667 	;;Estamos atacamos Obtenemos el valor de hero_atack
   46DC 21 D9 44      [10]  668 	ld hl, #atackright 					;; Cargamos en hl la posicion donde empieza la tabla de ataque
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   46DF 4F            [ 4]  669 	ld c, a 							;;
   46E0 06 00         [ 7]  670 	ld b, #0							;; BC=A. Metemos en bc el valor de a, que contiene el indice de la tabla de saltos(el hero_jump)
   46E2 09            [11]  671 	add hl, bc 							;; hl=hl+bc. Asi pasamos de la pos inicial de la tabla a la pos actual de la tabla donde se encuentra el hero 
                            672 
                            673 	;;Comprobamos si estamos en el final del ataque
   46E3 7E            [ 7]  674 	ld a, (hl)							;; Cargamos en A, el valor actual de la tabla que se encuentra en hl
   46E4 FE 80         [ 7]  675 	cp #0x80 							;; A==0x80? OJO! Solo se puede hacer cp al registro A
   46E6 28 10         [12]  676 	jr z, end_of_atack 					;; Si da 0 quiere decir que hemos terminado el ataque sino seguimos
                            677 
                            678 		;;Movimiento del ataque 
   46E8 47            [ 4]  679 		ld b, a 						;;B = al indice de la tabla, es decir, el movimiento del ataque
   46E9 3A 95 44      [13]  680 		ld a, (prota_x) 				;;A=(hero_x)
   46EC 80            [ 4]  681 		add b 							;;A+=B Sumamos el movimiento del ataque al valor y de nuestro heroe
   46ED 32 95 44      [13]  682 		ld (prota_x), a 				;; Actualizamos el valor en hero_x
                            683 
                            684 		;;Incremento del salto 
                            685 
   46F0 3A 9D 44      [13]  686 		ld a, (prota_atack_right)		;; A= hero_atack
   46F3 3C            [ 4]  687 		inc a 							;;
   46F4 32 9D 44      [13]  688 		ld (prota_atack_right), a 		;; prota_atack_right ++
                            689 
   46F7 C9            [10]  690 		ret 
                            691 	
                            692 	;;Finalizamos el salto poniendo un -1 en el indice del ataque
   46F8                     693 	end_of_atack:
                            694 
   46F8 3E FF         [ 7]  695 	ld a, #-1							;;A=-1
   46FA 32 9D 44      [13]  696 	ld (prota_atack_right), a 			;; prota_atack_right=A
                            697 
   46FD C9            [10]  698 	ret
                            699 
                            700 
                            701 
                            702 
                            703 
                            704 ;;===================================================================================
                            705 ;; FUNCION PARA AVANZAR DE NIVEL DE DIFERENTES FORMAS EN FUNCION DEL NIVEL QUE ESTEMOS
                            706 ;; MODIFICA : 
                            707 ;;=================================================================================
   46FE                     708 avanzarNivel:
                            709 
   46FE 3A A0 44      [13]  710  		ld a, (prota_nivel)
   4701 FE 0A         [ 7]  711 		cp #10
   4703 CA CD 47      [10]  712 		jp z, ultimo_nivel 			;; Solo si no estamos en el ultimo nivel (nivel 2) cambiaremos al siguiente nivel		
                            713 
   4706 FE 01         [ 7]  714 		   cp #1
   4708 20 0C         [12]  715 		   jr nz, nivel_2
                            716 
                            717 		   ;; LEVEL 1
                            718 
   470A F5            [11]  719 		   push af 				;; Metemos en la pila el nivel_prota para despues poder inc
   470B 3A 96 44      [13]  720 		   ld a, (prota_y)			;; A = pos_y del prota
   470E FE 6D         [ 7]  721 		   cp #109 				;;
   4710 C2 CD 47      [10]  722 		   jp nz, ultimo_nivel 			;; Solo si estamos en la primera planta podemos avanzar de nivel
   4713 CA AD 47      [10]  723 		   jp z, continuar
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



                            724 
   4716                     725 		    nivel_2:
                            726 
   4716 FE 02         [ 7]  727 		     cp #2
   4718 20 0C         [12]  728 		     jr nz, nivel_3
                            729 
                            730 		     ;;LEVEL 2
                            731 
   471A F5            [11]  732 		     push af 				;; Metemos en la pila el nivel_prota para despues poder inc
   471B 3A 96 44      [13]  733 		     ld a, (prota_y)			;; A = pos_y del prota
   471E FE 4D         [ 7]  734 		     cp #77 				;;
   4720 C2 CD 47      [10]  735 		     jp nz, ultimo_nivel 		;; Solo se puede avanar al siguiente nivel desde la 2 fila
   4723 CA AD 47      [10]  736 		     jp z, continuar
                            737 
   4726                     738 		      nivel_3:
                            739 
   4726 FE 03         [ 7]  740 		      cp #3
   4728 20 0B         [12]  741 		      jr nz, nivel_4
                            742 
                            743 		      ;; LEVEL 3
                            744 
   472A F5            [11]  745 		      push af 				;; Metemos en la pila el nivel_prota para despues poder inc
   472B 3A 96 44      [13]  746 		      ld a, (prota_y)			;; A = pos_y del prota
   472E FE 0D         [ 7]  747 		      cp #13 				;; 		
   4730 C2 CD 47      [10]  748 		      jp nz, ultimo_nivel 		;; Solo se puede avanar al siguiente nivel desde la 3 fila
   4733 28 78         [12]  749 		      jr z, continuar
                            750 
   4735                     751 		       nivel_4:
                            752 
   4735 FE 04         [ 7]  753 		       cp #4
   4737 20 14         [12]  754 		       jr nz, nivel_5
                            755 
                            756 		       ;; LEVEL 4
                            757 
   4739 F5            [11]  758 		        push af 			;; Metemos en la pila el nivel_prota para despues poder inc
   473A 3A 96 44      [13]  759 		        ld a, (prota_y)			;; A = pos_y del prota
   473D FE 6D         [ 7]  760 		        cp #109 				
   473F C2 CD 47      [10]  761 		        jp nz, ultimo_nivel 	
                            762 
   4742 FD 7E 05      [19]  763 		         ld a, 5(iy) 			;; A= llave_recogido
   4745 FE 01         [ 7]  764 			 cp #1 				;;
   4747 C2 CD 47      [10]  765 			 jp nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
   474A CA AD 47      [10]  766 		         jp z, continuar
                            767 
   474D                     768 		        nivel_5:
                            769 
   474D FE 05         [ 7]  770 		        cp #5
   474F 20 11         [12]  771 		        jr nz, nivel_6
                            772 
                            773 		        ;; LEVEL 5
                            774 
   4751 F5            [11]  775 		        push af 			;; Metemos en la pila el nivel_prota para despues poder inc
   4752 3A 96 44      [13]  776 		        ld a, (prota_y)			;; A = pos_y del prota
   4755 FE 4D         [ 7]  777 		        cp #77 				
   4757 20 74         [12]  778 		        jr nz, ultimo_nivel 	
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



                            779 
   4759 FD 7E 05      [19]  780 		         ld a, 5(iy) 			;; A= llave_recogido
   475C FE 01         [ 7]  781 			 cp #1 				;;
   475E 20 6D         [12]  782 			 jr nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
   4760 28 4B         [12]  783 		         jr z, continuar
                            784 
   4762                     785 		          nivel_6:
                            786 
   4762 FE 06         [ 7]  787 		          cp #6
   4764 20 11         [12]  788 		          jr nz, nivel_7
                            789 
                            790 		          ;; LEVEL 6
                            791 
   4766 F5            [11]  792 		          push af 			;; Metemos en la pila el nivel_prota para despues poder inc
   4767 3A 96 44      [13]  793 		          ld a, (prota_y)		;; A = pos_y del prota
   476A FE 0D         [ 7]  794 		          cp #13				
   476C 20 5F         [12]  795 		          jr nz, ultimo_nivel 	
                            796 
   476E FD 7E 05      [19]  797 		          ld a, 5(iy) 			;; A= llave_recogido
   4771 FE 01         [ 7]  798 			  cp #1 			;;
   4773 20 58         [12]  799 			  jr nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
   4775 28 36         [12]  800 		          jr z, continuar
                            801 
   4777                     802 		            nivel_7:
                            803 
   4777 FE 07         [ 7]  804 		            cp #7
   4779 20 08         [12]  805 		            jr nz, nivel_8
                            806 
                            807 		            ;; LEVEL 7
                            808 
   477B F5            [11]  809 		            push af 			;; Metemos en la pila el nivel_prota para despues poder inc
   477C 3A 96 44      [13]  810 		            ld a, (prota_y)		;; A = pos_y del prota
   477F FE 6D         [ 7]  811 		            cp #109				
   4781 20 4A         [12]  812 		            jr nz, ultimo_nivel 	
                            813 
                            814 		            
                            815 
   4783                     816 		              nivel_8:
                            817 
   4783 FE 08         [ 7]  818 		                cp #8
   4785 20 11         [12]  819 		          	jr nz, nivel_9
                            820 
                            821 		          	;; LEVEL 8
                            822 
   4787 F5            [11]  823 		          	push af 			;; Metemos en la pila el nivel_prota para despues poder inc
   4788 3A 96 44      [13]  824 		          	ld a, (prota_y)		;; A = pos_y del prota
   478B FE 0D         [ 7]  825 		          	cp #13				
   478D 20 3E         [12]  826 		          	jr nz, ultimo_nivel 	
                            827  				    
   478F FD 7E 05      [19]  828  				     ld a, 5(iy) 			;; A= llave_recogido
   4792 FE 01         [ 7]  829 			  	     cp #1 			;;
   4794 20 37         [12]  830 			  	     jr nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
   4796 28 15         [12]  831 		          	     jr z, continuar
                            832 		          		
   4798                     833 		          	  nivel_9:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



                            834 
   4798 FE 09         [ 7]  835 		          	  cp #9
   479A 20 11         [12]  836 		          	  jr nz, nivel_10
                            837 
                            838 		          	  ;; LEVEL 9
                            839 
   479C F5            [11]  840 		          	  push af 			;; Metemos en la pila el nivel_prota para despues poder inc
   479D 3A 96 44      [13]  841 		          	  ld a, (prota_y)		;; A = pos_y del prota
   47A0 FE 0D         [ 7]  842 		          	  cp #13				
   47A2 20 29         [12]  843 		          	  jr nz, ultimo_nivel 	
                            844 
   47A4 FD 7E 05      [19]  845 		          		  ld a, 5(iy) 			;; A= llave_recogido
   47A7 FE 01         [ 7]  846 			  	     	 cp #1 			;;
   47A9 20 22         [12]  847 			  	     	 jr nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
   47AB 28 00         [12]  848 		          	     	 jr z, continuar
                            849 
   47AD                     850 		          	  nivel_10:
                            851 
                            852 		                  
                            853 
                            854 
                            855 
   47AD                     856 		continuar:
                            857 			
   47AD F1            [10]  858 		pop af 					;; A = prota_nivel
   47AE 3C            [ 4]  859 		inc a 					;; prota_nivel ++
   47AF 32 A0 44      [13]  860 		ld (prota_nivel), a
                            861 
   47B2 CD E6 52      [17]  862 		call update_pocion
   47B5 3A A0 44      [13]  863 		ld a, (prota_nivel)
   47B8 CD C0 52      [17]  864 		call update_corona			;; Colocamos la corona en una nueva posicione correspondiente al nivel
                            865 
   47BB 3E 03         [ 7]  866 		ld a, #3
   47BD 32 95 44      [13]  867 		ld (prota_x), a         		;; Cambiamos la pos_x del prota al principio al avanzar de nivel
                            868 
   47C0 3E 6D         [ 7]  869 		ld a, #109				;;
   47C2 32 96 44      [13]  870 		ld (prota_y), a 			;; Cambiamos la pos_y del prota al azanvar de nivel
                            871 
   47C5 DD 21 95 44   [14]  872 		ld ix, #prota_datos
   47C9 CD 17 53      [17]  873 		call mapa_draw
                            874 
   47CC C9            [10]  875 		ret
                            876 
   47CD                     877 		ultimo_nivel:
                            878 
   47CD F1            [10]  879 		pop af
                            880 
                            881 
   47CE C9            [10]  882  ret
                            883 
                            884 
   47CF                     885  cambioPisoControl:
                            886 
   47CF 3A A0 44      [13]  887  	ld a, (prota_nivel)
   47D2 FE 02         [ 7]  888  	cp #2
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   47D4 20 16         [12]  889  	jr nz, level3
                            890 
   47D6 3A 95 44      [13]  891  	   ld a, (prota_x)
   47D9 FE 26         [ 7]  892  	   cp #38
   47DB C2 23 49      [10]  893  	   jp nz, no_correcta
                            894 
   47DE 3A 96 44      [13]  895  	    ld a, (prota_y)
   47E1 FE 6D         [ 7]  896  	    cp #109
   47E3 C2 23 49      [10]  897  	    jp nz, no_correcta
                            898 
   47E6 3E 01         [ 7]  899  	        ld a, #1 			;; 
   47E8 32 A5 44      [13]  900  	        ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   47EB C9            [10]  901  	        ret 
                            902 
                            903 
   47EC                     904  	level3:
                            905 
   47EC 3A A0 44      [13]  906  	  ld a, (prota_nivel)
   47EF FE 03         [ 7]  907  	  cp #3
   47F1 20 40         [12]  908  	  jr nz, level5
                            909 
   47F3 3A 95 44      [13]  910  	   ld a, (prota_x)
   47F6 FE 4C         [ 7]  911  	   cp #80-4
   47F8 20 0E         [12]  912  	   jr nz, siguiente_salto
                            913 
   47FA 3A 96 44      [13]  914  	    ld a, (prota_y)
   47FD FE 6D         [ 7]  915  	    cp #109
   47FF C2 23 49      [10]  916  	    jp nz, no_correcta
                            917 
   4802 3E 01         [ 7]  918  	        ld a, #1 			;; 
   4804 32 A5 44      [13]  919  	        ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   4807 C9            [10]  920  	        ret 
   4808                     921  	   siguiente_salto:
                            922 
   4808 3A 95 44      [13]  923  	   ld a, (prota_x)
   480B FE 03         [ 7]  924  	   cp #3
   480D 20 0E         [12]  925  	   jr nz, siguiente_salto2
                            926 
   480F 3A 96 44      [13]  927  	    ld a, (prota_y)
   4812 FE 4D         [ 7]  928  	    cp #77
   4814 C2 23 49      [10]  929  	    jp nz, no_correcta
                            930 
   4817 3E 01         [ 7]  931  	        ld a, #1 			;; 
   4819 32 A5 44      [13]  932  	        ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   481C C9            [10]  933  	        ret 
   481D                     934  	   siguiente_salto2:
                            935 
   481D 3A 95 44      [13]  936  	   ld a, (prota_x)
   4820 FE 26         [ 7]  937  	   cp #38
   4822 C2 23 49      [10]  938  	   jp nz, no_correcta
                            939 
   4825 3A 96 44      [13]  940  	    ld a, (prota_y)
   4828 FE 2D         [ 7]  941  	    cp #45
   482A C2 23 49      [10]  942  	    jp nz, no_correcta
                            943 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
Hexadecimal [16-Bits]



   482D 3E 01         [ 7]  944  	        ld a, #1 			;; 
   482F 32 A5 44      [13]  945  	        ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   4832 C9            [10]  946  	        ret 
                            947 
   4833                     948  	   level5:
                            949 	     
   4833 3A A0 44      [13]  950 	     ld a, (prota_nivel)
   4836 FE 05         [ 7]  951  	     cp #5
   4838 20 15         [12]  952  	     jr nz, level6
                            953 
   483A 3A 95 44      [13]  954  	   	ld a, (prota_x)
   483D FE 26         [ 7]  955  	   	cp #38
   483F 20 C7         [12]  956  	   	jr nz, siguiente_salto
                            957 
   4841 3A 96 44      [13]  958  	    	   ld a, (prota_y)
   4844 FE 6D         [ 7]  959  	    	   cp #109
   4846 C2 23 49      [10]  960  	    	   jp nz, no_correcta
                            961 
   4849 3E 01         [ 7]  962  	        	ld a, #1 			;; 
   484B 32 A5 44      [13]  963  	        	ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   484E C9            [10]  964  	        	ret  	    
   484F                     965  	      level6:
                            966 
   484F 3A A0 44      [13]  967  	        ld a, (prota_nivel)
   4852 FE 06         [ 7]  968  	  	cp #6
   4854 20 40         [12]  969  	 	jr nz, level8
                            970 
   4856 3A 95 44      [13]  971  	  	 ld a, (prota_x)
   4859 FE 4C         [ 7]  972  	   	 cp #80-4
   485B 20 0E         [12]  973  	  	 jr nz, siguiente_salto3
                            974 
   485D 3A 96 44      [13]  975  	    		ld a, (prota_y)
   4860 FE 6D         [ 7]  976  	    		cp #109
   4862 C2 23 49      [10]  977  	    		jp nz, no_correcta
                            978 
   4865 3E 01         [ 7]  979  	        		ld a, #1 			;; 
   4867 32 A5 44      [13]  980  	       			ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   486A C9            [10]  981  	        		ret 
   486B                     982  	       	siguiente_salto3:
                            983 
   486B 3A 95 44      [13]  984  	   	ld a, (prota_x)
   486E FE 03         [ 7]  985  	   	cp #3
   4870 20 0E         [12]  986  	   	jr nz, siguiente_salto4
                            987 
   4872 3A 96 44      [13]  988  	    		ld a, (prota_y)
   4875 FE 4D         [ 7]  989  	    		cp #77
   4877 C2 23 49      [10]  990  	    		jp nz, no_correcta
                            991 
   487A 3E 01         [ 7]  992  	        		ld a, #1 			;; 
   487C 32 A5 44      [13]  993  	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   487F C9            [10]  994  	        		ret 
                            995 
   4880                     996  	   	siguiente_salto4:
                            997 
   4880 3A 95 44      [13]  998  	   	ld a, (prota_x)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
Hexadecimal [16-Bits]



   4883 FE 26         [ 7]  999  	   	cp #38
   4885 C2 23 49      [10] 1000  	   	jp nz, no_correcta
                           1001 
   4888 3A 96 44      [13] 1002  	    		ld a, (prota_y)
   488B FE 2D         [ 7] 1003  	    		cp #45
   488D C2 23 49      [10] 1004  	    		jp nz, no_correcta
                           1005 
   4890 3E 01         [ 7] 1006  	        		ld a, #1 			;; 
   4892 32 A5 44      [13] 1007  	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   4895 C9            [10] 1008  	        		ret 
                           1009  	     	        
                           1010 
   4896                    1011  	        level8:
                           1012 
   4896 3A A0 44      [13] 1013 	 	ld a, (prota_nivel)
   4899 FE 08         [ 7] 1014  	  	cp #8
   489B 20 40         [12] 1015  	 	jr nz, level9
                           1016 
   489D 3A 95 44      [13] 1017  	  	 ld a, (prota_x)
   48A0 FE 4C         [ 7] 1018  	   	 cp #80-4
   48A2 20 0E         [12] 1019  	  	 jr nz, siguiente_salto5
                           1020 
   48A4 3A 96 44      [13] 1021  	    		ld a, (prota_y)
   48A7 FE 6D         [ 7] 1022  	    		cp #109
   48A9 C2 23 49      [10] 1023  	    		jp nz, no_correcta
                           1024 
   48AC 3E 01         [ 7] 1025  	        		ld a, #1 			;; 
   48AE 32 A5 44      [13] 1026  	       			ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   48B1 C9            [10] 1027  	        		ret 
   48B2                    1028  	       	siguiente_salto5:
                           1029 
   48B2 3A 95 44      [13] 1030  	   	ld a, (prota_x)
   48B5 FE 03         [ 7] 1031  	   	cp #3
   48B7 20 0E         [12] 1032  	   	jr nz, siguiente_salto6
                           1033 
   48B9 3A 96 44      [13] 1034  	    		ld a, (prota_y)
   48BC FE 4D         [ 7] 1035  	    		cp #77
   48BE C2 23 49      [10] 1036  	    		jp nz, no_correcta
                           1037 
   48C1 3E 01         [ 7] 1038  	        		ld a, #1 			;; 
   48C3 32 A5 44      [13] 1039  	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   48C6 C9            [10] 1040  	        		ret 
                           1041 
   48C7                    1042  	   	siguiente_salto6:
                           1043 
   48C7 3A 95 44      [13] 1044  	   	ld a, (prota_x)
   48CA FE 26         [ 7] 1045  	   	cp #38
   48CC C2 23 49      [10] 1046  	   	jp nz, no_correcta
                           1047 
   48CF 3A 96 44      [13] 1048  	    		ld a, (prota_y)
   48D2 FE 2D         [ 7] 1049  	    		cp #45
   48D4 C2 23 49      [10] 1050  	    		jp nz, no_correcta
                           1051 
   48D7 3E 01         [ 7] 1052  	        		ld a, #1 			;; 
   48D9 32 A5 44      [13] 1053  	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 29.
Hexadecimal [16-Bits]



   48DC C9            [10] 1054  	        		ret     
                           1055 
                           1056 
   48DD                    1057  	        level9:
                           1058 
   48DD 3A A0 44      [13] 1059  	        ld a, (prota_nivel)
   48E0 FE 09         [ 7] 1060  	  	cp #9
   48E2 C0            [11] 1061  	 	ret nz
                           1062 
   48E3 3A 95 44      [13] 1063  	  	 ld a, (prota_x)
   48E6 FE 4C         [ 7] 1064  	   	 cp #80-4
   48E8 20 0E         [12] 1065  	  	 jr nz, siguiente_salto7
                           1066 
   48EA 3A 96 44      [13] 1067  	    		ld a, (prota_y)
   48ED FE 6D         [ 7] 1068  	    		cp #109
   48EF C2 23 49      [10] 1069  	    		jp nz, no_correcta
                           1070 
   48F2 3E 01         [ 7] 1071  	        		ld a, #1 			;; 
   48F4 32 A5 44      [13] 1072  	       			ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   48F7 C9            [10] 1073  	        		ret 
   48F8                    1074  	       	siguiente_salto7:
                           1075 
   48F8 3A 95 44      [13] 1076  	   	ld a, (prota_x)
   48FB FE 03         [ 7] 1077  	   	cp #3
   48FD 20 0E         [12] 1078  	   	jr nz, siguiente_salto8
                           1079 
   48FF 3A 96 44      [13] 1080  	    		ld a, (prota_y)
   4902 FE 4D         [ 7] 1081  	    		cp #77
   4904 C2 23 49      [10] 1082  	    		jp nz, no_correcta
                           1083 
   4907 3E 01         [ 7] 1084  	        		ld a, #1 			;; 
   4909 32 A5 44      [13] 1085  	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   490C C9            [10] 1086  	        		ret 
                           1087 
   490D                    1088  	   	siguiente_salto8:
                           1089 
   490D 3A 95 44      [13] 1090  	   	ld a, (prota_x)
   4910 FE 26         [ 7] 1091  	   	cp #38
   4912 C2 23 49      [10] 1092  	   	jp nz, no_correcta
                           1093 
   4915 3A 96 44      [13] 1094  	    		ld a, (prota_y)
   4918 FE 2D         [ 7] 1095  	    		cp #45
   491A C2 23 49      [10] 1096  	    		jp nz, no_correcta
                           1097 
   491D 3E 01         [ 7] 1098  	        		ld a, #1 			;; 
   491F 32 A5 44      [13] 1099  	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
   4922 C9            [10] 1100  	        		ret     
                           1101 
                           1102  	        	
                           1103 
   4923                    1104  	   no_correcta:
                           1105 
   4923 3E FF         [ 7] 1106  	     ld a, #-1
   4925 32 A5 44      [13] 1107  	     ld (posCorrectaUp), a
   4928 C9            [10] 1108  ret
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 30.
Hexadecimal [16-Bits]



                           1109 
                           1110  ;;==============================================================================
                           1111 ;; FUNCION PARA MODIFICAR LOS SPRITES QUE CORRESPONDEDN AL SALTO DEL PERSONAJE
                           1112 ;; MODIFICA : A, aunque almacena 
                           1113 ;;===============================================================================
   4929                    1114 jumpAnimation:
                           1115 
   4929 F5            [11] 1116 	push af
                           1117 
   492A FE 00         [ 7] 1118 	cp	#0
   492C 20 0B         [12] 1119 	jr nz, sig
                           1120 	
                           1121 		;;ld 	a, #8
                           1122 		;;ld 	(prota_sprite), a
   492E 3A A1 44      [13] 1123 		ld 	a, (prota_sprite)
   4931 C6 01         [ 7] 1124 		add	#1
   4933 32 A1 44      [13] 1125 		ld 	(prota_sprite), a
   4936 C3 72 49      [10] 1126 		jp 	animated
                           1127 
   4939                    1128 	sig:
   4939 FE 04         [ 7] 1129 	cp	#4
   493B 20 0B         [12] 1130 	jr nz, sig1
                           1131 
                           1132 		;;ld 	a, #9
                           1133 		;;ld 	(prota_sprite), a
   493D 3A A1 44      [13] 1134 		ld 	a, (prota_sprite)
   4940 C6 01         [ 7] 1135 		add	#1
   4942 32 A1 44      [13] 1136 		ld 	(prota_sprite), a
   4945 C3 72 49      [10] 1137 		jp 	animated
                           1138 
   4948                    1139 	sig1:
   4948 FE 08         [ 7] 1140 	cp	#8
   494A 20 0B         [12] 1141 	jr nz, sig2
                           1142 
                           1143 		;;ld 	a, #10
                           1144 		;;ld 	(prota_sprite), a
   494C 3A A1 44      [13] 1145 		ld 	a, (prota_sprite)
   494F C6 01         [ 7] 1146 		add	#1
   4951 32 A1 44      [13] 1147 		ld 	(prota_sprite), a
   4954 C3 72 49      [10] 1148 		jp 	animated
                           1149 
   4957                    1150 	sig2:
   4957 FE 0C         [ 7] 1151 	cp	#12
   4959 20 0B         [12] 1152 	jr nz, sig3
                           1153 
                           1154 		;;ld 	a, #11
                           1155 		;;ld 	(prota_sprite), a
   495B 3A A1 44      [13] 1156 		ld 	a, (prota_sprite)
   495E C6 01         [ 7] 1157 		add	#1
   4960 32 A1 44      [13] 1158 		ld 	(prota_sprite), a
   4963 C3 72 49      [10] 1159 		jp 	animated
                           1160 
   4966                    1161 	sig3:
   4966 FE 10         [ 7] 1162 	cp	#16
   4968 20 08         [12] 1163 	jr nz, animated
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 31.
Hexadecimal [16-Bits]



                           1164 
                           1165 		;;ld 	a, #6
                           1166 		;;ld 	(prota_sprite), a
   496A 3A A1 44      [13] 1167 		ld 	a, (prota_sprite)
   496D D6 04         [ 7] 1168 		sub	#4
   496F 32 A1 44      [13] 1169 		ld 	(prota_sprite), a
                           1170 
   4972                    1171 	animated:
   4972 F1            [10] 1172 	pop af
                           1173 
   4973 C9            [10] 1174 	ret
                           1175 
                           1176 ;;==============================================================================
                           1177 ;; FUNCION PARA MODIFICAR LOS SPRITES QUE CORRESPONDEDN AL SALTO DEL PERSONAJE
                           1178 ;; MODIFICA : A,
                           1179 ;;===============================================================================
   4974                    1180 dirControl:
                           1181 
                           1182 	
   4974 3A A3 44      [13] 1183 	ld	a, (prota_diri)
   4977 DD BE 0D      [19] 1184 	cp	dir(ix)
   497A 28 22         [12] 1185 	jr	z, looking_good
                           1186 
   497C FE 00         [ 7] 1187 	cp	#0x00
   497E 20 0B         [12] 1188 	jr	nz, other
                           1189 
   4980 3E 0A         [ 7] 1190 	ld 	a, #10
   4982 DD 86 0C      [19] 1191 	add	sprite(ix)
   4985 32 A1 44      [13] 1192 	ld 	(prota_sprite), a 
                           1193 	
                           1194 	;;ld 	a, #0x01
                           1195 	;;ld	(prota_dir), a
                           1196 
   4988 C3 93 49      [10] 1197 	jp 	noother
                           1198 
   498B                    1199 	other:
                           1200 
   498B DD 7E 0C      [19] 1201 	ld 	a, sprite(ix)
   498E D6 0A         [ 7] 1202 	sub	#10
   4990 32 A1 44      [13] 1203 	ld 	(prota_sprite), a 
                           1204 
                           1205 	;;ld 	a, #0x00
                           1206 	;;ld	(prota_dir), a
                           1207 
   4993                    1208 	noother:
   4993 3A A2 44      [13] 1209 	ld 	a, (prota_dir)
   4996 EE 01         [ 7] 1210 	xor   	#0x01                   ;; Switch looking direction (0->1, or 1->0)
   4998 32 A2 44      [13] 1211 	ld	(prota_dir), a
   499B C3 9E 49      [10] 1212 	jp 	enddirControl
                           1213 
   499E                    1214 	looking_good:
                           1215 	;;ld 	a, sprite(ix)
                           1216 	;;add	#1
                           1217 	;;ld 	(prota_sprite), a 
                           1218 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 32.
Hexadecimal [16-Bits]



   499E                    1219 	enddirControl:
   499E C9            [10] 1220 	ret
