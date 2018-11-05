
.area _CODE



;;===============================================================================
;;===============================================================================
;;	PRIVATE DATA
;;===============================================================================
;;===============================================================================


.globl _titulo_lredimborde3
.globl _sheart_heart2
;;.globl _sfin_fin2

.include "dibujar.h.s"
.include "cpctelera.h.s"



hud_datos:

	hud_x: 	.db #5
	hud_y: 	.db #140
	hud_s:	.db #1				;; Estado de la hud, 1 Dibujado, 0 Borrado
	hud_hp: .db #0				;; Vida actual del hero	
	title_x: .db #10
	title_y: .db #36
	hud_random: .db -1 			;, Esta variable no sirve para nada
	hud_random1: .db -1 			;, Esta variable no sirve para nada
	hud_random2: .db -1 			;, Esta variable no sirve para nada
	hud_random3: .db -1 			;, Esta variable no sirve para nada
	hud_w: .db #4 				;, Esta variable no sirve para nada
	hud_h: .db #8	 			;, Esta variable no sirve para nada
	hud_heartsprite: .dw _sheart_heart2	;; Variable que contiene la referencia al sprite a una de las partes de la hud
	hud_initHP: .db #3			;; Vida con la que hero empieza la partida

p_final:

	fin_x: .db #10		;; x Inicial
	fin_y: .db #30		;; y Inicial
	fin_w: .db #60		;; Ancho
	fin_h: .db #100		;; Alto de enemigo 8 lineas (8 bytes)
	fin_col: .db #0	  	;; Esta variable no sirve para nada
	fin_xi: .db #0		;; Esta variable no sirve para nada   
	fin_yi: .db #0		;; Esta variable no sirve para nada  
	fin_l: .db #0		;; Esta variable no sirve para nada  
	fin_li: .db #0		;; Esta variable no sirve para nada  
	fin_r: .db #0		;; Esta variable no sirve para nada		  
	fin_dir: .db #0	  	;; Esta variable no sirve para nada  
	fin_random: .db #0	;; Esta variable no sirve para nada
	fin_sprite: .db #26	;; Referencia sprite final

;;===============================================================================
;;===============================================================================
;;	PUBLIC FUNCTIONS
;;===============================================================================
;;===============================================================================


;;==============================================================================
;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE LA HUDS
;; MODIFICA : IX
;; DEVUELVE : 
;;		IX: Puntero a los datos de la hud
;;===============================================================================

hud_getPtrIX::

	ld ix, #hud_datos

	ret

hud_getPtrFIN::

	ld ix, #p_final

	ret


;;=======================================
;; Draws the HEART HUD
;; INPUTS: A -> NUMERO DE CORAZONES A DIBUJAR	
;; MODIFICA : AF, BC, DE, HL
;;========================================
hud_draw::
	ld 	hl, #hud_s				;; |
	ld	(hl), #1				;; \Marcamos el estado de HUD (HUD_S) con 1, dibujando

    	dibujarmas:					;; FUNCION BUCLE PARA SEGUIR DIBUJANDO MAS CORAZONES, SEGUN EL VALOR DE A
    		push 	af				;; Almaceno CONTADOR HEARTS
    		call	drawHUD				;; DIBUJA 1 HEART, con A como color
    		pop	af				;; OBTENGO CONTADOR HEARTS
    		dec 	a				;;|
    		jr	nz, dibujarmas			;;\ If (A!=0) sigue dibujando HEARTS

    	ret

;;=======================================
;; ERASES NUMBER OF HUD HEARTS
;; INPUTS: A -> NUMERO DE CORAZONES A BORRAR
;; MODIFICA : AF, BC, DE, HL
;;========================================
hud_erase::
	ld 	hl, #hud_s				;; |
	ld	(hl), #0				;; \Marcamos el estado de HUD (HUD_S) con 0, borrado

	borramas:					;; FUNCION BUCLE PARA SEGUIR BORRANDO CORAZONES, SEGUN EL VALOR DE A
		push	af				;; Almaceno CONTADOR HEARTS
		ld 	a, (hud_x)			;;|
		cp 	#6				;;|
		jr	z, noborra			;;\ If (hud_X == 6), minima posicion de hud_x, por lo tanto no borro mas
		call	drawHUD				;;\ PINTA EN COLOR DE FONDO 1 HEART, IF hero_x > 6
		noborra:
		pop	af				;; OBTENGO CONTADOR HEARTS
	    	dec 	a				;;|
	    	jr	nz, borramas			;;\ If (A!=0) sigue dibujando HEARTS

    	ret


