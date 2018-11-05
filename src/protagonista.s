.area _CODE

.include "mapas.h"
.include "cpctelera.h.s"
.include "objetos.h.s"
.include "hud.h.s"

.include "keyboard/keyboard.s"  		;;METEMOS LA LIBRERIA DE TECLAS

;;======================================================================
;;======================================================================
;; DATOS PRIVADOS
;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
;;======================================================================
;;======================================================================

prota_datos:

	prota_x: .db #3			  	  ;; Esto definicion en bytes 
	prota_y: .db #109
	prota_w: .db #4 			  ;; Ancho de hero 8 pixeles (2 bytes)
	prota_h: .db #15				  ;; Alto de hero 8 lineas (8 bytes)
	prota_colision: .db #-1 	  ;; Para saber si ha colisionado
	prota_jump: .db #-1			  ;; prota_jump = -1 --> Salto inactivo /  prota_jump = -1 --> Salto activo 
	prota_down : .db #1			  ;; prota_down= 0 --> Salto hacia abajo / prota_down= 1 --> Salto hacia arriba
	prota_atack_left: .db #-1	
 	prota_atack_right: .db #-1	
	prota_move_right : .db -1     ;; Para saber si se esta moviendo a la derecha
	prota_move_left : .db -1 	  ;; 								a la izqda  
	prota_nivel : .db #1 		  ;; El nivel en el que se encuentra el protagonista
	prota_sprite: .db #0
	prota_dir: .db #0x01			;; Direccion en la que mira el personaje actualmente (1, hacia derecha, 0 hacia izquierda)
	prota_diri: .db #0x01			;; Direccion en la que debe mirar el pj (1, hacia derecha, 0 hacia izquierda)
	


.equ pos_x, 0
.equ pos_y, 1
.equ ancho, 2
.equ alto, 3
.equ colision, 4
.equ jump, 5
.equ down, 6	
.equ ataqueIzq, 7
.equ ataqueD, 8
.equ moveD, 9
.equ moveI, 10
.equ nivel, 11
.equ sprite, 12
.equ dir, 13
.equ diri, 14

cambioPisoUp: .db -1 			;; Para saber si estamos pulsando ESPACIO para cambior de piso
posCorrectaUp: .db -1 			;; Para saber si estamos en la posicion correcta para cambiar de piso

;;TABLA DE SALTO CORTO CON 12 VALORES (PARA ESQUIVAR)
 jumptableShort:
 	.db #-4, #-8, #-4, #-2    ;; PRIMER MOVIMIENTO (MAS RAPIDO) HACIA ARRIBA
 	.db #-1, #00, #00, #01	  ;; ME QUEDO QUIETO ARRIBA
 	.db #02, #04, #08, #04	  ;; BAJO CADA VEZ MAS RAPIDO
 	.db #00, #00, #00, #00
 	.db #0x080	  	  ;; FINAL DEL SALTO

;;TABLA DE SALTO LARGO CON 8 VALORES (PARA SUBIR DE PISO)
jumptableLarge:
 	.db #-4, #-8, #-8, #-12
 	.db #00, #00, #00, #00  
 	.db #00, #00, #00, #00
 	.db #00, #00, #00, #00  
 	.db #0x080	  	  ;; FINAL DEL SALTO				  

;;TABLA DE SALTO HACIA ABAJO (PARA BAJAR DE PISO)
jumptableDown:
 	.db #4, #8, #8, #12
 	.db #00, #00, #00, #00   	  
 	.db #00, #00, #00, #00 
 	.db #00, #00, #00, #00 
 	.db #0x080	  	;; FINAL DEL SALTO	

 ;;TABLA DE ATAQUE DERECHA 
 atackright:
 	.db #0, #0, #0, #1    	 
 	.db #1, #1, #1, #-2
 	.db #-2, #0, #0, #0
 	.db #0x080 				  ;; FINAL DEL ATAQUE
 	
 ;;TABLA DE ATAQUE IZQD
 atackleft:
 	.db #0, #0, #0, #-1    	  
 	.db #-1, #-1, #-1, #2
 	.db #2, #0, #0, #0
 	.db #0x080 				  ;; FINAL DEL ATAQUE



;;=====================================================================
;;=====================================================================
;;FUNCIONES PUBLICAS
;;=====================================================================
;;=====================================================================

;;=============================================================================
;; FUNCION GLOBAL QUE ACTUALIZA EL SPRITE DEL PROTA CUANDO COGE LA CORONA
;; MODIFICA : A
;;===============================================================================

spriteAcorona::


	ld 	a, (prota_sprite)
	add	#5
	ld 	(prota_sprite), a

	ret

;;==============================================================================
;; FUNCION GLOBAL QUE ACTUALIZA EL SPRITE DEL PROTA CUANDO AVANZA DE NIVEL Y PIERDE LA CORONA
;; MODIFICA : A
;;===============================================================================

