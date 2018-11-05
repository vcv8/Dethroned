.area _CODE


;;======================================================================
;;======================================================================
;; DATOS PRIVADOS
;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
;;======================================================================
;;======================================================================


.include "cpctelera.h.s"
.include "protagonista.h.s"
.include "mapas.h"

.globl _sprite_protile3_00
.globl _sprite_protile3_01
.globl _sprite_protile3_02
.globl _sprite_protile3_03
.globl _sprite_protile3_04
.globl _sprite_protile3_05
.globl _sprite_protile3_06	
.globl _sprite_protile3_07
.globl _sprite_protile3_08
.globl _sprite_protile3_09
.globl _sprite_protile3_10
.globl _sprite_protile3_11
.globl _sprite_protile3_12
.globl _sprite_protile3_13
.globl _sprite_protile3_14
.globl _sprite_protile3_15
.globl _sprite_protile3_16
.globl _sprite_protile3_17
.globl _sprite_protile3_18
.globl _sprite_protile3_19	

.globl _stor_torreta3_0
.globl _stor_torreta3_1
.globl _sbala_bala3_0
.globl _sbala_bala3_1
.globl _sheart_heart2
.globl _scrown_coronasola
.globl _sfin_fin2
 

spriteArray:
	.dw _sprite_protile3_00
	.dw _sprite_protile3_01
	.dw _sprite_protile3_02
	.dw _sprite_protile3_03
	.dw _sprite_protile3_04
	.dw _sprite_protile3_05
	.dw _sprite_protile3_06
	.dw _sprite_protile3_07
	.dw _sprite_protile3_08
	.dw _sprite_protile3_09
	.dw _sprite_protile3_10
	.dw _sprite_protile3_11
	.dw _sprite_protile3_12
	.dw _sprite_protile3_13
	.dw _sprite_protile3_14
	.dw _sprite_protile3_15
	.dw _sprite_protile3_16
	.dw _sprite_protile3_17
	.dw _sprite_protile3_18
	.dw _sprite_protile3_19
	.dw _stor_torreta3_0
	.dw _stor_torreta3_1
	.dw _sbala_bala3_0
	.dw _sbala_bala3_1
	.dw _sheart_heart2
	.dw _scrown_coronasola
	.dw _sfin_fin2

;;=====================================================================
;;=====================================================================
;;FUNCIONES PUBLICAS
;;=====================================================================
;;=====================================================================

;;==============================================================================
;; FUNCION GLOBAL QUE PERMITE DIBUJAR UNA ENTIDAD
;; MODIFICA : 
;;===============================================================================

dibujar_entidad::

	
	ld a, #0xFF 				;; A = Color Rojo 
	

	call dibujado


	ret 


;;==============================================================================
;; FUNCION GLOBAL QUE BORRA LA ENTIDAD
;; MODIFICA : 
;;===============================================================================
borrar_entidad::


	ld a, #0x00			;;COLOR FONDO
	
   	call mapa_redraw 		;; Redibujado
 
 	ret


;;=====================================================================
;;=====================================================================
;;FUNCIONES PRIVADAS
;;=====================================================================
;;=====================================================================


;;=======================================
;; FUNCION PARA PINTAR UNA ENTIDAD
;;		IX -> Puntero a los datos de la entidad
;;      A -> COLOR
;,		bc -> TAM CUADRADO
;; MODIFICA : AF, BC, DE, HL
;;========================================

dibujado:

	cp #0x00
	jr z, borra

	call	select_sprite
	push bc						;; Almacena en HL el sprite seleccionado en sel_sprite

	;;CALCULAR POSICION EN PANTALLA

	ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
	ld c, pos_x(ix) 				;; IX es el registro indice que nos permite acceder a los datos de la entidad (en este caso: entity_x, entity_y.) C= entity_x
	ld b, pos_y(ix) 				;; B=entity_y Aqui indicamos la fila donde empieza y en c la columna (Coord X e Y)				
	call cpct_getScreenPtr_asm      		;; COGER PUNTERO DE PANTALLA

	;; PINTAR SPRITE

	pop 	de							;; Se extrae de la pila el sprite anteriormente seleccionado
	ex 	de, hl  						;; Intercambia valores entre los dos registros, ya que nosotros lo queremos en de y venia en hl
	;;ld	hl, (bc)
	ld 	c, ancho(ix)						;; C = ancho entidad ( en bytes!)
	ld 	b, alto(ix) 						;; B = alto entidad ( en bytes! = mismo numero de filas)
	call 	cpct_drawSprite_asm
	jp 	finaliza

	;; BORRAR SPRITE
	borra:
	
	ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
	ld c, pos_x(ix) 				;; IX es el registro indice que nos permite acceder a los datos de la entidad (en este caso: entity_x, entity_y.) C= entity_x
	ld b, pos_y(ix) 				;; B=entity_y Aqui indicamos la fila donde empieza y en c la columna (Coord X e Y)				
	call cpct_getScreenPtr_asm      		;; COGER PUNTERO DE PANTALLA

	
	ex 	de, hl  						;; Intercambia valores entre los dos registros, ya que nosotros lo queremos en de y venia en hl
	ld 	a, #0x00
	ld 	c, ancho(ix)						;; C = ancho entidad ( en bytes!)
	ld 	b, alto(ix) 						;; B = alto entidad ( en bytes! = mismo numero de filas)
	call 	cpct_drawSolidBox_asm

	pop 	hl							;; Se extrae de la pila el sprite anteriormente seleccionado

	finaliza:
	ret


;;==============================================================================
;; FUNCION GLOBAL PARA SELECCIONAR SPRITE A DIBUJAR
;; MODIFICA : HL, A
;;===============================================================================

select_sprite:


	ld 	de, #spriteArray 
	ld	l, sprite(ix)
	ld 	h, #0x00
  	add 	hl,hl	                     	;; Multiplying HL by 2
  	add 	hl,de                      	;; The address of the element: DE + HL = ArrayAddress + Index * 4
  	ld 	c,(hl)                     	;; We have the element in DEBC
  	inc 	hl				;; 
  	ld 	b,(hl)				;; 

 	ret