;;=======================================
;; Gives a pointer to hud data in HL, (hud_hp)
;; MODIFICA : HL
;; RETURNS: HL -> Pointer to Hero Data
;;========================================
hud_getHP::
	ld	hl, #hud_hp		;;HL points to the Hero Data (Pos in X)
	ret

;;=======================================
;; Draws the TITLE screen
;; MODIFICA : HL
;;========================================
hud_title::
	call	drawTITLE
	ret

;;=======================================
;; Draws the TITLE screen
;; MODIFICA : HL
;;========================================
hud_ertitle::
	call	eraseTITLE
	ret
;;===============================================================================
;;===============================================================================
;;	PRIVATE FUNCTIONS
;;===============================================================================
;;===============================================================================

;;=======================================
;; FUNCION PARA PINTAR LA HUD
;; INPUTS: 
;;      A -> COLOR
;; MODIFICA : AF, BC, DE, HL
;;========================================
drawHUD:

	ld 	ix, #hud_datos

	;; Input Parameters (4 Bytes)
	;; (2B DE) screen_start	Pointer to the start of the screen (or a backbuffer)
	;; (1B C ) x	[0-79] Byte-aligned column starting from 0 (x coordinate,
	;; (1B B ) y	[0-199] row starting from 0 (y coordinate) in bytes)

		;;CALCULAR POSICION EN PANTALLA, CON ADELANTO Y RETRASO

	ld 	de, #0xC000     			;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
	ld 	a, (hud_s)				;; A = ESTADO DE HUD (DIBUJADO o BORRADO)
	cp	#1					;; |
	jr 	z, go					;; \ If (A == 1), no modifico hud_x por ahora

			
	ld 	a, (hud_x)				;; RETRASO, hago retroceder hud_x hasta la posicion a BORRAR
	sub 	#6					;;|
	ld	(hud_x), a				;;\ hud_x -= 4, ALLWAYS MOVE IN BLOCKS OF 4

	call 	hud_getHP
	dec	(hl)

	go:						;; Etiqueta de salto Para evitar BORRADO
	ld 	a, (hud_x)				;;|
	ld 	c, a  					;;\ C=hud_x
	ld 	a, (hud_y)				;;|
	ld 	b, a 					;;\ B=hud_y
	call 	cpct_getScreenPtr_asm      		;; COGER PUNTERO DE PANTALLA

	;;LA FUNCION DEVUELVE EL VALOR DE APUNTADOR EN EL REGISTRO HL

	ld 	a, (hud_s)				;; A = ESTADO DE HUD (DIBUJADO o BORRADO)
	cp	#1					;; |
	jr 	z, goPintar				;; \ If (A == 1), no modifico hud_x por ahora

    	;; BORRAR CORAZON

    	ex 	de, hl  						;; Intercambia valores entre los dos registros, ya que nosotros lo queremos en de y venia en hl
	ld 	a, #0x00
	ld 	c, 10(ix)						;; C = ancho entidad ( en bytes!)
	ld 	b, 11(ix)						;; B = alto entidad ( en bytes! = mismo numero de filas)
	call 	cpct_drawSolidBox_asm
	jp 	fin

    	goPintar:
	;; PINTAR CORAZON
	
	ex 	de, hl  						;; Intercambia valores entre los dos registros, ya que nosotros lo queremos en de y venia en hl
	ld 	l, 12(ix)						;; Sprite del CORAZON prob. NOFUNCA
	ld	h, 13(ix)
	ld 	c, 10(ix)						;; C = ancho entidad ( en bytes!)
	ld 	b, 11(ix) 						;; B = alto entidad
	call 	cpct_drawSprite_asm

	ld 	a, (hud_x)				;;| Solo si DIBUJANDO, ACTUALIZAMOS APUNTADOR HUD_X PARA EL SIGUIENTE CORAZON
	add 	#6					;;| ADELANTO,  Update position for the next heart to be drawn
	ld 	(hud_x), a				;;\ hud_x += 4, ALLWAYS MOVE IN BLOCKS OF 4

	call	hud_getHP
	inc 	(hl)

	fin:						;; Etiqueta de Salto para evitar DIBUJADO
	ret 						;; Final de funcion