spriteAnormal::


	ld 	a, (prota_sprite)
	sub	#5
	ld 	(prota_sprite), a

	ret


;;==============================================================================
;;   FUNCION GLOBAL QUE OBTIENE EL PUNTERO IX PARA GUARDAR LOS DATOS DE PROTA
;; MODIFICA : IX
;; DEVUELVE : 
;;		IX: Puntero a los datos del prota
;;===============================================================================

prota_getPtrIX::


	ld ix, #prota_datos

	ret



;;==============================================================================
;; 		     FUNCION GLOBAL QUE ACTUALIZA EL PROTA
;; MODIFICA : 
;;===============================================================================

prota_update::


	call cambioPisoControl 			;; Para controlar cuando cambiar de piso
	call jumpControl 			;; HAGO EL SALTO
	call atackControlLeft			;; HAGO EL ataque left
	call atackControlRight			;; HAGO EL ataque right
	call checkUserInput 			;; CONTROLO LO QUE INTRODUCEN POR TECLADO
	call dirControl

	ret



;;==============================================================================
;; 		    FUNCION GLOBAL PARA COMPROBAR COLISION 
;; INPUTS : 
;;			IX : Puntero que apunta los datos del  prota
;;			IY : Puntero que apunta a los datos de la entidad con la que colisiona
;; DEVUELVE :
;;
;;===============================================================================
checkColision::


	 ;;
	 ;;COLISION EN X
	 ;;
	 ;;Comprobamos si el obstaculo esta a la izquierda del hero

	 ;; if (obs_x + obs_w <hero_x) NO COLISION
	 ;;
	 ;; EQUIVALENTE obs_x + obs_w - hero_x <=0
	 ;;


	 ld c, 0(iy) 					;; C = ENTIDAD_X
	 ld a, 2(iy) 					;; A = ENTIDAD_W
	 add c 							;; A=obs_x + obs_w 
	 sub pos_x(ix)					;;Hace una resta con lo que hay en el acumulador con aqullo a lo que apunta iy (en este casoprota_x). (ent_x+ent_w)-prota_x

	 jr z, no_collision				;; if(<=0) Este comprueba si lo anterior da 0, en ese caso, no hay colision
	 jp m, no_collision				;; Si no da cero, comprueba si es positivo o no, si no lo es, Entonces no hay colision

	 ;;Comprobamos si esta a la derecha del hero

	 ;; if(hero_x+hero_w<=obs_x)
	 ;;
	 ;;hero_x+hero_w-obs_x <=0

	 ld a, pos_x(ix) 				;; A = PROTA_X
	 add ancho(ix) 					;; A= A(PROTA_X)+PROTA_W
	 ld c, a 						;; C = Ancho del prota
	 ld b, 0(iy) 					;; B = ENTIDAD_X
	 ld a, c						;; A=PROTA_X+PROTA_W
	 sub b 							;; A-B --> PROTA_X+PROTA_W-ENTIDAD_X


	 jr z, no_collision				;; if(<=0)
	 jp m, no_collision 			;; Si da menor que 0 no hay colision

	 ;; EL OBSTACULO NO ESTA NI A LA DERECHA NI A LA IZQUIERDA DE HERO. FALTA COMPROBAR SI ESTA EN Y
	 ;;
	 ;;COLISION EN Y
	 ;;Comprobamos si colisiona Por arriba

	 ;;
	 ;;if(hero_y+hero_h<=obs_y) NO COLISION
	 ;;
	 ;;hero_y+hero_h-obs_y<=0

	 ld a, pos_y(ix) 				;; A = prota_y
	 add alto(ix) 					;; A= prota_y + prota_h
	 ld c, a 						;; C = Alto del prota
	 ld b, 1(iy) 					;; B = ENTIDAD_Y
	 ld a, c						;; A= prota_y + prota_h
	 sub b 							;; A-B --> PROTA_X+PROTA_W-ENTIDAD_X


	 jr z, no_collision
	 jp m, no_collision

	 ;;Comprobamos  si colisiona por abajo

	 ;;
	 ;;if(obs_y+obs_h<=hero_y) NO COLISION
	 ;;
	 ;;obs_y+obs_h-hero_y<=0

	 ld c, 1(iy) 					;; C = ENTIDAD_Y
	 ld a, 3(iy) 					;; A = ENTIDAD_H
	 add c 							;; A=ENTIDAD_Y + ENTIDAD_H 
	 sub pos_y(ix)					;;Hace una resta con lo que hay en el acumulador con aqullo a lo que apunta iy (en este caso prota_y). (ent_y+ent_h)-prota_y

	 jr z, no_collision				;; if(<=0) Este comprueba si lo anterior da 0, en ese caso, no hay colision
	 jp m, no_collision				;; Si no da cero, comprueba si es positivo o no, si no lo es, Entonces no hay colision

	 ;;SE PRODUCE COLISION TANTO EN Y COMO EN X POR LO TANTO PINTAMOS 
	 ld a, #0xFF
	 ld 4(iy), #1 					;; Indicamos al enemigo que se ha producido colision
     ret 


     no_collision:
      ld a, #00
      ld 4(iy), #-1 				;; Indicamos al enemigo que no se ha producido colision
	ret

