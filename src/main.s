.area _DATA


.area _CODE

.include "cpctelera.h.s"
.include "protagonista.h.s"
.include "dibujar.h.s"
.include "enemigo.h.s"
.include "hud.h.s"
.include "mapas.h"
.include "bala.h.s"
.include "objetos.h.s"

.globl _g_palette


ralentizacion: .db #1 			;; Variable para reducir a la mitad la velocidad
contEnemigo: .db #1 			;; Para saber si eliminar el enemigo o no


string: .asciz "Press INTRO"
string2:.asciz "for start"
string3: .asciz "GAME OVER"
win: .asciz "YOU WIN!"
;;=============================================================
;;     Inicializacion del Amstrad CPC al empezar el juego
;;  Establecemos la paleta y el modo y desactivamos el firmware
;; 
;;=============================================================
inicializarCPC:


       call cpct_disableFirmware_asm 			;; Desactivamos el firmware no queremos que interfiera en nuestro juego
       ld c,#0						;; 
       call cpct_setVideoMode_asm 			;; Ponemos modo de video 0 (160x200, 16 colours)

       ld hl, #_g_palette				;;
       ld de, #16 					;;
       call cpct_setPalette_asm 			;; Establecemos la paleta

       ld hl, #0x1E10
      

       call cpct_setPALColour_asm

        

 ret

;;=============================================================
;; 		Inicializacion del MENU del juego
;; 
;;=============================================================
inicializarMenu:

	call	hud_title					;; Draws the title screen

    	inmenu:

	    	;; We are going to call draw String, and we have to push parameters
	   ;; to the stack first (as the function recovers it from there).
	   ld   hl, #string  ;; HL = Pointer to the start of the string
	   ld   de, #0xC420  ;; DE = Pointer to video memory location where the string will be drawn
	   ld   bc, #0x0006  ;; B = Background colour, C = Foreground colour

	   call cpct_drawStringM0_asm ;; Call the string drawing function

	   ld   hl, #string2  ;; MENU 
	   ld   de, #0xC514  
	   ld   bc, #0x0006  

	   call cpct_drawStringM0_asm 

    	call checkMenu
    	cp #1
    	jr nz,  inmenu

    	call hud_ertitle
    

 ret


restarvida:
	cp #0xFF
 	call	z, losehp

 	ret

losehp:
		ld	a, #1	
 		call 	hud_erase			;; Decrements hero hp in one
 		call 	hud_getHP			;; Gets current hero HP			
 		ld	a, (hl)
 		cp 	#0
 		jr	nz, kg  

 			;; If (hp <=0)
 		
 			call	hud_title		;; Draws the title screen

 			ld   hl, #string3  ;; HL = GAME OVER
   			ld   de, #0xC655  ;; DE = Pointer to video memory location where the string will be drawn
   			ld   bc, #0x0006  ;; B = Background colour, C = Foreground colour
   			call cpct_drawStringM0_asm ;; Call the string drawing function

   			infi:
 			jr	infi


		kg:
	ret

;;=============================================
;; FUNCION PARA REDUCIR LA VELOCIDAD A LA MITAD
;; MODIFICA : ralentizacion
;;=============================================
reducirVelocidadMitad:


	ld a, (ralentizacion)
	xor #1
	ld (ralentizacion), a

	ret
;;===================================================
;; 	  FUNCION PARA MATAR LOS ENEMIGOS
;; MODIFICA : contEnemigo1
;;===================================================
matarEnemigo:

	ld a, (contEnemigo)
	cp #0
	ret z

	dec a
	ld (contEnemigo), a
	call borrar_entidad


  ret


;;============================================================================
;;  FUNCION PARA RESETEAR EL CONTADOR PARA MATAR LOS ENEMIGOS DE CADA NIVEL
;; MODIFICA : contEnemigo1
;;============================================================================
 resetearMuerteEnemigo:

     ld a, #1
    ld (contEnemigo), a

  ret

 ;;===================================================