;;=======================================
;; FUNCION PARA PINTAR SPRITE DE TITULO
;; MODIFICA : AF, BC, DE, HL
;;========================================
drawTITLE:

	;;CALCULAR POSICION EN PANTALLA
		ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
		ld a, (title_x)					;;
		ld c, a  						;; C=hero_x
		ld a, (title_y)					;;
		ld b, a 						;; B=hero_y
		call cpct_getScreenPtr_asm      ;; COGER PUNTERO DE PANTALLA

	;;LA FUNCION DEVUELVE EL VALOR EN EL REGISTRO HL PERO NOSOTROS LO QUEREMOS EN DE

		
	    ;; PINTAR UNA CAJA 
	    ex de, hl  						;; Intercambia valores entre los dos registros
	    ld	hl, #_titulo_lredimborde3
	    ld bc, #0x2A3C                      ;; 8X8 pixeles. El 2 del final indica 2 bytes
	    call cpct_drawSprite_asm


;;	    ;;CALCULAR POSICION EN PANTALLA
;;		ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
;;		ld a, #10					;;
;;		ld c, a  						;; C=hero_x
;;		ld a, #42					;;
;;		ld b, a 						;; B=hero_y
;;		call cpct_getScreenPtr_asm      ;; COGER PUNTERO DE PANTALLA
;;
;;		;;LA FUNCION DEVUELVE EL VALOR EN EL REGISTRO HL PERO NOSOTROS LO QUEREMOS EN DE
;;
;;		
;;	    ;; PINTAR UNA CAJA 
;;	    ex de, hl  						;; Intercambia valores entre los dos registros
;;	    ld	hl, #_sfin_fin2
;;	    ld bc, #0x643C                      ;; 8X8 pixeles. El 2 del final indica 2 bytes
;;	    call cpct_drawSprite_asm

	ret ;; Final de funcion

eraseTITLE:

	;;CALCULAR POSICION EN PANTALLA
		ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
		ld a, (title_x)					;;
		ld c, a  						;; C=hero_x
		ld a, (title_y)					;;
		ld b, a 						;; B=hero_y
		call cpct_getScreenPtr_asm      ;; COGER PUNTERO DE PANTALLA

		;;LA FUNCION DEVUELVE EL VALOR EN EL REGISTRO HL PERO NOSOTROS LO QUEREMOS EN DE

		
	    ;; PINTAR UNA CAJA 
	    ex de, hl  						;; Intercambia valores entre los dos registros
	    ld  a, #0x00
	    ;;ld	hl, #_titulo_lredimborde
	    ld bc, #0x2A3C                      ;; 8X8 pixeles. El 2 del final indica 2 bytes
	    call cpct_drawSolidBox_asm


	    ;;CALCULAR POSICION EN PANTALLA
		ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
		ld a, #13					;;
		ld c, a  						;; C=hero_x
		ld a, #100					;;
		ld b, a 						;; B=hero_y
		call cpct_getScreenPtr_asm      ;; COGER PUNTERO DE PANTALLA

		;;LA FUNCION DEVUELVE EL VALOR EN EL REGISTRO HL PERO NOSOTROS LO QUEREMOS EN DE

		
	    ;; PINTAR UNA CAJA 
	    ex de, hl  		
	    ld a, #0x00				;; Intercambia valores entre los dos registros
	    ;;ld	hl, #_letra_teclamenu
	    ld bc, #0x2E32                      ;; 8X8 pixeles. El 2 del final indica 2 bytes
	    call cpct_drawSolidBox_asm

	ret ;; Final de funcion
