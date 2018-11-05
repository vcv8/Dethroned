.area _CODE

;======================================================================
;;======================================================================
;; DATOS PRIVADOS
;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
;;======================================================================
;;======================================================================


.macro defineBala num, x, y, w, h, l, r, d, s, ralt

  	num'_datos:

		num'_x: .db x		  ;; x Inicial
		num'_y: .db y		  ;; y Inicial
		num'_w: .db w		  ;; Ancho
		num'_h: .db h		  ;; Alto de enemigo 8 lineas (8 bytes)
		num'_col: .db #0	  ;; Estado de Colision, !1 (No colisiona), 1 (Colisiona)
		num'_xi: .db x		  ;; x Actual 
		num'_yi: .db y		  ;; y Actual
		num'_l: .db l		  ;; Limite de recorrido de la bala, num de posiciones maximas que puede avanzar
		num'_li: .db l		  ;; l inicial
		num'_r: .db r		  ;; Retardo de salida de la bala
		num'_dir: .db d	  	  ;; Shooting direction, 0 (Rigth), 1(Left)
		num'_random: .db -1 		;, Esta variable no sirve para nada
		num'_sprite: .db s	
		num'_ralt: .db ralt	  ;; Retardo de salida alternativo, necesatio cuando hay colision con hero


.endm

.equ	b_x, 	0
.equ	b_y, 	1
.equ	b_w, 	2
.equ	b_h, 	3
.equ	b_col, 	4	
.equ	b_xi, 	5
.equ	b_yi, 	6
.equ	b_l, 	7
.equ	b_li, 	8
.equ	b_r, 	9
.equ	b_dir,	10
.equ    b_rand, 11
.equ    b_sprite, 12
.equ 	b_ralt, 13

newposX: .db 0
newposY: .db 0

defineBala b1, 65, 116, 1, 4, 55, 0, 1, 22, 8  		;; NIVEL 1 (nombre, x, y, ancho, alto, recorrido, retardo, direcc)

defineBala b2, 80-2, 112, 1, 4, 65, 40, 1, 22, 12	;; NIVEL 2
defineBala b3, 9, 80, 1, 4, 55, 0, 0, 23, 8 		;; NIVEL 2

defineBala b9, 68, 112, 1, 4, 56, 40, 1, 22, 12 	;; NIVEL 3
defineBala b10, 20, 84, 1, 4, 40, 35, 0, 23, 15 	;; NIVEL 3

defineBala b11, 64, 50, 1, 4, 60, 18, 1, 22, 0 		;; NIVEL 3
defineBala b12, 64, 50, 1, 4, 60, 35, 1, 22, 0 		;; NIVEL 3
defineBala b13, 64, 50, 1, 4, 60, 0, 1, 22, 0 		;; NIVEL 3

defineBala b14, 70, 116, 1, 4, 60, 0, 1, 22, 12		;; NIVEL 4

defineBala b15, 80-2, 116, 1, 4, 60, 0, 1, 22, 8 	;; NIVEL 5
defineBala b16, 9, 84, 1, 4, 60, 40, 0, 23, 12		;; NIVEL 5

defineBala b20, 64, 110, 1, 4, 57, 0, 1, 22, 0 		;; NIVEL 6
defineBala b21, 64, 110, 1, 4, 57, 15, 1, 22, 0 	;; NIVEL 6
defineBala b22, 64, 110, 1, 4, 57, 30, 1, 22, 0 	;; NIVEL 6
defineBala b23, 64, 110, 1, 4, 57, 45, 1, 22, 0 	;; NIVEL 6

defineBala b24, 65, 112, 1, 4, 57, 0, 1, 22, 0 		;; NIVEL 7
defineBala b25, 65, 112, 1, 4, 57, 20, 1, 22, 0		;; NIVEL 7


defineBala b26, 66, 112, 1, 4, 50, 0, 1, 22, 8 		;; NIVEL 8
defineBala b33, 66, 112, 1, 4, 55, 32, 1, 22, 8 	;; NIVEL 8
defineBala b27, 9, 52, 1, 4, 62, 0, 0, 23, 0 		;; NIVEL 8
defineBala b28, 9, 52, 1, 4, 62, 15, 0, 23, 0 		;; NIVEL 8
defineBala b30, 9, 52, 1, 4, 62, 30, 0, 23, 0 		;; NIVEL 8

defineBala b29, 9, 75, 1, 4, 45, 20, 0, 23, 0 		;; NIVEL 9
defineBala b31, 65, 50, 1, 4, 45, 0, 1, 22, 0 		;; NIVEL 9
defineBala b32, 65, 50, 1, 4, 45, 20, 1, 22, 0 		;; NIVEL 9



;;=====================================================================
;;=====================================================================
;;FUNCIONES PUBLICAS
;;=====================================================================
;;=====================================================================

;;==============================================================================
;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE LA BALA 1
;; MODIFICA : IX
;; DEVUELVE : 
;;		IX: Puntero a los datos del enemigo
;;===============================================================================
b1_getPtrIX::

	ld ix, #b1_datos

	ret

b1_getPtrIY::

	ld iy, #b1_datos

	ret

b2_getPtrIX::

	ld ix, #b2_datos

	ret

b2_getPtrIY::

	ld iy, #b2_datos

	ret

b3_getPtrIX::

	ld ix, #b3_datos

	ret

b3_getPtrIY::

	ld iy, #b3_datos

	ret
b9_getPtrIX::

	ld ix, #b9_datos

	ret

b9_getPtrIY::

	ld iy, #b9_datos

	ret
b10_getPtrIX::

	ld ix, #b10_datos

	ret

b10_getPtrIY::

	ld iy, #b10_datos

	ret
b11_getPtrIX::

	ld ix, #b11_datos

	ret