;;==============================================================================
;; 		FUNCION GLOBAL PARA MOSTRAR EL MENU O NO
;; INPUTS : 
;;
;; DEVUELVE :
;;
;;===============================================================================

checkMenu::

	call cpct_scanKeyboard_asm

	ld hl, #Key_Return 						;; HL= TECLA INTRO
	call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA D ESTA PULSADA
	cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
	jr z, ent_not_pressed					;;Solo saltara si lo anterior da cero

		;;INTRO ESTA PULSADA
		ld 	a, #1
		
	ent_not_pressed:

	ret

;;=====================================================================
;;=====================================================================
;;FUNCIONES PRIVADAS
;;=====================================================================
;;=====================================================================

;;==============================================================================
;; 	FUNCION PARA CONTROLAR LO QUE SE INTRODUCE POR TECLADO Y HACER ALGO
;; MODIFICA : 
;;===============================================================================
checkUserInput:

	call cpct_scanKeyboard_asm

	;;Input Parameters (2 Bytes)
	;;(2B HL) key	A 16-bit value containing a Matrix-Line(1B, L) and a BitMask(1B, H).

	;;COMPRUEBA SI LA TECLA D ESTA PULSADA

	ld hl, #Key_D 						;; HL= TECLA D
	call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA D ESTA PULSADA
	cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
	jr z, d_not_pressed					;;Solo saltara si lo anterior da cero

		;;D ESTA PULSADA ( MOVIMEINTO A LA DERECHA)

		ld a, #0
		ld (prota_move_right), a 		;; Right a 0 para indicar que nos movemos a la derecha
		ld a, #-1
		ld (prota_move_left), a 		;; Left a -1 para indicar que no nos movemos a la izqd

		call moveRight

		ld 	a, #0x01
		ld 	(prota_diri), a


		
	d_not_pressed:
    
		;;COMPRUEBA SI LA TECLA A ESTA PULSADA

		ld hl, #Key_A 						;; HL= TECLA A
		call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA A ESTA PULSADA
		cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
		jr z, a_not_pressed					;;Solo saltara si lo anterior da cero

			;;A ESTA PULSADA (MOVIMIENTO A LA IZQUIERDA)

			ld a, #-1
			ld (prota_move_right), a 		;; Right a -1 para indicar que no nos movemos a la derecha
			ld a, #0
			ld (prota_move_left), a 		;; Left a 0 para indicar que nos movemos a la izqd

			call moveLeft
			
			ld 	a, #0x00
			ld 	(prota_diri), a

		a_not_pressed:

			;;COMPRUEBA SI LA TECLA W ESTA PULSADA

			ld hl, #Key_W 						;; HL= TECLA W
			call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA W ESTA PULSADA
			cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
			jr z, w_not_pressed					;;Solo saltara si lo anterior da cero

			;;W ESTA PULSADA (SALTO)

			;;SOLAMENTE SALTAMOS SI ESTAMOS AGACHADO

			ld a, (prota_y)
			cp #13
			jr z, no_salto 						;; Si da cero quiere decir que estamos agachados por lo tanto no iniciamos el salto

			ld a, #1
			ld (prota_down), a

			call StartJump
			
			no_salto:


			w_not_pressed:

			;;COMPRUEBA SI LA TECLA S ESTA PULSADA 

				ld hl, #Key_S 						;; HL = S
				call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA S ESTA PULSADA
				cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
				jr z, s_not_pressed					;;Solo saltara si lo anterior da cero


			;;TECLA S PULSADA (SALTO HACIA ABAJO)

				ld a, (prota_y)
				cp #109
				jr z, s_not_pressed 					;; Solo si no estamos en la primera fila hacemos el salto hacia abajo

					ld a, #0
					ld (prota_down), a
					call StartJump

				;; NO PULSAMOS LA TECLA S
				s_not_pressed:

				;COMPRUEBA SI LA TECLA K ESTA PULSADA
				ld hl, #Key_K 						;; HL= TECLA K
				call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA k ESTA PULSADA
				cp #0								;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
				jr z, k_not_pressed					;;Solo ataca si lo anterior da cero

				;;K ESTA PULSADA (ATAQUE)

				
				ld a, (prota_move_left) 			;; A = prtoa_move_left
				cp #-1 
				jr z, ataque_der					;; Si da cero quiere decir que hay que atacar a la derecha

					;; No da cero entonces ataque a la izquierda
					call StartAtackLeft
					jr k_not_pressed

				;; Da cero entonces ataque derecha
				ataque_der:

				    call StartAtackRight

				k_not_pressed:

				;; COMPRUEBA SI LA TECLA ESPACIO ESTA PULSADA

				ld hl, #Key_Space 				;; HL = Space
				call cpct_isKeyPressed_asm			;; COMPRUEBA SI LA TECLA S ESTA PULSADA
				cp #0						;; Lo que hace es restar al registro A, un 0. Para poder comprobar despues si la tecla esta pulsada
				jr z, space_not_pressed				;;Solo saltara si lo anterior da cero

				;;ESPACIO ESTA PULSADA (CAMBIO DE PISO)
				ld a, (posCorrectaUp)
				cp #1
				jr nz, space_not_pressed 			;; Solo si estamos en la pos correcta cambiamos de piso

					ld a, #0
					ld (cambioPisoUp), a
					call StartJump

				 space_not_pressed:

	ret


