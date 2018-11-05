.area _CODE


.include "protagonista.h.s"
;;======================================================================
;;======================================================================
;; DATOS PRIVADOS
;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
;;======================================================================
;;======================================================================


.macro defineEnemy name, x, y, w, h, l, s

  name'_datos:

		name'_x: .db x 			;; Pos x
		name'_y: .db y			;; Pos y
		name'_w: .db w 			;; Ancho
		name'_h: .db h		  	;; Alto de enemigo 8 lineas (8 bytes)
		name'_colision: .db -1 		;; Para saber si ha colisionado o no
		name'_muerto: .db -1    	;; Para saber si el enemigo esta muerto o no
		name'_xi: .db x		 	;; x Actual 
		name'_yi: .db y		 	;; y Actual
		name'_l: .db l		 	;; Estado de longitude de recorrido	
		name'_li: .db l		 	;; Longitud de recorrido inicial
		name'_dir: .db 1	  	;; Direccion de movimiento 1 (Arriba o izquierda), 0 (Abajo o derecha)
		name'_random: .db -1 		;, Esta variable no sirve para nada
		name'_sprite: .db s
	.endm

.equ	enem_x, 	0
.equ	enem_y, 	1
.equ	enem_w, 	2
.equ	enem_h, 	3
.equ	enem_col, 	4	
.equ 	enem_mue, 	5
.equ	enem_xi, 	6
.equ	enem_yi, 	7
.equ	enem_l, 	8
.equ	enem_li, 	9
.equ	enem_dir,	10
.equ 	enem_random, 	11
.equ 	enem_sprite, 	12

defineEnemy enemigo1, 65, 112, 2, 12, 0, 20 	;; NIVEL 1

defineEnemy enemigo2, 80-2, 112, 2, 12, 0, 20      ;; NIVEL 2
defineEnemy enemigo3, 9, 80, 2, 12, 0, 21	   ;; NIVEL 2

defineEnemy enemigo7, 66, 112, 2, 12, 0, 20         ;; NIVEL 3
defineEnemy enemigo8, 20, 80, 2, 12, 0, 21           ;; NIVEL 3
defineEnemy enemigo9, 65, 52, 2, 12, 40, 20         ;; NIVEL 3

defineEnemy enemigo10, 70, 112, 2, 12, 0, 20        ;; NIVEL 4

defineEnemy enemigo11, 80-2, 112, 2, 12, 0, 20      ;; NIVEL 5
defineEnemy enemigo12, 9, 80, 2, 12, 0, 21	    ;; NIVEL 5

defineEnemy enemigo16, 65, 110, 2, 12, 108, 20      ;; NIVEL 6

defineEnemy enemigo17, 65, 112, 2, 12, 0, 20       ;; NIVEL 7

defineEnemy enemigo18, 66, 112, 2, 12, 0, 20       ;; NIVEL 8
defineEnemy enemigo19, 9, 52, 2, 12, 40, 21       ;; NIVEL 8

defineEnemy enemigo20, 65, 50, 2, 12, 35, 20       ;; NIVEL 9
defineEnemy enemigo21, 9, 80, 2, 12, 50, 21       ;; NIVEL 9

;;=====================================================================
;;=====================================================================
;;FUNCIONES PUBLICAS
;;=====================================================================
;;=====================================================================

;;==============================================================================
;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE ENEMIGO
;; MODIFICA : IX
;; DEVUELVE : 
;;		IX: Puntero a los datos del enemigo
;;===============================================================================
enemigo1_getPtrIX::


	ld ix, #enemigo1_datos

	ret



;;============================================================================================
;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IY PARA GUARDAR LOS DATOS DE ENEMIGO PARA LA COLISION
;; MODIFICA : IX
;; DEVUELVE : 
;;		IX: Puntero a los datos del enemigo
;;============================================================================================
enemigo1_getPtrIY::


	ld iy, #enemigo1_datos

	ret