;; 	  FUNCION PARA MATAR CORONA
;; MODIFICA : contEnemigo1
;;===================================================
matarCorona:

	ld a, 13(ix)
	cp #1
	jr z, endmatarCorona

	ld a, 5(ix)
	cp #1
	jr z, mataCor


	call dibujar_entidad

	jp endmatarCorona

	mataCor:
	
	call coronaIsMatada
	call spriteAcorona 
	call borrar_entidad

	endmatarCorona:
  	ret

matarVida:

	ld a, 13(ix)
	cp #1
	jr z, endmatarPocion

	ld a, 5(ix)
	cp #1
	jr z, matarPocion


	call dibujar_entidad

	jp endmatarPocion

	matarPocion:
	
	call PocionIsMatada
	call borrar_entidad
	ld a, #1
	call hud_draw

	endmatarPocion:
  	ret
;;=======================================
;; 	  PROGRAMA PRINCIPAL MAIN
;;========================================
_main::


    call inicializarCPC 					;; Inicializacion del AMSTRAD CPC

    volver_empezar:
    
    call inicializarMenu 					;; Iniciamos el MENU del juego

    call mapa_draw						;; Pintamos el mapa		

    call	hud_getPtrIX					;; Gets Pointer for Hero X in HL 
    ld 		a, 14(ix)					;; CARGAMOS 3 COMO INPUT PARA HUD_DRAW 
    call 	hud_draw					;; Draws HUD Hearts, with INPUT A as number of HEARTS

	;;BUCLE PRINCIPAL
	main_loop:


		call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		call llave_getPtrIY

		call borrar_entidad 				;; BORRAMOS EL PROTA
		call prota_update 				;; ACTUALIZAMOS EL PROTA
		call dibujar_entidad 				;; DIBUJAMOS EL PROTA
				


		ld a, nivel(ix) 				;; Guardamos el nivel donde se encuentra el protagonista
		cp #1 						;;
		jr nz, no_nivel_1 				;; CONTROLAMOS EL NIVEL DONDE NOS ENCONTRAMOS

		;;=========================================================================================================
		;; NIVEL 1	
		;;
		;;=========================================================================================================
		
		;;ENEMIGO 1	
		
		
		call enemigo1_getPtrIX
		
		ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		cp 	#1 					;;
		call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
		jr 	z, EnemMuerto			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS

		call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO

		call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD
		jr z, no_nivel_1

		call minuevaposicion

		call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		call enemigo1_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		call checkColision 			;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		

		ld a, 8(ix) 				;; A = prota_atack_right
		cp #-1
		jr z, nomata 				;; Solo si estamos atacando podemos matar

			ld 	a, 4(iy)
			cp 	#1
			jr 	nz, nomata 

				;MATA
				ld 	5(iy), #1
				jr EnemMuerto
		
		nomata:	

		;; BALAS ENEMIGO 1

		call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		call b1_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO

		call restarvida

		call b1_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		call borrar_entidad
		call bala_update
		call dibujar_entidad 				;; DIBUJAMOS LA BALA

		EnemMuerto:

		jp sincronizado 				;; Finalizamos iteracción del bucle

		no_nivel_1:

		   ld a, nivel(ix) 				;; Guardamos el nivel donde se encuentra el protagonista
		   cp #2
		   jp nz, no_nivel_2

		   ;;=========================================================================================================
		   ;; NIVEL 2	
		   ;;
		   ;;=========================================================================================================
		   
		   call pocion_getPtrIY
		   call checkColision 				;; Comprobamos colision con la llave
		   call comprobar_recogido

		   call pocion_getPtrIX
		   call matarVida 				


		   ;;ENEMIGO 2

		   call resetearMuerteEnemigo

		   call enemigo2_getPtrIX 

		   ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		   cp 	#1 					;;
		   call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
		   jr 	z, EnemMuerto2			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS

		   call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 2
		   
		   call minuevaposicion

		   call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   call enemigo2_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   call checkColision 	

		   ld a, 8(ix) 				;; A = prota_atack_right
		   cp #-1
		   jr z, nomata2 			;; Solo si estamos atacando podemos matar

			 ld 	a, 4(iy)
			 cp 	#1
			 jr 	nz, nomata2 

				;MATA
				ld 	5(iy), #1
				jr EnemMuerto2

		   nomata2:
		   ;; BALAS ENEMIGO 2

		   call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   call b2_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO

		   call restarvida 				;; QUITAMOS VIDA AL PROTA SI CHOCAMOS CON UNA BALA

		   call b2_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		   call borrar_entidad
		   call bala_update
		   call dibujar_entidad 			;; DIBUJAMOS LA BALA

		   EnemMuerto2:

		   ;;ENEMIGO 3 

		   call resetearMuerteEnemigo

		   call enemigo3_getPtrIX 

		   ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		   cp 	#1 					;;
		   call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
		   jr 	z, EnemMuerto6			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS

		   call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 3
		   
		   
		   call minuevaposicion

		   call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   call enemigo3_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   call checkColision 	

		   ld a, 7(ix) 				;; A = prota_atack_right
		   cp #-1
		   jr z, nomata6 			;; Solo si estamos atacando podemos matar

			 ld 	a, 4(iy)
			 cp 	#1
			 jr 	nz, nomata6 

				;MATA
				ld 	5(iy), #1
				jr EnemMuerto6

	           nomata6:

		   call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD A LA MITAD
		   jr z, no_nivel_2
		    ;; BALAS ENEMIGO 3

		   call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   call b3_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO

		   call restarvida

		   call b3_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		   call borrar_entidad
		   call bala_update
		   call dibujar_entidad 			;; DIBUJAMOS LA BALA

		   EnemMuerto6:

		   jp sincronizado 				;; Finalizamos iteracción del bucle

		   no_nivel_2:
 		

 		      ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
		      cp #3
		      jp nz, no_nivel_3

		      	 ;;=========================================================================================================
		     	 ;; NIVEL 3
		      	 ;;	
		      	 ;;=========================================================================================================		

		      	call pocion_getPtrIY
		   	call checkColision 				;; Comprobamos colision con la llave
		  	call comprobar_recogido

		      	 call pocion_getPtrIX
		   	 call matarVida


		      	 ;;ENEMIGO 4

		      	 call resetearMuerteEnemigo

		         call enemigo7_getPtrIX 

		         ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		   	 cp 	#1 					;;
		   	 call	z, matarEnemigo			;; Si hay colision matamos el enemigo
		   	 jr 	z, EnemMuerto3			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS

		         call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO 2
		   
		         call minuevaposicion

		         call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   	 call enemigo7_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   	 call checkColision 	

		   	 ld a, 8(ix) 				;; A = prota_atack_right
		   	 cp #-1
		    	 jr z, nomata3 			;; Solo si estamos atacando podemos matar

				 ld 	a, 4(iy)
				 cp 	#1
				 jr 	nz, nomata3 

					;MATA
					ld 	5(iy), #1
					jr EnemMuerto3

			nomata3:

		          ;; BALAS ENEMIGO 4

		         call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		         call b9_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		         call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO

		         call restarvida

		         call b9_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		         call borrar_entidad
		         call bala_update
		         call dibujar_entidad 				;; DIBUJAMOS LA BALA 

		         EnemMuerto3:

		         ;;ENEMIGO 5

		         call resetearMuerteEnemigo

		         call enemigo8_getPtrIX 


		         ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		   	 cp 	#1 					;;
		   	 call	z, matarEnemigo			;; Si hay colision matamos el enemigo
		   	 jr 	z, EnemMuerto7	

		         call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO 2
		   
		         call minuevaposicion

		         call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   	 call enemigo8_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   	 call checkColision 	

		   	 ld a, 7(ix) 				;; A = prota_atack_right
		   	 cp #-1
		    	 jr z, nomata7 			;; Solo si estamos atacando podemos matar

				 ld 	a, 4(iy)
				 cp 	#1
				 jr 	nz, nomata7 

					;MATA
					ld 	5(iy), #1
					jr EnemMuerto7

			nomata7:

		         ;; BALAS ENEMIGO 5

		         call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		         call b10_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		         call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO

		         call restarvida

		         call b10_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		         call borrar_entidad
		         call bala_update
		         call dibujar_entidad 				;; DIBUJAMOS LA BALA 

		         EnemMuerto7:

		         ;;ENEMIGO 6

		         call enemigo9_getPtrIX 

		         call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD A LA MITAD
		      	 jr z, no_nivel_3

		         call borrar_entidad
		         call enemigo9_update
		         call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO
		   
		         call minuevaposicion

		          ;;BALAS ENEMIGO 6

		          call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          call b11_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          call restarvida

		          call b11_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		          call borrar_entidad
		          call bala_update
		          call dibujar_entidad 				;; DIBUJAMOS LA BALA

		          call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          call b12_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          call restarvida

		          call b12_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
		          call borrar_entidad
		          call bala_update
		          call dibujar_entidad 				;; DIBUJAMOS LA BALA

		          call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          call b13_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO	
		          call restarvida

		          call b13_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 3
		          call borrar_entidad
		          call bala_update
		          call dibujar_entidad 				;; DIBUJAMOS LA BALA

		         jp sincronizado 				;; Finalizamos iteracción del bucle

		      no_nivel_3:

		      	 ;; LEVEL 4 (arreglar velocidades)

 		         ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
		         cp #4
		         jp nz, no_nivel_4

		      	 ;;=========================================================================================================
		      	 ;; NIVEL 4
		      	 ;;	
		      	 ;;=========================================================================================================		


			   call llave_getPtrIY
			   call checkColision 				;; Comprobamos colision con la llave
			   call comprobar_recogido

		 	   call llave_getPtrIX
			   call matarCorona				;; Comprueba si has cogido la corona, para eliminarla del mapa



			   ;ENEMIGO 7

			   call resetearMuerteEnemigo

			   call enemigo10_getPtrIX 

			   ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		   	   cp 	#1 					;;
		   	   call	z, matarEnemigo			;; Si hay colision matamos el enemigo
		   	   jr 	z, EnemMuerto4			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS


		           call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 2
		   
		           call minuevaposicion

		           call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   	   call enemigo10_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   	   call checkColision 	

		   	   ld a, 8(ix) 				;; A = prota_atack_right
		   	   cp #-1
		    	   jr z, nomata4 			;; Solo si estamos atacando podemos matar

				 ld 	a, 4(iy)
				 cp 	#1
				 jr 	nz, nomata4 

					;MATA
					ld 	5(iy), #1
					jr EnemMuerto4

			nomata4:
		           ;; BALAS ENEMIGO 7

		           call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		           call b14_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		           call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO

		           call restarvida

		           call b14_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		           call borrar_entidad
		           call bala_update
		           call dibujar_entidad 				;; DIBUJAMOS LA BALA  
				
			   EnemMuerto4:

			   jp sincronizado 				;; Finalizamos iteracción del bucle

		         no_nivel_4:


 		           ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
		           cp #5
		           jp nz, no_nivel_5
	

		             ;;=========================================================================================================
		      	     ;; NIVEL 5
		      	     ;;	
		      	     ;;=========================================================================================================		

			     call llave_getPtrIY
			     call checkColision 				;; Comprobamos colision con la llave
			     call comprobar_recogido

		 	     call llave_getPtrIX
			     call matarCorona


			     ;ENEMIGO 8

			     call resetearMuerteEnemigo

			     call enemigo11_getPtrIX 

			     ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		   	     cp 	#1 					;;
		   	     call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
		   	     jr 	z, EnemMuerto5			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS


		             call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 2
		   
		             call minuevaposicion

		             call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   	     call enemigo11_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   	     call checkColision 	

		   	      ld a, 8(ix) 				;; A = prota_atack_right
		   	      cp #-1
		    	      jr z, nomata5 				;; Solo si estamos atacando podemos matar

				 ld 	a, 4(iy)
				 cp 	#1
				 jr 	nz, nomata5 

					;MATA
					ld 	5(iy), #1
					jr EnemMuerto5

			     nomata5:

		             call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		             call b15_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		             call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO

		             call restarvida

		             call b15_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		             call borrar_entidad
		             call bala_update
		             call dibujar_entidad 				;; DIBUJAMOS LA BALA 

		             EnemMuerto5:

		             ;ENEMIGO 9
		             call resetearMuerteEnemigo

			     call enemigo12_getPtrIX 

			     ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		   	     cp 	#1 					;;
		   	     call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
		   	     jr 	z, EnemMuerto8			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS


		             call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 2
		   
		             call minuevaposicion

		             call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   	     call enemigo12_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   	     call checkColision 	

		   	      ld a, 7(ix) 				;; A = prota_atack_right
		   	      cp #-1
		    	      jr z, nomata8 				;; Solo si estamos atacando podemos matar

				 ld 	a, 4(iy)
				 cp 	#1
				 jr 	nz, nomata8 

					;MATA
					ld 	5(iy), #1
					jr EnemMuerto8

			     nomata8:

		             call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		             call b16_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		             call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO

		             call restarvida

		             call b16_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		             call borrar_entidad
		             call bala_update
		             call dibujar_entidad 				;; DIBUJAMOS LA BALA 

		             
		             EnemMuerto8:

			     jp sincronizado 				;; Finalizamos iteracción del bucle

			   no_nivel_5:

			   
			     ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
		             cp #6
		             jp nz, no_nivel_6

		          	;;=========================================================================================================
		      		;; NIVEL 6
		      		;;	
		      		;;=========================================================================================================		


		      		call llave_getPtrIY
			   	call checkColision 				;; Comprobamos colision con la llave
			   	call comprobar_recogido

		 	   	call llave_getPtrIX
			   	call matarCorona				;; Comprueba si has cogido la corona, para eliminarla del mapa

		             	;;ENEMIGO 10

		               	call enemigo16_getPtrIX

		         	call borrar_entidad
		         	call enemigo9_update
		         	call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO
		   		
		   		;call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD A LA MITAD
		      	 	;jp z, no_nivel_6

		        	call minuevaposicion

		         	 ;;BALAS ENEMIGO 10

		          	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b20_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		         	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	call restarvida

		          	call b20_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA

		         	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b21_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	call restarvida

		          	call b21_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA

		          	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b22_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO	
		          	call restarvida

		          	call b22_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 3
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA

		          	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b23_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO	
		          	call restarvida

		          	call b23_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 3
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
			     
		          	jp sincronizado 				;; Finalizamos iteracción del bucle

			     no_nivel_6:

			     ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
		             cp #7
		             jp nz, no_nivel_7

			             
		             ;;=========================================================================================================
			     ;; NIVEL 7
			     ;;
			     ;;=========================================================================================================
			

			     call pocion_getPtrIY
		   	     call checkColision 				;; Comprobamos colision con la llave
		  	     call comprobar_recogido

		      	     call pocion_getPtrIX
		   	     call matarVida

			     ;;ENEMIGO 17	
		
		
			    call resetearMuerteEnemigo

		            call enemigo17_getPtrIX 

		            ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		   	    cp 	#1 					;;
		   	    call	z, matarEnemigo			;; Si hay colision matamos el enemigo
		   	    jr 	z, EnemMuerto17			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS

		            call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO 2
		   	    
		   	    call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD A LA MITAD
		      	    jp z, no_nivel_7

		            call minuevaposicion

		            call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   	    call enemigo17_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   	    call checkColision 	

		   	    ld a, 8(ix) 				;; A = prota_atack_right
		   	    cp #-1
		    	    jr z, nomata17 			;; Solo si estamos atacando podemos matar

				 ld 	a, 4(iy)
				 cp 	#1
				 jr 	nz, nomata17 

					;MATA
					ld 	5(iy), #1
					jr EnemMuerto17

			       nomata17:


			        call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b24_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		         	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	call restarvida

		          	call b24_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA

		         	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b25_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	call restarvida

		          	call b25_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA


			       EnemMuerto17:

		         	jp sincronizado

   			     no_nivel_7:

   			       ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
		               cp #8
		               jp nz, no_nivel_8


		               ;;=========================================================================================================
			       ;; NIVEL 8
			       ;;
			       ;;=========================================================================================================
				
				call llave_getPtrIY
			   	call checkColision 				;; Comprobamos colision con la llave
			   	call comprobar_recogido

		 	   	call llave_getPtrIX
			   	call matarCorona

			       ;;ENEMIGO 18	
				
				call resetearMuerteEnemigo

		            	call enemigo18_getPtrIX 

		            	ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
		   	    	cp 	#1 					;;
		   	    	call	z, matarEnemigo			;; Si hay colision matamos el enemigo
		   	    	jr 	z, EnemMuerto18			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS

		            	call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO 2
		   	    
		            	call minuevaposicion

		            	call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		   	    	call enemigo18_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		   	    	call checkColision 	

		   	   	 ld a, 8(ix) 				;; A = prota_atack_right
		   	    	cp #-1
		    	    	jr z, nomata18 			;; Solo si estamos atacando podemos matar

				 	ld 	a, 4(iy)
				 	cp 	#1
				 	jr 	nz, nomata18 

						;MATA
						ld 	5(iy), #1
						jr EnemMuerto18

			       nomata18:

			        call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b26_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		         	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	call restarvida

		          	call b26_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA

		          	;call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	;call b33_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		         	;call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	;call restarvida

		          	;call b33_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		          	;call borrar_entidad
		          	;call bala_update
		          	;call dibujar_entidad 				;; DIBUJAMOS LA BALA

		      
		          	
			       EnemMuerto18:

			       ;; ENEMIGO 19

			        call enemigo19_getPtrIX

		         	call borrar_entidad
		         	call enemigo9_update
		         	call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO

		         	call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD
				jr z, no_nivel_8

		         	call minuevaposicion

		         	 ;;BALAS ENEMIGO 10

		         	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b27_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		         	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	call restarvida

		          	call b27_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA

		         	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b28_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	call restarvida

		          	call b28_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA


		          	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	call b30_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	call restarvida

		          	call b30_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
		          	call borrar_entidad
		          	call bala_update
		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA

		               jp sincronizado


		               no_nivel_8:


		                 ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
		                 cp #9
		                 jp nz, no_nivel_9


		                     call llave_getPtrIY
			   	     call checkColision 				;; Comprobamos colision con la llave
			   	     call comprobar_recogido

		 	   	     call llave_getPtrIX
			   	     call matarCorona

		                     ;; ENEMIGO 21
		                     call enemigo21_getPtrIX

		         	     call borrar_entidad
		         	     call enemigo9_update
		         	     call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO

		         	     call minuevaposicion

		         	     call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	     call b29_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		         	     call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	     call restarvida

		          	     call b29_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		          	     call borrar_entidad
		          	     call bala_update
		          	     call dibujar_entidad 				;; DIBUJAMOS LA BALA
		   

		         	     ;; ENEMIGO 20
		                     call enemigo20_getPtrIX

		         	     call borrar_entidad
		         	     call enemigo9_update
		         	     call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO

		         	     call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD
				     jr z, no_nivel_9

		         	     call minuevaposicion

		         	     call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	     call b31_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		         	     call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	     call restarvida

		          	     call b31_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
		          	     call borrar_entidad
		          	     call bala_update
		          	     call dibujar_entidad 				;; DIBUJAMOS LA BALA

		         	     call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
		          	     call b32_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
		          	     call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
		          	     call restarvida

		          	     call b32_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
		          	     call borrar_entidad
		          	     call bala_update
		          	     call dibujar_entidad 				;; DIBUJAMOS LA BALA

		          	     

		                 jp sincronizado


		                 no_nivel_9:

		                 
		                   ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
		               	   cp #10
		                   jp nz, no_nivel_10

		                   	call hud_getPtrFIN
		                   	call dibujar_entidad	

			             	;; FIN DEL JUEGO TE HAS PASADO EL JUEGO
			            	 ld   hl, #win  
	   			     	ld   de, #0xC655  
	   			     	ld   bc, #0x0006  

	   			     	call cpct_drawStringM0_asm 
	   			     	;; BUCLE INFINITO
	   			     	fin: 
	   			     	jr fin			             


		                   no_nivel_10:

		                     

		                        	    


		               	  


		sincronizado:

		call cpct_waitVSYNC_asm    			;; FUNCION DE cpctelera que permite hacer HALTS sincronizado con el raster


	jp main_loop