;;==============================================================================
;; 			FUNCION PARA MOVER A LA IZQUIERDA
;; MODIFICA : AF
;;===============================================================================
moveLeft:

	ld a, (prota_x)					;;Metemos en a lo que hay donde apunta prota_x. Por eso parentesis
	cp #3							;; Comprueba si es la ptimera pos de la fila
	jr z, do_not_move_l				;;Saltara solo si es cero

		;;MOVE LEFT
		dec a
		ld (prota_x), a 					;; Actualizamos el valor de prota_x

		ret

	do_not_move_l:

		

	ret

;;==============================================================================
;;		      FUNCION PARA MOVER A LA DERECHA
;; MODIFICA : 
;;===============================================================================
moveRight:

	ld a, (prota_x)					;;Metemos en a lo que hay donde apunta prota_x. Por eso parentesis
	cp #80-4					;; Comprueba si es la ultima pos de la fila
	jr z, do_not_move_r				;;Saltara solo si es cero

		;;MOVE RIGHT 

		inc a
		ld (prota_x), a 			;; Actualizamos el valor de prota_x

		ret

	do_not_move_r:

	call avanzarNivel 				;; Llamamos a la funcion para poder avanzar al siguiente nivel

	ret


;;==============================================================================
;; 		 	FUNCION PARA CONTROLAR EL SALTO
;; MODIFICA : prota_jump, prota_y
;;===============================================================================
jumpControl:

	;; Comprobamos que tipo de salto hacer (Ariiba corto/Arriba largo/Abajo)
	
	ld a, (cambioPisoUp) 				
	cp #-1
	jr z, no_cambioPiso

	    ld hl, #jumptableLarge 				;; Salto largo cambio de piso
	    jr seguir_salto

	no_cambioPiso:

	ld a, (prota_down) 					;; Prota_Down=0 --> Salto Abajo/  Prota_Down=1 --> Salto Arriba
	cp #0
	jr nz, salto_arriba

		;; SALTO HACIA ABAJO (BAJAR PISO)

		ld hl, #jumptableDown 				;; Hay que hacer el salto hacia abajo
		jr seguir_salto

	salto_arriba: 						;; SALTAMOS HACIA ARRIBA

		ld hl, #jumptableShort				;; Cargamos en hl la posicion donde empieza la tabla de salto corto
		
	seguir_salto:

	;;Comprobamos si estamos saltando en este momento 
	ld a, (prota_jump)						;; A= estado de prota_jump
	cp #-1								;; A==-1? Comprueba si el valor que hay en a es igual a -1, para saber si estamos saltando
	ret z								;; Si A==-1, no salto. Si da 0 quiere decir que no estamos saltando por lo tanto salimos de la funcion

	;;Estamos saltando. Obtenemos el valor de prota_jump

	call jumpAnimation

	ld c, a 							;;
	ld b, #0							;; BC=A. Metemos en bc el valor de a, que contiene el indice de la tabla de saltos(el hero_jump)
	add hl, bc 							;; hl=hl+bc. Asi pasamos de la pos inicial de la tabla a la pos actual de la tabla donde se encuentra el hero 

	;;Comprobamos si estamos en el final del salto
	ld a, (hl)							;; Cargamos en A, el valor actual de la tabla que se encuentra en hl
	cp #0x80 							;; A==0x80? OJO! Solo se puede hacer cp al registro A
	jr z, end_of_jump 					;; Si da 0 quiere decir que hemos terminado el salto sino seguimos

	;;Movimiento del salto 
	ld b, a 							;;B = al indice de la tabla, es decir, el movimiento del salto
	ld a, (prota_y) 					;;A=(prota_y)
	add b 								;;A+=B Sumamos el movimiento del salto al valor y de nuestro heroe
	ld (prota_y), a 					;; Actualizamos el valor en prota_y

	;;Incremento del salto 

	ld a, (prota_jump)					;; A= prota_jump
	inc a 								;;
	ld (prota_jump), a 					;; prota_jump ++

	ret 
	
	;;Finalizamos el salto poniendo un -1 en el indice del salto
	end_of_jump:

	ld a, #-1							;;A=-1
	ld (prota_jump), a 					;; prota_jump=A
	ld (cambioPisoUp), a
	ret



