ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 
                              2 .area _CODE
                              3 
                              4 
                              5 
                              6 ;;===============================================================================
                              7 ;;===============================================================================
                              8 ;;	PRIVATE DATA
                              9 ;;===============================================================================
                             10 ;;===============================================================================
                             11 
                             12 
                             13 .globl _titulo_lredimborde3
                             14 .globl _sheart_heart2
                             15 ;;.globl _sfin_fin2
                             16 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                             17 .include "dibujar.h.s"
                              1 ;;====================================
                              2 ;; FUNCIONES PUBLICAS DE DIBUJAR
                              3 ;;====================================
                              4 
                              5 .globl dibujar_entidad
                              6 .globl borrar_entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                             18 .include "cpctelera.h.s"
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



                             19 
                             20 
                             21 
   4398                      22 hud_datos:
                             23 
   4398 05                   24 	hud_x: 	.db #5
   4399 8C                   25 	hud_y: 	.db #140
   439A 01                   26 	hud_s:	.db #1				;; Estado de la hud, 1 Dibujado, 0 Borrado
   439B 00                   27 	hud_hp: .db #0				;; Vida actual del hero	
   439C 0A                   28 	title_x: .db #10
   439D 24                   29 	title_y: .db #36
   439E FF                   30 	hud_random: .db -1 			;, Esta variable no sirve para nada
   439F FF                   31 	hud_random1: .db -1 			;, Esta variable no sirve para nada
   43A0 FF                   32 	hud_random2: .db -1 			;, Esta variable no sirve para nada
   43A1 FF                   33 	hud_random3: .db -1 			;, Esta variable no sirve para nada
   43A2 04                   34 	hud_w: .db #4 				;, Esta variable no sirve para nada
   43A3 08                   35 	hud_h: .db #8	 			;, Esta variable no sirve para nada
   43A4 7C 27                36 	hud_heartsprite: .dw _sheart_heart2	;; Variable que contiene la referencia al sprite a una de las partes de la hud
   43A6 03                   37 	hud_initHP: .db #3			;; Vida con la que hero empieza la partida
                             38 
   43A7                      39 p_final:
                             40 
   43A7 0A                   41 	fin_x: .db #10		;; x Inicial
   43A8 1E                   42 	fin_y: .db #30		;; y Inicial
   43A9 3C                   43 	fin_w: .db #60		;; Ancho
   43AA 64                   44 	fin_h: .db #100		;; Alto de enemigo 8 lineas (8 bytes)
   43AB 00                   45 	fin_col: .db #0	  	;; Esta variable no sirve para nada
   43AC 00                   46 	fin_xi: .db #0		;; Esta variable no sirve para nada   
   43AD 00                   47 	fin_yi: .db #0		;; Esta variable no sirve para nada  
   43AE 00                   48 	fin_l: .db #0		;; Esta variable no sirve para nada  
   43AF 00                   49 	fin_li: .db #0		;; Esta variable no sirve para nada  
   43B0 00                   50 	fin_r: .db #0		;; Esta variable no sirve para nada		  
   43B1 00                   51 	fin_dir: .db #0	  	;; Esta variable no sirve para nada  
   43B2 00                   52 	fin_random: .db #0	;; Esta variable no sirve para nada
   43B3 1A                   53 	fin_sprite: .db #26	;; Referencia sprite final
                             54 
                             55 ;;===============================================================================
                             56 ;;===============================================================================
                             57 ;;	PUBLIC FUNCTIONS
                             58 ;;===============================================================================
                             59 ;;===============================================================================
                             60 
                             61 
                             62 ;;==============================================================================
                             63 ;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE LA HUDS
                             64 ;; MODIFICA : IX
                             65 ;; DEVUELVE : 
                             66 ;;		IX: Puntero a los datos de la hud
                             67 ;;===============================================================================
                             68 
   43B4                      69 hud_getPtrIX::
                             70 
   43B4 DD 21 98 43   [14]   71 	ld ix, #hud_datos
                             72 
   43B8 C9            [10]   73 	ret
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                             74 
   43B9                      75 hud_getPtrFIN::
                             76 
   43B9 DD 21 A7 43   [14]   77 	ld ix, #p_final
                             78 
   43BD C9            [10]   79 	ret
                             80 
                             81 
                             82 ;;=======================================
                             83 ;; Draws the HEART HUD
                             84 ;; INPUTS: A -> NUMERO DE CORAZONES A DIBUJAR	
                             85 ;; MODIFICA : AF, BC, DE, HL
                             86 ;;========================================
   43BE                      87 hud_draw::
   43BE 21 9A 43      [10]   88 	ld 	hl, #hud_s				;; |
   43C1 36 01         [10]   89 	ld	(hl), #1				;; \Marcamos el estado de HUD (HUD_S) con 1, dibujando
                             90 
   43C3                      91     	dibujarmas:					;; FUNCION BUCLE PARA SEGUIR DIBUJANDO MAS CORAZONES, SEGUN EL VALOR DE A
   43C3 F5            [11]   92     		push 	af				;; Almaceno CONTADOR HEARTS
   43C4 CD ED 43      [17]   93     		call	drawHUD				;; DIBUJA 1 HEART, con A como color
   43C7 F1            [10]   94     		pop	af				;; OBTENGO CONTADOR HEARTS
   43C8 3D            [ 4]   95     		dec 	a				;;|
   43C9 20 F8         [12]   96     		jr	nz, dibujarmas			;;\ If (A!=0) sigue dibujando HEARTS
                             97 
   43CB C9            [10]   98     	ret
                             99 
                            100 ;;=======================================
                            101 ;; ERASES NUMBER OF HUD HEARTS
                            102 ;; INPUTS: A -> NUMERO DE CORAZONES A BORRAR
                            103 ;; MODIFICA : AF, BC, DE, HL
                            104 ;;========================================
   43CC                     105 hud_erase::
   43CC 21 9A 43      [10]  106 	ld 	hl, #hud_s				;; |
   43CF 36 00         [10]  107 	ld	(hl), #0				;; \Marcamos el estado de HUD (HUD_S) con 0, borrado
                            108 
   43D1                     109 	borramas:					;; FUNCION BUCLE PARA SEGUIR BORRANDO CORAZONES, SEGUN EL VALOR DE A
   43D1 F5            [11]  110 		push	af				;; Almaceno CONTADOR HEARTS
   43D2 3A 98 43      [13]  111 		ld 	a, (hud_x)			;;|
   43D5 FE 06         [ 7]  112 		cp 	#6				;;|
   43D7 28 03         [12]  113 		jr	z, noborra			;;\ If (hud_X == 6), minima posicion de hud_x, por lo tanto no borro mas
   43D9 CD ED 43      [17]  114 		call	drawHUD				;;\ PINTA EN COLOR DE FONDO 1 HEART, IF hero_x > 6
   43DC                     115 		noborra:
   43DC F1            [10]  116 		pop	af				;; OBTENGO CONTADOR HEARTS
   43DD 3D            [ 4]  117 	    	dec 	a				;;|
   43DE 20 F1         [12]  118 	    	jr	nz, borramas			;;\ If (A!=0) sigue dibujando HEARTS
                            119 
   43E0 C9            [10]  120     	ret
                            121 
                            122 
                            123 ;;=======================================
                            124 ;; Gives a pointer to hud data in HL, (hud_hp)
                            125 ;; MODIFICA : HL
                            126 ;; RETURNS: HL -> Pointer to Hero Data
                            127 ;;========================================
   43E1                     128 hud_getHP::
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



   43E1 21 9B 43      [10]  129 	ld	hl, #hud_hp		;;HL points to the Hero Data (Pos in X)
   43E4 C9            [10]  130 	ret
                            131 
                            132 ;;=======================================
                            133 ;; Draws the TITLE screen
                            134 ;; MODIFICA : HL
                            135 ;;========================================
   43E5                     136 hud_title::
   43E5 CD 45 44      [17]  137 	call	drawTITLE
   43E8 C9            [10]  138 	ret
                            139 
                            140 ;;=======================================
                            141 ;; Draws the TITLE screen
                            142 ;; MODIFICA : HL
                            143 ;;========================================
   43E9                     144 hud_ertitle::
   43E9 CD 5E 44      [17]  145 	call	eraseTITLE
   43EC C9            [10]  146 	ret
                            147 ;;===============================================================================
                            148 ;;===============================================================================
                            149 ;;	PRIVATE FUNCTIONS
                            150 ;;===============================================================================
                            151 ;;===============================================================================
                            152 
                            153 ;;=======================================
                            154 ;; FUNCION PARA PINTAR LA HUD
                            155 ;; INPUTS: 
                            156 ;;      A -> COLOR
                            157 ;; MODIFICA : AF, BC, DE, HL
                            158 ;;========================================
   43ED                     159 drawHUD:
                            160 
   43ED DD 21 98 43   [14]  161 	ld 	ix, #hud_datos
                            162 
                            163 	;; Input Parameters (4 Bytes)
                            164 	;; (2B DE) screen_start	Pointer to the start of the screen (or a backbuffer)
                            165 	;; (1B C ) x	[0-79] Byte-aligned column starting from 0 (x coordinate,
                            166 	;; (1B B ) y	[0-199] row starting from 0 (y coordinate) in bytes)
                            167 
                            168 		;;CALCULAR POSICION EN PANTALLA, CON ADELANTO Y RETRASO
                            169 
   43F1 11 00 C0      [10]  170 	ld 	de, #0xC000     			;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
   43F4 3A 9A 43      [13]  171 	ld 	a, (hud_s)				;; A = ESTADO DE HUD (DIBUJADO o BORRADO)
   43F7 FE 01         [ 7]  172 	cp	#1					;; |
   43F9 28 0C         [12]  173 	jr 	z, go					;; \ If (A == 1), no modifico hud_x por ahora
                            174 
                            175 			
   43FB 3A 98 43      [13]  176 	ld 	a, (hud_x)				;; RETRASO, hago retroceder hud_x hasta la posicion a BORRAR
   43FE D6 06         [ 7]  177 	sub 	#6					;;|
   4400 32 98 43      [13]  178 	ld	(hud_x), a				;;\ hud_x -= 4, ALLWAYS MOVE IN BLOCKS OF 4
                            179 
   4403 CD E1 43      [17]  180 	call 	hud_getHP
   4406 35            [11]  181 	dec	(hl)
                            182 
   4407                     183 	go:						;; Etiqueta de salto Para evitar BORRADO
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   4407 3A 98 43      [13]  184 	ld 	a, (hud_x)				;;|
   440A 4F            [ 4]  185 	ld 	c, a  					;;\ C=hud_x
   440B 3A 99 43      [13]  186 	ld 	a, (hud_y)				;;|
   440E 47            [ 4]  187 	ld 	b, a 					;;\ B=hud_y
   440F CD 3C 57      [17]  188 	call 	cpct_getScreenPtr_asm      		;; COGER PUNTERO DE PANTALLA
                            189 
                            190 	;;LA FUNCION DEVUELVE EL VALOR DE APUNTADOR EN EL REGISTRO HL
                            191 
   4412 3A 9A 43      [13]  192 	ld 	a, (hud_s)				;; A = ESTADO DE HUD (DIBUJADO o BORRADO)
   4415 FE 01         [ 7]  193 	cp	#1					;; |
   4417 28 0F         [12]  194 	jr 	z, goPintar				;; \ If (A == 1), no modifico hud_x por ahora
                            195 
                            196     	;; BORRAR CORAZON
                            197 
   4419 EB            [ 4]  198     	ex 	de, hl  						;; Intercambia valores entre los dos registros, ya que nosotros lo queremos en de y venia en hl
   441A 3E 00         [ 7]  199 	ld 	a, #0x00
   441C DD 4E 0A      [19]  200 	ld 	c, 10(ix)						;; C = ancho entidad ( en bytes!)
   441F DD 46 0B      [19]  201 	ld 	b, 11(ix)						;; B = alto entidad ( en bytes! = mismo numero de filas)
   4422 CD 6E 56      [17]  202 	call 	cpct_drawSolidBox_asm
   4425 C3 44 44      [10]  203 	jp 	fin
                            204 
   4428                     205     	goPintar:
                            206 	;; PINTAR CORAZON
                            207 	
   4428 EB            [ 4]  208 	ex 	de, hl  						;; Intercambia valores entre los dos registros, ya que nosotros lo queremos en de y venia en hl
   4429 DD 6E 0C      [19]  209 	ld 	l, 12(ix)						;; Sprite del CORAZON prob. NOFUNCA
   442C DD 66 0D      [19]  210 	ld	h, 13(ix)
   442F DD 4E 0A      [19]  211 	ld 	c, 10(ix)						;; C = ancho entidad ( en bytes!)
   4432 DD 46 0B      [19]  212 	ld 	b, 11(ix) 						;; B = alto entidad
   4435 CD 5B 54      [17]  213 	call 	cpct_drawSprite_asm
                            214 
   4438 3A 98 43      [13]  215 	ld 	a, (hud_x)				;;| Solo si DIBUJANDO, ACTUALIZAMOS APUNTADOR HUD_X PARA EL SIGUIENTE CORAZON
   443B C6 06         [ 7]  216 	add 	#6					;;| ADELANTO,  Update position for the next heart to be drawn
   443D 32 98 43      [13]  217 	ld 	(hud_x), a				;;\ hud_x += 4, ALLWAYS MOVE IN BLOCKS OF 4
                            218 
   4440 CD E1 43      [17]  219 	call	hud_getHP
   4443 34            [11]  220 	inc 	(hl)
                            221 
   4444                     222 	fin:						;; Etiqueta de Salto para evitar DIBUJADO
   4444 C9            [10]  223 	ret 						;; Final de funcion
                            224 
                            225 
                            226 ;;=======================================
                            227 ;; FUNCION PARA PINTAR SPRITE DE TITULO
                            228 ;; MODIFICA : AF, BC, DE, HL
                            229 ;;========================================
   4445                     230 drawTITLE:
                            231 
                            232 	;;CALCULAR POSICION EN PANTALLA
   4445 11 00 C0      [10]  233 		ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
   4448 3A 9C 43      [13]  234 		ld a, (title_x)					;;
   444B 4F            [ 4]  235 		ld c, a  						;; C=hero_x
   444C 3A 9D 43      [13]  236 		ld a, (title_y)					;;
   444F 47            [ 4]  237 		ld b, a 						;; B=hero_y
   4450 CD 3C 57      [17]  238 		call cpct_getScreenPtr_asm      ;; COGER PUNTERO DE PANTALLA
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



                            239 
                            240 	;;LA FUNCION DEVUELVE EL VALOR EN EL REGISTRO HL PERO NOSOTROS LO QUEREMOS EN DE
                            241 
                            242 		
                            243 	    ;; PINTAR UNA CAJA 
   4453 EB            [ 4]  244 	    ex de, hl  						;; Intercambia valores entre los dos registros
   4454 21 B4 2C      [10]  245 	    ld	hl, #_titulo_lredimborde3
   4457 01 3C 2A      [10]  246 	    ld bc, #0x2A3C                      ;; 8X8 pixeles. El 2 del final indica 2 bytes
   445A CD 5B 54      [17]  247 	    call cpct_drawSprite_asm
                            248 
                            249 
                            250 ;;	    ;;CALCULAR POSICION EN PANTALLA
                            251 ;;		ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
                            252 ;;		ld a, #10					;;
                            253 ;;		ld c, a  						;; C=hero_x
                            254 ;;		ld a, #42					;;
                            255 ;;		ld b, a 						;; B=hero_y
                            256 ;;		call cpct_getScreenPtr_asm      ;; COGER PUNTERO DE PANTALLA
                            257 ;;
                            258 ;;		;;LA FUNCION DEVUELVE EL VALOR EN EL REGISTRO HL PERO NOSOTROS LO QUEREMOS EN DE
                            259 ;;
                            260 ;;		
                            261 ;;	    ;; PINTAR UNA CAJA 
                            262 ;;	    ex de, hl  						;; Intercambia valores entre los dos registros
                            263 ;;	    ld	hl, #_sfin_fin2
                            264 ;;	    ld bc, #0x643C                      ;; 8X8 pixeles. El 2 del final indica 2 bytes
                            265 ;;	    call cpct_drawSprite_asm
                            266 
   445D C9            [10]  267 	ret ;; Final de funcion
                            268 
   445E                     269 eraseTITLE:
                            270 
                            271 	;;CALCULAR POSICION EN PANTALLA
   445E 11 00 C0      [10]  272 		ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
   4461 3A 9C 43      [13]  273 		ld a, (title_x)					;;
   4464 4F            [ 4]  274 		ld c, a  						;; C=hero_x
   4465 3A 9D 43      [13]  275 		ld a, (title_y)					;;
   4468 47            [ 4]  276 		ld b, a 						;; B=hero_y
   4469 CD 3C 57      [17]  277 		call cpct_getScreenPtr_asm      ;; COGER PUNTERO DE PANTALLA
                            278 
                            279 		;;LA FUNCION DEVUELVE EL VALOR EN EL REGISTRO HL PERO NOSOTROS LO QUEREMOS EN DE
                            280 
                            281 		
                            282 	    ;; PINTAR UNA CAJA 
   446C EB            [ 4]  283 	    ex de, hl  						;; Intercambia valores entre los dos registros
   446D 3E 00         [ 7]  284 	    ld  a, #0x00
                            285 	    ;;ld	hl, #_titulo_lredimborde
   446F 01 3C 2A      [10]  286 	    ld bc, #0x2A3C                      ;; 8X8 pixeles. El 2 del final indica 2 bytes
   4472 CD 6E 56      [17]  287 	    call cpct_drawSolidBox_asm
                            288 
                            289 
                            290 	    ;;CALCULAR POSICION EN PANTALLA
   4475 11 00 C0      [10]  291 		ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
   4478 3E 0D         [ 7]  292 		ld a, #13					;;
   447A 4F            [ 4]  293 		ld c, a  						;; C=hero_x
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



   447B 3E 64         [ 7]  294 		ld a, #100					;;
   447D 47            [ 4]  295 		ld b, a 						;; B=hero_y
   447E CD 3C 57      [17]  296 		call cpct_getScreenPtr_asm      ;; COGER PUNTERO DE PANTALLA
                            297 
                            298 		;;LA FUNCION DEVUELVE EL VALOR EN EL REGISTRO HL PERO NOSOTROS LO QUEREMOS EN DE
                            299 
                            300 		
                            301 	    ;; PINTAR UNA CAJA 
   4481 EB            [ 4]  302 	    ex de, hl  		
   4482 3E 00         [ 7]  303 	    ld a, #0x00				;; Intercambia valores entre los dos registros
                            304 	    ;;ld	hl, #_letra_teclamenu
   4484 01 32 2E      [10]  305 	    ld bc, #0x2E32                      ;; 8X8 pixeles. El 2 del final indica 2 bytes
   4487 CD 6E 56      [17]  306 	    call cpct_drawSolidBox_asm
                            307 
   448A C9            [10]  308 	ret ;; Final de funcion
