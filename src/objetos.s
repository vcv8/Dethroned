.area _CODE

.include "cpctelera.h.s"
.include "objetos.h.s"
.include "protagonista.h.s"

;;======================================================================
;;======================================================================
;; DATOS PRIVADOS
;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
;;======================================================================
;;======================================================================


.macro defineObject name, x, y, w, h, spr

	 name'_datos:

		name'_x: .db x 			;; Pos x
		name'_y: .db y			;; Pos y
		name'_w: .db w 			;; Ancho
		name'_h: .db h		  	;; Alto de enemigo 8 lineas (8 bytes)
		name'_colision: .db -1  	;; Para saber si ha colisionado o no
		name'_recogido: .db #0  	;; recogido= 0 --> Sin recoger / recogido=1 --> Objeto recogido
		name'_random: .db #1 		;; Esta variable no sirve para nada
		name'_random1: .db #1 		;; Esta variable no sirve para nada
		name'_random2: .db #1 		;; Esta variable no sirve para nada
		name'_random3: .db #1 		;; Esta variable no sirve para nada
		name'_random4: .db #1 		;; Esta variable no sirve para nada
		name'_random5: .db #1 		;; Esta variable no sirve para nada
		name'_sprite: .db spr		;; Referencia al sprite correspondinte en el array de sprites
		name'_matado: .db #0		;; 1 si el objeto ha sido eliminada del mapa actual

	.endm


defineObject llave, 38, 110, 3, 4, 25
defineObject pocion, 38, 110, 4, 8, 24
	
;; ARRAY DE POSICIONES DE LAS CORONAS
posiciones:
	.db #00, #00 				;; NIVEL 0 NO EXISTE
	.db #00, #00
	.db #00, #00
	.db #00, #00
	.db #49, #95
	.db #60, #98
	.db #75, #40
	.db #00, #00
	.db #60, #40
	.db #03, #13

;; ARRAY DE POSICIONES DE LAS POCIONES
posiciones2:
	.db #00, #00 				;; NIVEL 0 NO EXISTE
	.db #00, #00
	.db #03, #81
	.db #71, #45
	.db #00, #00
	.db #00, #00
	.db #00, #00
	.db #36, #95
	.db #00, #00
	.db #00, #00


;;=====================================================================
;;=====================================================================
;;FUNCIONES PUBLICAS
;;=====================================================================
;;=====================================================================


;;=================================================================================
;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DEl OBJETO LLAVE
;; MODIFICA : IX
;; DEVUELVE : 
;;		IX: Puntero a los datos de la llave
;;=================================================================================

llave_getPtrIX::


	ld ix, #llave_datos

	ret


;;=================================================================================
;; FUNCION GLOBAL QUE OBTIENE EL PUNTERO IY PARA GUARDAR LOS DATOS DEl OBJETO LLAVE
;; MODIFICA : IY
;; DEVUELVE : 
;;		IY: Puntero a los datos de la llave
;;=================================================================================

llave_getPtrIY::


	ld iy, #llave_datos

	ret


pocion_getPtrIX::


	ld ix, #pocion_datos

	ret

pocion_getPtrIY::


	ld iy, #pocion_datos

	ret

;;=================================================================================
;; FUNCION GLOBAL PARA COMPROBAR SI EL OBJETO QUE SE PASA POR IY 
;; MODIFICA : IY
;; DEVUELVE : 
;;		IY: Puntero a los datos de la llave
;;=================================================================================

comprobar_recogido::

	ld a, 4(iy) 				;; A = name_colision
	cp #1
	ret nz 					;; Si no es 1, quiere decir que no ha habido colision

	ld a, #1
	ld 5(iy), a  				;; name_recogido = 1

	ret


;;=================================================================================
;; FUNCION GLOBAL PARA ACTUALIZAR POSICION CORNOA/LLAVE AL CAMBIAR NIVEL
;; INPUTS:
;;		A -> Indice del array de posiciones correspondiente al nivel actual
;; MODIFICA : A, HL
;;=================================================================================

update_corona::

	ld 	de, #posiciones
	ld	l, a
	ld 	h, #0x00
	add 	hl,hl	                     	;; Multiplying HL by 2
	add 	hl, de				;; The address of the element: DE + HL = ArrayAddress + Index * 2
	ld	a, (hl)				;; |
	ld 	(llave_x), a 			;; A contains the new X value
  	inc 	hl				;; | 
  	ld	a, (hl)				;; |
  	ld 	(llave_y), a 			;; A contains the new Y value

  	ld 	a, #0				;;
  	ld 	(llave_recogido), a		;; Restart de RECOGIDO value to 0

  	ld	a, (llave_matado)
  	cp 	#1
  	jr 	nz, nohabiacorona

  	call spriteAnormal

	nohabiacorona:
  	ld 	a, #0				;;
  	ld 	(llave_matado), a		;; Restart de MATADO value to 0

  	

	ret

update_pocion::

	ld 	de, #posiciones2
	ld	l, a
	ld 	h, #0x00
	add 	hl,hl	                     	;; Multiplying HL by 2
	add 	hl, de				;; The address of the element: DE + HL = ArrayAddress + Index * 2
	ld	a, (hl)				;; |
	ld 	(pocion_x), a 			;; A contains the new X value
  	inc 	hl				;; | 
  	ld	a, (hl)				;; |
  	ld 	(pocion_y), a 			;; A contains the new Y value

  	ld 	a, #0				;;
  	ld 	(pocion_recogido), a		;; Restart de RECOGIDO value to 0

  	ld	a, (pocion_matado)
  	cp 	#1
  	jr 	nz, nohabiapocion

	nohabiapocion:
  	ld 	a, #0				;;
  	ld 	(pocion_matado), a		;; Restart de MATADO value to 0

  	

	ret

;;=================================================================================
;; FUNCION GLOBAL SET MATADO A 1
;; MODIFICA : A
;;=================================================================================
coronaIsMatada::

	ld 	a, #1
	ld 	(llave_matado), a

	ret

PocionIsMatada::

	ld 	a, #1
	ld 	(pocion_matado), a

	ret



;;=====================================================================
;;=====================================================================
;;FUNCIONES PRIVADAS
;;=====================================================================
;;=====================================================================