;;==============================================================================
;; 			FUNCION PARA EMPEZAR EL SALTO
;; MODIFICA : prota_jump
;;===============================================================================
StartJump:

	ld a, (prota_jump)					;;A=hero_jump
	cp #-1
	ret nz 								;; Salto Activo. Salimos

	;; El salto esta inactivo
	ld a, #0							;;A=0. Inicializamos el valor a 0 para empezar el salto de nuevo
	ld (prota_jump), a

	ret

;;==============================================================================
;; 			FUNCION PARA EMPEZAR EL ataque left
;; MODIFICA : hero_atack_left
;;===============================================================================
StartAtackLeft:

	ld a, (prota_x)
	cp #0
	ret z								;; Solo si no estamos al principio del mapa podemos atacar, sino no ataca				

	ld a, (prota_atack_left)			;;A=prota_atack_left
	cp #-1
	ret nz 								;; ataque Activo. atacamos

	;; El ataque esta inactivo
	ld a, #0							;;A=0. Inicializamos el valor a 0 para empezar el ataque de nuevo
	ld (prota_atack_left), a

	ret

;;==============================================================================
;; 			FUNCION PARA EMPEZAR EL ataque right
;; MODIFICA : hero_atack_right
;;===============================================================================
StartAtackRight:

	ld a, (prota_x)
	cp #80-2
	ret z 								;; Solo si no estamos al final del mapa podemos atacar, sino no ataca

	ld a, (prota_atack_right)					;;A=prota_atack_right
	cp #-1
	ret nz 								;; ataque Activo. atacamos

	;; El ataque esta inactivo
	ld a, #0							;;A=0. Inicializamos el valor a 0 para empezar el ataque de nuevo
	ld (prota_atack_right), a

	ret

;;==============================================================================
;; 		    FUNCION PARA CONTROLAR EL ataque left
;; MODIFICA : 
;;===============================================================================
atackControlLeft:

	;;Comprobamos si estamos saltando en este momento 
	ld a, (prota_atack_left)			;; A= estado de hero_atack
	cp #-1								;; A==-1? Comprueba si el valor que hay en a es igual a -1, para saber si estamos saltando
	ret z								;; Si A==-1, no salto. Si da 0 quiere decir que no estamos saltando por lo tanto salimos de la funcion

	;;Estamos atacamos Obtenemos el valor de hero_atack
	ld hl, #atackleft 					;; Cargamos en hl la posicion donde empieza la tabla de ataque
	ld c, a 							;;
	ld b, #0							;; BC=A. Metemos en bc el valor de a, que contiene el indice de la tabla de saltos(el hero_jump)
	add hl, bc 							;; hl=hl+bc. Asi pasamos de la pos inicial de la tabla a la pos actual de la tabla donde se encuentra el hero 

	;;Comprobamos si estamos en el final del ataque
	ld a, (hl)							;; Cargamos en A, el valor actual de la tabla que se encuentra en hl
	cp #0x80 							;; A==0x80? OJO! Solo se puede hacer cp al registro A
	jr z, end_of_atack_left				;; Si da 0 quiere decir que hemos terminado el ataque sino seguimos

		;;Movimiento del ataque 
		ld b, a 						;;B = al indice de la tabla, es decir, el movimiento del ataque
		ld a, (prota_x) 				;;A=(hero_x)
		add b 							;;A+=B Sumamos el movimiento del ataque al valor y de nuestro heroe
		ld (prota_x), a 				;; Actualizamos el valor en hero_x

		;;Incremento del salto 

		ld a, (prota_atack_left)		;; A= hero_atack
		inc a 							;;
		ld (prota_atack_left), a 		;; hero_atack ++

		ret 
	
	;;Finalizamos el salto poniendo un -1 en el indice del ataque
	end_of_atack_left:

	ld a, #-1							;;A=-1
	ld (prota_atack_left), a 			;; hero_atack=A

	ret