b11_getPtrIY::

	ld iy, #b11_datos

	ret
b12_getPtrIX::

	ld ix, #b12_datos

	ret

b12_getPtrIY::

	ld iy, #b12_datos

	ret
b13_getPtrIX::

	ld ix, #b13_datos

	ret

b13_getPtrIY::

	ld iy, #b13_datos

	ret

b14_getPtrIX::

	ld ix, #b14_datos

	ret

b14_getPtrIY::

	ld iy, #b14_datos

	ret

b15_getPtrIX::

	ld ix, #b15_datos

	ret

b15_getPtrIY::

	ld iy, #b15_datos

	ret

b16_getPtrIX::

	ld ix, #b16_datos

	ret

b16_getPtrIY::

	ld iy, #b16_datos

	ret

b20_getPtrIX::

	ld ix, #b20_datos

	ret

b20_getPtrIY::

	ld iy, #b20_datos

	ret

b21_getPtrIX::

	ld ix, #b21_datos

	ret

b21_getPtrIY::

	ld iy, #b21_datos

	ret

b22_getPtrIX::

	ld ix, #b22_datos

	ret

b22_getPtrIY::

	ld iy, #b22_datos

	ret

b23_getPtrIX::

	ld ix, #b23_datos

	ret

b23_getPtrIY::

	ld iy, #b23_datos

	ret

b24_getPtrIX::

	ld ix, #b24_datos

	ret

b24_getPtrIY::

	ld iy, #b24_datos

	ret
b25_getPtrIX::

	ld ix, #b25_datos

	ret

b25_getPtrIY::

	ld iy, #b25_datos

	ret

b26_getPtrIX::

	ld ix, #b26_datos

	ret

b26_getPtrIY::

	ld iy, #b26_datos

	ret
b27_getPtrIX::

	ld ix, #b27_datos

	ret

b27_getPtrIY::

	ld iy, #b27_datos

	ret
b28_getPtrIX::

	ld ix, #b28_datos

	ret

b28_getPtrIY::

	ld iy, #b28_datos

	ret
b29_getPtrIX::

	ld ix, #b29_datos

	ret

b29_getPtrIY::

	ld iy, #b29_datos

	ret
b30_getPtrIX::

	ld ix, #b30_datos

	ret

b30_getPtrIY::

	ld iy, #b30_datos

	ret

b31_getPtrIX::

	ld ix, #b31_datos

	ret

b31_getPtrIY::

	ld iy, #b31_datos

	ret

b32_getPtrIX::

	ld ix, #b32_datos

	ret

b32_getPtrIY::

	ld iy, #b32_datos

	ret

b33_getPtrIX::

	ld ix, #b33_datos

	ret

b33_getPtrIY::

	ld iy, #b33_datos

	ret


minuevaposicion::

	ld	a, 0(ix)
	ld 	(newposX), a
	ld	a, 1(ix)
	ld 	(newposY), a

	ret

;;==============================================================================
;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE LA BALA
;; MODIFICA : 	A,
;; INPUT:  	IX: Puntero con los datos de la bala a modificar.
;; DEVUELVE : 
;;===============================================================================

bala_update::

	dec	b_col(iy)
	jr	nz, nocolision 

	ld 	a, b_ralt(ix)	;; retardo (actual) = retardo (alternativo)
	ld 	b_r(ix), a
	ld 	a, b_xi(ix)
	ld	b_x(ix), a 	;; x (actual) = xi (inicial)
	ld 	a, b_yi(ix)
	ld	b_y(ix), a 	;; y (actual) = yi (inicial)
	ld 	a, b_li(ix)
	ld	b_l(ix), a 	;;

	nocolision:
	ld a, b_dir(ix)
	cp #1
	jr z, izq

	;; DERECHA
	ld 	a, (newposX)
	inc a
	inc a
	inc a

	ld  	b_xi(ix), a
	ld	a, (newposY)
	inc a
	inc a
	inc a
	ld	b_yi(ix), a

	;; Move Obsacle to the left
	ld 	a, b_r(ix)
	cp  	#0
	jr 	z, mueve1

	dec 	b_r(ix)
	jr	nz, not_restart_x1

	mueve1:
	
	inc	b_x(ix)			;; b_xa --
	dec 	b_l(ix)			;; b_la --
	jr 	nz, not_restart_x1	;; If (Obs_x == 0)then not_restart_x
	
		;; Restart_x when it is 0
		ld 	a, b_xi(ix)
		ld	b_x(ix), a 	;; x (actual) = xi (inicial)
		ld 	a, b_yi(ix)
		ld	b_y(ix), a 	;; y (actual) = yi (inicial)
		ld 	a, b_li(ix)
		ld	b_l(ix), a 	;;

	not_restart_x1:

	ret
	

	izq:
	;; IZQUIERDA
	ld 	a, (newposX)
	dec	a
	dec	a
	ld  	b_xi(ix), a
	ld	a, (newposY)
	inc a
	inc a
	inc a
	ld	b_yi(ix), a

	;; Move Obsacle to the left
	ld 	a, b_r(ix)
	cp  	#0
	jr 	z, mueve2

	dec 	b_r(ix)
	jr	nz, not_restart_x2

	mueve2:
	
	dec	b_x(ix)			;; b_xa --
	dec 	b_l(ix)			;; b_la --
	jr 	nz, not_restart_x2	;; If (Obs_x == 0)then not_restart_x
	
		;; Restart_x when it is 0
		ld 	a, b_xi(ix)
		ld	b_x(ix), a 	;; x (actual) = xi (inicial)
		ld 	a, b_yi(ix)
		ld	b_y(ix), a 	;; y (actual) = yi (inicial)
		ld 	a, b_li(ix)
		ld	b_l(ix), a 	;;

	not_restart_x2:

	ret

