ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .area _CODE
                              2 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                              3 .include "cpctelera.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                              4 .include "objetos.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



                              5 .include "protagonista.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                              6 
                              7 ;;======================================================================
                              8 ;;======================================================================
                              9 ;; DATOS PRIVADOS
                             10 ;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
                             11 ;;======================================================================
                             12 ;;======================================================================
                             13 
                             14 
                             15 .macro defineObject name, x, y, w, h, spr
                             16 
                             17 	 name'_datos:
                             18 
                             19 		name'_x: .db x 			;; Pos x
                             20 		name'_y: .db y			;; Pos y
                             21 		name'_w: .db w 			;; Ancho
                             22 		name'_h: .db h		  	;; Alto de enemigo 8 lineas (8 bytes)
                             23 		name'_colision: .db -1  	;; Para saber si ha colisionado o no
                             24 		name'_recogido: .db #0  	;; recogido= 0 --> Sin recoger / recogido=1 --> Objeto recogido
                             25 		name'_random: .db #1 		;; Esta variable no sirve para nada
                             26 		name'_random1: .db #1 		;; Esta variable no sirve para nada
                             27 		name'_random2: .db #1 		;; Esta variable no sirve para nada
                             28 		name'_random3: .db #1 		;; Esta variable no sirve para nada
                             29 		name'_random4: .db #1 		;; Esta variable no sirve para nada
                             30 		name'_random5: .db #1 		;; Esta variable no sirve para nada
                             31 		name'_sprite: .db spr		;; Referencia al sprite correspondinte en el array de sprites
                             32 		name'_matado: .db #0		;; 1 si el objeto ha sido eliminada del mapa actual
                             33 
                             34 	.endm
                             35 
                             36 
   525C                      37 defineObject llave, 38, 110, 3, 4, 25
                              1 
   0000                       2 	 llave_datos:
                              3 
   525C 26                    4 		llave_x: .db 38 			;; Pos x
   525D 6E                    5 		llave_y: .db 110			;; Pos y
   525E 03                    6 		llave_w: .db 3 			;; Ancho
   525F 04                    7 		llave_h: .db 4		  	;; Alto de enemigo 8 lineas (8 bytes)
   5260 FF                    8 		llave_colision: .db -1  	;; Para saber si ha colisionado o no
   5261 00                    9 		llave_recogido: .db #0  	;; recogido= 0 --> Sin recoger / recogido=1 --> Objeto recogido
   5262 01                   10 		llave_random: .db #1 		;; Esta variable no sirve para nada
   5263 01                   11 		llave_random1: .db #1 		;; Esta variable no sirve para nada
   5264 01                   12 		llave_random2: .db #1 		;; Esta variable no sirve para nada
   5265 01                   13 		llave_random3: .db #1 		;; Esta variable no sirve para nada
   5266 01                   14 		llave_random4: .db #1 		;; Esta variable no sirve para nada
   5267 01                   15 		llave_random5: .db #1 		;; Esta variable no sirve para nada
   5268 19                   16 		llave_sprite: .db 25		;; Referencia al sprite correspondinte en el array de sprites
   5269 00                   17 		llave_matado: .db #0		;; 1 si el objeto ha sido eliminada del mapa actual
                             18 
   526A                      38 defineObject pocion, 38, 110, 4, 8, 24
                              1 
   000E                       2 	 pocion_datos:
                              3 
   526A 26                    4 		pocion_x: .db 38 			;; Pos x
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



   526B 6E                    5 		pocion_y: .db 110			;; Pos y
   526C 04                    6 		pocion_w: .db 4 			;; Ancho
   526D 08                    7 		pocion_h: .db 8		  	;; Alto de enemigo 8 lineas (8 bytes)
   526E FF                    8 		pocion_colision: .db -1  	;; Para saber si ha colisionado o no
   526F 00                    9 		pocion_recogido: .db #0  	;; recogido= 0 --> Sin recoger / recogido=1 --> Objeto recogido
   5270 01                   10 		pocion_random: .db #1 		;; Esta variable no sirve para nada
   5271 01                   11 		pocion_random1: .db #1 		;; Esta variable no sirve para nada
   5272 01                   12 		pocion_random2: .db #1 		;; Esta variable no sirve para nada
   5273 01                   13 		pocion_random3: .db #1 		;; Esta variable no sirve para nada
   5274 01                   14 		pocion_random4: .db #1 		;; Esta variable no sirve para nada
   5275 01                   15 		pocion_random5: .db #1 		;; Esta variable no sirve para nada
   5276 18                   16 		pocion_sprite: .db 24		;; Referencia al sprite correspondinte en el array de sprites
   5277 00                   17 		pocion_matado: .db #0		;; 1 si el objeto ha sido eliminada del mapa actual
                             18 
                             39 	
                             40 ;; ARRAY DE POSICIONES DE LAS CORONAS
   5278                      41 posiciones:
   5278 00 00                42 	.db #00, #00 				;; NIVEL 0 NO EXISTE
   527A 00 00                43 	.db #00, #00
   527C 00 00                44 	.db #00, #00
   527E 00 00                45 	.db #00, #00
   5280 31 5F                46 	.db #49, #95
   5282 3C 62                47 	.db #60, #98
   5284 4B 28                48 	.db #75, #40
   5286 00 00                49 	.db #00, #00
   5288 3C 28                50 	.db #60, #40
   528A 03 0D                51 	.db #03, #13
                             52 
                             53 ;; ARRAY DE POSICIONES DE LAS POCIONES
   528C                      54 posiciones2:
   528C 00 00                55 	.db #00, #00 				;; NIVEL 0 NO EXISTE
   528E 00 00                56 	.db #00, #00
   5290 03 51                57 	.db #03, #81
   5292 47 2D                58 	.db #71, #45
   5294 00 00                59 	.db #00, #00
   5296 00 00                60 	.db #00, #00
   5298 00 00                61 	.db #00, #00
   529A 24 5F                62 	.db #36, #95
   529C 00 00                63 	.db #00, #00
   529E 00 00                64 	.db #00, #00
                             65 
                             66 
                             67 ;;=====================================================================
                             68 ;;=====================================================================
                             69 ;;FUNCIONES PUBLICAS
                             70 ;;=====================================================================
                             71 ;;=====================================================================
                             72 
                             73 
                             74 ;;=================================================================================
                             75 ;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DEl OBJETO LLAVE
                             76 ;; MODIFICA : IX
                             77 ;; DEVUELVE : 
                             78 ;;		IX: Puntero a los datos de la llave
                             79 ;;=================================================================================
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



                             80 
   52A0                      81 llave_getPtrIX::
                             82 
                             83 
   52A0 DD 21 5C 52   [14]   84 	ld ix, #llave_datos
                             85 
   52A4 C9            [10]   86 	ret
                             87 
                             88 
                             89 ;;=================================================================================
                             90 ;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IY PARA GUARDAR LOS DATOS DEl OBJETO LLAVE
                             91 ;; MODIFICA : IY
                             92 ;; DEVUELVE : 
                             93 ;;		IY: Puntero a los datos de la llave
                             94 ;;=================================================================================
                             95 
   52A5                      96 llave_getPtrIY::
                             97 
                             98 
   52A5 FD 21 5C 52   [14]   99 	ld iy, #llave_datos
                            100 
   52A9 C9            [10]  101 	ret
                            102 
                            103 
   52AA                     104 pocion_getPtrIX::
                            105 
                            106 
   52AA DD 21 6A 52   [14]  107 	ld ix, #pocion_datos
                            108 
   52AE C9            [10]  109 	ret
                            110 
   52AF                     111 pocion_getPtrIY::
                            112 
                            113 
   52AF FD 21 6A 52   [14]  114 	ld iy, #pocion_datos
                            115 
   52B3 C9            [10]  116 	ret
                            117 
                            118 ;;=================================================================================
                            119 ;; FUNCION GLOBAL PARA COMPROBAR SI EL OBJETO QUE SE PASA POR IY 
                            120 ;; MODIFICA : IY
                            121 ;; DEVUELVE : 
                            122 ;;		IY: Puntero a los datos de la llave
                            123 ;;=================================================================================
                            124 
   52B4                     125 comprobar_recogido::
                            126 
   52B4 FD 7E 04      [19]  127 	ld a, 4(iy) 				;; A = name_colision
   52B7 FE 01         [ 7]  128 	cp #1
   52B9 C0            [11]  129 	ret nz 					;; Si no es 1, quiere decir que no ha habido colision
                            130 
   52BA 3E 01         [ 7]  131 	ld a, #1
   52BC FD 77 05      [19]  132 	ld 5(iy), a  				;; name_recogido = 1
                            133 
   52BF C9            [10]  134 	ret
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



                            135 
                            136 
                            137 ;;=================================================================================
                            138 ;; FUNCION GLOBAL PARA ACTUALIZAR POSICION CORNOA/LLAVE AL CAMBIAR NIVEL
                            139 ;; INPUTS:
                            140 ;;		A -> Indice del array de posiciones correspondiente al nivel actual
                            141 ;; MODIFICA : A, HL
                            142 ;;=================================================================================
                            143 
   52C0                     144 update_corona::
                            145 
   52C0 11 78 52      [10]  146 	ld 	de, #posiciones
   52C3 6F            [ 4]  147 	ld	l, a
   52C4 26 00         [ 7]  148 	ld 	h, #0x00
   52C6 29            [11]  149 	add 	hl,hl	                     	;; Multiplying HL by 2
   52C7 19            [11]  150 	add 	hl, de				;; The address of the element: DE + HL = ArrayAddress + Index * 2
   52C8 7E            [ 7]  151 	ld	a, (hl)				;; |
   52C9 32 5C 52      [13]  152 	ld 	(llave_x), a 			;; A contains the new X value
   52CC 23            [ 6]  153   	inc 	hl				;; | 
   52CD 7E            [ 7]  154   	ld	a, (hl)				;; |
   52CE 32 5D 52      [13]  155   	ld 	(llave_y), a 			;; A contains the new Y value
                            156 
   52D1 3E 00         [ 7]  157   	ld 	a, #0				;;
   52D3 32 61 52      [13]  158   	ld 	(llave_recogido), a		;; Restart de RECOGIDO value to 0
                            159 
   52D6 3A 69 52      [13]  160   	ld	a, (llave_matado)
   52D9 FE 01         [ 7]  161   	cp 	#1
   52DB 20 03         [12]  162   	jr 	nz, nohabiacorona
                            163 
   52DD CD FC 44      [17]  164   	call spriteAnormal
                            165 
   52E0                     166 	nohabiacorona:
   52E0 3E 00         [ 7]  167   	ld 	a, #0				;;
   52E2 32 69 52      [13]  168   	ld 	(llave_matado), a		;; Restart de MATADO value to 0
                            169 
                            170   	
                            171 
   52E5 C9            [10]  172 	ret
                            173 
   52E6                     174 update_pocion::
                            175 
   52E6 11 8C 52      [10]  176 	ld 	de, #posiciones2
   52E9 6F            [ 4]  177 	ld	l, a
   52EA 26 00         [ 7]  178 	ld 	h, #0x00
   52EC 29            [11]  179 	add 	hl,hl	                     	;; Multiplying HL by 2
   52ED 19            [11]  180 	add 	hl, de				;; The address of the element: DE + HL = ArrayAddress + Index * 2
   52EE 7E            [ 7]  181 	ld	a, (hl)				;; |
   52EF 32 6A 52      [13]  182 	ld 	(pocion_x), a 			;; A contains the new X value
   52F2 23            [ 6]  183   	inc 	hl				;; | 
   52F3 7E            [ 7]  184   	ld	a, (hl)				;; |
   52F4 32 6B 52      [13]  185   	ld 	(pocion_y), a 			;; A contains the new Y value
                            186 
   52F7 3E 00         [ 7]  187   	ld 	a, #0				;;
   52F9 32 6F 52      [13]  188   	ld 	(pocion_recogido), a		;; Restart de RECOGIDO value to 0
                            189 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



   52FC 3A 77 52      [13]  190   	ld	a, (pocion_matado)
   52FF FE 01         [ 7]  191   	cp 	#1
   5301 20 00         [12]  192   	jr 	nz, nohabiapocion
                            193 
   5303                     194 	nohabiapocion:
   5303 3E 00         [ 7]  195   	ld 	a, #0				;;
   5305 32 77 52      [13]  196   	ld 	(pocion_matado), a		;; Restart de MATADO value to 0
                            197 
                            198   	
                            199 
   5308 C9            [10]  200 	ret
                            201 
                            202 ;;=================================================================================
                            203 ;; FUNCION GLOBAL SET MATADO A 1
                            204 ;; MODIFICA : A
                            205 ;;=================================================================================
   5309                     206 coronaIsMatada::
                            207 
   5309 3E 01         [ 7]  208 	ld 	a, #1
   530B 32 69 52      [13]  209 	ld 	(llave_matado), a
                            210 
   530E C9            [10]  211 	ret
                            212 
   530F                     213 PocionIsMatada::
                            214 
   530F 3E 01         [ 7]  215 	ld 	a, #1
   5311 32 77 52      [13]  216 	ld 	(pocion_matado), a
                            217 
   5314 C9            [10]  218 	ret
                            219 
                            220 
                            221 
                            222 ;;=====================================================================
                            223 ;;=====================================================================
                            224 ;;FUNCIONES PRIVADAS
                            225 ;;=====================================================================
                            226 ;;=====================================================================
                            227 
                            228 