;;==============================================================================
;; 		  FUNCION PARA CONTROLAR EL ataque right
;; MODIFICA : 
;;===============================================================================
atackControlRight:

	;;Comprobamos si estamos atacando en este momento 
	ld a, (prota_atack_right)			;; A= estado de hero_atack
	cp #-1								;; A==-2? Comprueba si el valor que hay en a es igual a -1, para saber si estamos saltando
	ret z								;; Si A==-1, no salto. Si da 0 quiere decir que no estamos saltando por lo tanto salimos de la funcion

	;;Estamos atacamos Obtenemos el valor de hero_atack
	ld hl, #atackright 					;; Cargamos en hl la posicion donde empieza la tabla de ataque
	ld c, a 							;;
	ld b, #0							;; BC=A. Metemos en bc el valor de a, que contiene el indice de la tabla de saltos(el hero_jump)
	add hl, bc 							;; hl=hl+bc. Asi pasamos de la pos inicial de la tabla a la pos actual de la tabla donde se encuentra el hero 

	;;Comprobamos si estamos en el final del ataque
	ld a, (hl)							;; Cargamos en A, el valor actual de la tabla que se encuentra en hl
	cp #0x80 							;; A==0x80? OJO! Solo se puede hacer cp al registro A
	jr z, end_of_atack 					;; Si da 0 quiere decir que hemos terminado el ataque sino seguimos

		;;Movimiento del ataque 
		ld b, a 						;;B = al indice de la tabla, es decir, el movimiento del ataque
		ld a, (prota_x) 				;;A=(hero_x)
		add b 							;;A+=B Sumamos el movimiento del ataque al valor y de nuestro heroe
		ld (prota_x), a 				;; Actualizamos el valor en hero_x

		;;Incremento del salto 

		ld a, (prota_atack_right)		;; A= hero_atack
		inc a 							;;
		ld (prota_atack_right), a 		;; prota_atack_right ++

		ret 
	
	;;Finalizamos el salto poniendo un -1 en el indice del ataque
	end_of_atack:

	ld a, #-1							;;A=-1
	ld (prota_atack_right), a 			;; prota_atack_right=A

	ret