enemigo2_getPtrIX::


	ld ix, #enemigo2_datos

	ret

enemigo2_getPtrIY::


	ld iy, #enemigo2_datos

	ret



enemigo3_getPtrIX::


	ld ix, #enemigo3_datos

	ret

enemigo3_getPtrIY::


	ld iy, #enemigo3_datos

	ret

enemigo7_getPtrIX::


	ld ix, #enemigo7_datos

	ret


enemigo7_getPtrIY::


	ld iy, #enemigo7_datos

	ret

enemigo8_getPtrIX::


	ld ix, #enemigo8_datos

	ret


enemigo8_getPtrIY::


	ld iy, #enemigo8_datos

	ret

enemigo9_getPtrIX::


	ld ix, #enemigo9_datos

	ret


enemigo9_getPtrIY::


	ld iy, #enemigo9_datos

	ret

enemigo10_getPtrIX::


	ld ix, #enemigo10_datos

	ret


enemigo10_getPtrIY::


	ld iy, #enemigo10_datos

	ret

enemigo11_getPtrIX::


	ld ix, #enemigo11_datos

	ret


enemigo11_getPtrIY::


	ld iy, #enemigo11_datos

	ret

enemigo12_getPtrIX::


	ld ix, #enemigo12_datos

	ret


enemigo12_getPtrIY::


	ld iy, #enemigo12_datos

	ret

enemigo16_getPtrIX::


	ld ix, #enemigo16_datos

	ret


enemigo16_getPtrIY::


	ld iy, #enemigo16_datos

	ret

enemigo17_getPtrIX::


	ld ix, #enemigo17_datos

	ret


enemigo17_getPtrIY::


	ld iy, #enemigo17_datos

	ret

enemigo18_getPtrIX::


	ld ix, #enemigo18_datos

	ret


enemigo18_getPtrIY::


	ld iy, #enemigo18_datos

	ret

enemigo19_getPtrIX::


	ld ix, #enemigo19_datos

	ret


enemigo19_getPtrIY::


	ld iy, #enemigo19_datos

	ret

enemigo20_getPtrIX::


	ld ix, #enemigo20_datos

	ret


enemigo20_getPtrIY::


	ld iy, #enemigo20_datos

	ret

enemigo21_getPtrIX::


	ld ix, #enemigo21_datos

	ret


enemigo21_getPtrIY::


	ld iy, #enemigo21_datos

	ret



;;=======================================
;; UPDATE DE LOS ENEMIGOS QUE SE MUEVEN
;; MODIFICA : AF, BC, DE, HL
;;========================================
enemigo9_update::
	
	
	;;nocolision:
	ld a, enem_dir(ix)
	cp #1
	jr z, goup1

	;; ABAJO

	;; Move Obsacle DOWN	
	inc	enem_y(ix)			;; enemigo2_y ++
	dec 	enem_l(ix)			;; enemigo2_l --
	jr 	nz, not_restart_x11	;; If (Obs_x == 0)then not_restart_x
	
		;; Restart x or y when it is 0
		ld 	enem_dir(ix), #1 
		ld 	a, enem_li(ix)
		ld	enem_l(ix), a 	;; xa (actual) = x (inicial)

	not_restart_x11:

	ret
	

	goup1:

	;; ARRIBA
	
	dec	enem_y(ix)			;; enemigo2_y --
	dec 	enem_l(ix)			;; enemigo2_l --
	jr 	nz, not_restart_x22	;; If (Obs_x == 0)then not_restart_x
	
		;; Restart_x when it is 0
		ld 	enem_dir(ix), #0 
		ld 	a, enem_li(ix)
		ld	enem_l(ix), a 	;; xa (actual) = x (inicial)

	not_restart_x22:


	ret

;;=====================================================================
;;=====================================================================
;;FUNCIONES PRIVADAS
;;=====================================================================
;;=====================================================================