;;===================================================================================
;; FUNCION PARA AVANZAR DE NIVEL DE DIFERENTES FORMAS EN FUNCION DEL NIVEL QUE ESTEMOS
;; MODIFICA : 
;;=================================================================================
avanzarNivel:

 		ld a, (prota_nivel)
		cp #10
		jp z, ultimo_nivel 			;; Solo si no estamos en el ultimo nivel (nivel 2) cambiaremos al siguiente nivel		

		   cp #1
		   jr nz, nivel_2

		   ;; LEVEL 1

		   push af 				;; Metemos en la pila el nivel_prota para despues poder inc
		   ld a, (prota_y)			;; A = pos_y del prota
		   cp #109 				;;
		   jp nz, ultimo_nivel 			;; Solo si estamos en la primera planta podemos avanzar de nivel
		   jp z, continuar

		    nivel_2:

		     cp #2
		     jr nz, nivel_3

		     ;;LEVEL 2

		     push af 				;; Metemos en la pila el nivel_prota para despues poder inc
		     ld a, (prota_y)			;; A = pos_y del prota
		     cp #77 				;;
		     jp nz, ultimo_nivel 		;; Solo se puede avanar al siguiente nivel desde la 2 fila
		     jp z, continuar

		      nivel_3:

		      cp #3
		      jr nz, nivel_4

		      ;; LEVEL 3

		      push af 				;; Metemos en la pila el nivel_prota para despues poder inc
		      ld a, (prota_y)			;; A = pos_y del prota
		      cp #13 				;; 		
		      jp nz, ultimo_nivel 		;; Solo se puede avanar al siguiente nivel desde la 3 fila
		      jr z, continuar

		       nivel_4:

		       cp #4
		       jr nz, nivel_5

		       ;; LEVEL 4

		        push af 			;; Metemos en la pila el nivel_prota para despues poder inc
		        ld a, (prota_y)			;; A = pos_y del prota
		        cp #109 				
		        jp nz, ultimo_nivel 	

		         ld a, 5(iy) 			;; A= llave_recogido
			 cp #1 				;;
			 jp nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
		         jp z, continuar

		        nivel_5:

		        cp #5
		        jr nz, nivel_6

		        ;; LEVEL 5

		        push af 			;; Metemos en la pila el nivel_prota para despues poder inc
		        ld a, (prota_y)			;; A = pos_y del prota
		        cp #77 				
		        jr nz, ultimo_nivel 	

		         ld a, 5(iy) 			;; A= llave_recogido
			 cp #1 				;;
			 jr nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
		         jr z, continuar

		          nivel_6:

		          cp #6
		          jr nz, nivel_7

		          ;; LEVEL 6

		          push af 			;; Metemos en la pila el nivel_prota para despues poder inc
		          ld a, (prota_y)		;; A = pos_y del prota
		          cp #13				
		          jr nz, ultimo_nivel 	

		          ld a, 5(iy) 			;; A= llave_recogido
			  cp #1 			;;
			  jr nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
		          jr z, continuar

		            nivel_7:

		            cp #7
		            jr nz, nivel_8

		            ;; LEVEL 7

		            push af 			;; Metemos en la pila el nivel_prota para despues poder inc
		            ld a, (prota_y)		;; A = pos_y del prota
		            cp #109				
		            jr nz, ultimo_nivel 	

		            

		              nivel_8:

		                cp #8
		          	jr nz, nivel_9

		          	;; LEVEL 8

		          	push af 			;; Metemos en la pila el nivel_prota para despues poder inc
		          	ld a, (prota_y)		;; A = pos_y del prota
		          	cp #13				
		          	jr nz, ultimo_nivel 	
 				    
 				     ld a, 5(iy) 			;; A= llave_recogido
			  	     cp #1 			;;
			  	     jr nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
		          	     jr z, continuar
		          		
		          	  nivel_9:

		          	  cp #9
		          	  jr nz, nivel_10

		          	  ;; LEVEL 9

		          	  push af 			;; Metemos en la pila el nivel_prota para despues poder inc
		          	  ld a, (prota_y)		;; A = pos_y del prota
		          	  cp #13				
		          	  jr nz, ultimo_nivel 	

		          		  ld a, 5(iy) 			;; A= llave_recogido
			  	     	 cp #1 			;;
			  	     	 jr nz, ultimo_nivel		;; Si no tenemos la llave no podemos avanzar
		          	     	 jr z, continuar

		          	  nivel_10:

		                  



		continuar:
			
		pop af 					;; A = prota_nivel
		inc a 					;; prota_nivel ++
		ld (prota_nivel), a

		call update_pocion
		ld a, (prota_nivel)
		call update_corona			;; Colocamos la corona en una nueva posicione correspondiente al nivel

		ld a, #3
		ld (prota_x), a         		;; Cambiamos la pos_x del prota al principio al avanzar de nivel

		ld a, #109				;;
		ld (prota_y), a 			;; Cambiamos la pos_y del prota al azanvar de nivel

		ld ix, #prota_datos
		call mapa_draw

		ret

		ultimo_nivel:

		pop af


 ret


 cambioPisoControl:

 	ld a, (prota_nivel)
 	cp #2
 	jr nz, level3

 	   ld a, (prota_x)
 	   cp #38
 	   jp nz, no_correcta

 	    ld a, (prota_y)
 	    cp #109
 	    jp nz, no_correcta

 	        ld a, #1 			;; 
 	        ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        ret 


 	level3:

 	  ld a, (prota_nivel)
 	  cp #3
 	  jr nz, level5

 	   ld a, (prota_x)
 	   cp #80-4
 	   jr nz, siguiente_salto

 	    ld a, (prota_y)
 	    cp #109
 	    jp nz, no_correcta

 	        ld a, #1 			;; 
 	        ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        ret 
 	   siguiente_salto:

 	   ld a, (prota_x)
 	   cp #3
 	   jr nz, siguiente_salto2

 	    ld a, (prota_y)
 	    cp #77
 	    jp nz, no_correcta

 	        ld a, #1 			;; 
 	        ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        ret 
 	   siguiente_salto2:

 	   ld a, (prota_x)
 	   cp #38
 	   jp nz, no_correcta

 	    ld a, (prota_y)
 	    cp #45
 	    jp nz, no_correcta

 	        ld a, #1 			;; 
 	        ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        ret 

 	   level5:
	     
	     ld a, (prota_nivel)
 	     cp #5
 	     jr nz, level6

 	   	ld a, (prota_x)
 	   	cp #38
 	   	jr nz, siguiente_salto

 	    	   ld a, (prota_y)
 	    	   cp #109
 	    	   jp nz, no_correcta

 	        	ld a, #1 			;; 
 	        	ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        	ret  	    
 	      level6:

 	        ld a, (prota_nivel)
 	  	cp #6
 	 	jr nz, level8

 	  	 ld a, (prota_x)
 	   	 cp #80-4
 	  	 jr nz, siguiente_salto3

 	    		ld a, (prota_y)
 	    		cp #109
 	    		jp nz, no_correcta

 	        		ld a, #1 			;; 
 	       			ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        		ret 
 	       	siguiente_salto3:

 	   	ld a, (prota_x)
 	   	cp #3
 	   	jr nz, siguiente_salto4

 	    		ld a, (prota_y)
 	    		cp #77
 	    		jp nz, no_correcta

 	        		ld a, #1 			;; 
 	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        		ret 

 	   	siguiente_salto4:

 	   	ld a, (prota_x)
 	   	cp #38
 	   	jp nz, no_correcta

 	    		ld a, (prota_y)
 	    		cp #45
 	    		jp nz, no_correcta

 	        		ld a, #1 			;; 
 	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        		ret 
 	     	        

 	        level8:

	 	ld a, (prota_nivel)
 	  	cp #8
 	 	jr nz, level9

 	  	 ld a, (prota_x)
 	   	 cp #80-4
 	  	 jr nz, siguiente_salto5

 	    		ld a, (prota_y)
 	    		cp #109
 	    		jp nz, no_correcta

 	        		ld a, #1 			;; 
 	       			ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        		ret 
 	       	siguiente_salto5:

 	   	ld a, (prota_x)
 	   	cp #3
 	   	jr nz, siguiente_salto6

 	    		ld a, (prota_y)
 	    		cp #77
 	    		jp nz, no_correcta

 	        		ld a, #1 			;; 
 	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        		ret 

 	   	siguiente_salto6:

 	   	ld a, (prota_x)
 	   	cp #38
 	   	jp nz, no_correcta

 	    		ld a, (prota_y)
 	    		cp #45
 	    		jp nz, no_correcta

 	        		ld a, #1 			;; 
 	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        		ret     


 	        level9:

 	        ld a, (prota_nivel)
 	  	cp #9
 	 	ret nz

 	  	 ld a, (prota_x)
 	   	 cp #80-4
 	  	 jr nz, siguiente_salto7

 	    		ld a, (prota_y)
 	    		cp #109
 	    		jp nz, no_correcta

 	        		ld a, #1 			;; 
 	       			ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        		ret 
 	       	siguiente_salto7:

 	   	ld a, (prota_x)
 	   	cp #3
 	   	jr nz, siguiente_salto8

 	    		ld a, (prota_y)
 	    		cp #77
 	    		jp nz, no_correcta

 	        		ld a, #1 			;; 
 	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        		ret 

 	   	siguiente_salto8:

 	   	ld a, (prota_x)
 	   	cp #38
 	   	jp nz, no_correcta

 	    		ld a, (prota_y)
 	    		cp #45
 	    		jp nz, no_correcta

 	        		ld a, #1 			;; 
 	        		ld (posCorrectaUp), a           ;; Estamos en la pos correcta
 	        		ret     

 	        	

 	   no_correcta:

 	     ld a, #-1
 	     ld (posCorrectaUp), a
 ret

 ;;==============================================================================
;; FUNCION PARA MODIFICAR LOS SPRITES QUE CORRESPONDEDN AL SALTO DEL PERSONAJE
;; MODIFICA : A, aunque almacena 
;;===============================================================================
jumpAnimation:

	push af

	cp	#0
	jr nz, sig
	
		;;ld 	a, #8
		;;ld 	(prota_sprite), a
		ld 	a, (prota_sprite)
		add	#1
		ld 	(prota_sprite), a
		jp 	animated

	sig:
	cp	#4
	jr nz, sig1

		;;ld 	a, #9
		;;ld 	(prota_sprite), a
		ld 	a, (prota_sprite)
		add	#1
		ld 	(prota_sprite), a
		jp 	animated

	sig1:
	cp	#8
	jr nz, sig2

		;;ld 	a, #10
		;;ld 	(prota_sprite), a
		ld 	a, (prota_sprite)
		add	#1
		ld 	(prota_sprite), a
		jp 	animated

	sig2:
	cp	#12
	jr nz, sig3

		;;ld 	a, #11
		;;ld 	(prota_sprite), a
		ld 	a, (prota_sprite)
		add	#1
		ld 	(prota_sprite), a
		jp 	animated

	sig3:
	cp	#16
	jr nz, animated

		;;ld 	a, #6
		;;ld 	(prota_sprite), a
		ld 	a, (prota_sprite)
		sub	#4
		ld 	(prota_sprite), a

	animated:
	pop af

	ret

;;==============================================================================
;; FUNCION PARA MODIFICAR LOS SPRITES QUE CORRESPONDEDN AL SALTO DEL PERSONAJE
;; MODIFICA : A,
;;===============================================================================
dirControl:

	
	ld	a, (prota_diri)
	cp	dir(ix)
	jr	z, looking_good

	cp	#0x00
	jr	nz, other

	ld 	a, #10
	add	sprite(ix)
	ld 	(prota_sprite), a 
	
	;;ld 	a, #0x01
	;;ld	(prota_dir), a

	jp 	noother

	other:

	ld 	a, sprite(ix)
	sub	#10
	ld 	(prota_sprite), a 

	;;ld 	a, #0x00
	;;ld	(prota_dir), a

	noother:
	ld 	a, (prota_dir)
	xor   	#0x01                   ;; Switch looking direction (0->1, or 1->0)
	ld	(prota_dir), a
	jp 	enddirControl

	looking_good:
	;;ld 	a, sprite(ix)
	;;add	#1
	;;ld 	(prota_sprite), a 

	enddirControl:
	ret