ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .area _DATA
                              2 
                              3 
                              4 .area _CODE
                              5 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                              6 .include "cpctelera.h.s"
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



                              7 .include "protagonista.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



                              8 .include "dibujar.h.s"
                              1 ;;====================================
                              2 ;; FUNCIONES PUBLICAS DE DIBUJAR
                              3 ;;====================================
                              4 
                              5 .globl dibujar_entidad
                              6 .globl borrar_entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                              9 .include "enemigo.h.s"
                              1 ;;====================================
                              2 ;; FUNCIONES PUBLICAS DE ENEMIGO
                              3 ;;====================================
                              4 
                              5 
                              6 .globl enemigo1_getPtrIX
                              7 .globl enemigo1_getPtrIY
                              8 .globl enemigo2_getPtrIX
                              9 .globl enemigo2_getPtrIY
                             10 .globl enemigo3_getPtrIX
                             11 .globl enemigo3_getPtrIY
                             12 .globl enemigo7_getPtrIX
                             13 .globl enemigo7_getPtrIY
                             14 .globl enemigo8_getPtrIX
                             15 .globl enemigo8_getPtrIY
                             16 .globl enemigo9_getPtrIX
                             17 .globl enemigo9_getPtrIY	
                             18 .globl enemigo10_getPtrIX
                             19 .globl enemigo10_getPtrIY
                             20 .globl enemigo11_getPtrIX
                             21 .globl enemigo11_getPtrIY
                             22 .globl enemigo12_getPtrIX
                             23 .globl enemigo12_getPtrIY
                             24 .globl enemigo16_getPtrIX
                             25 .globl enemigo16_getPtrIY
                             26 .globl enemigo17_getPtrIX
                             27 .globl enemigo17_getPtrIY
                             28 .globl enemigo18_getPtrIX
                             29 .globl enemigo18_getPtrIY
                             30 .globl enemigo19_getPtrIX
                             31 .globl enemigo19_getPtrIY
                             32 .globl enemigo20_getPtrIX
                             33 .globl enemigo20_getPtrIY
                             34 .globl enemigo21_getPtrIX
                             35 .globl enemigo21_getPtrIY
                             36 .globl enemigo9_update
                             37 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



                             10 .include "hud.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



                             11 .include "mapas.h"
                              1  ;;====================================
                              2  ;; FUNCIONES PUBLICAS DE MAPA  
                              3  ;;====================================
                              4 
                              5  .globl mapa_draw
                              6  .globl mapa_redraw
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



                             12 .include "bala.h.s"
                              1 ;;====================================
                              2 ;; FUNCIONES PUBLICAS DE LAS BALAS
                              3 ;;====================================
                              4 
                              5 .globl	b1_getPtrIX
                              6 .globl	b1_getPtrIY
                              7 .globl	b2_getPtrIX
                              8 .globl	b2_getPtrIY
                              9 .globl	b3_getPtrIX
                             10 .globl	b3_getPtrIY
                             11 .globl  b9_getPtrIX
                             12 .globl  b9_getPtrIY
                             13 .globl  b10_getPtrIX
                             14 .globl  b10_getPtrIY
                             15 .globl  b11_getPtrIX
                             16 .globl  b11_getPtrIY
                             17 .globl  b12_getPtrIX
                             18 .globl  b12_getPtrIY
                             19 .globl  b13_getPtrIX
                             20 .globl  b13_getPtrIY
                             21 .globl  b14_getPtrIX
                             22 .globl  b14_getPtrIY
                             23 .globl  b15_getPtrIX
                             24 .globl  b15_getPtrIY
                             25 .globl  b16_getPtrIX
                             26 .globl  b16_getPtrIY
                             27 .globl  b20_getPtrIX
                             28 .globl  b20_getPtrIY
                             29 .globl  b21_getPtrIX
                             30 .globl  b21_getPtrIY
                             31 .globl  b22_getPtrIX
                             32 .globl  b22_getPtrIY
                             33 .globl  b23_getPtrIX
                             34 .globl  b23_getPtrIY
                             35 .globl  b24_getPtrIX
                             36 .globl  b24_getPtrIY
                             37 .globl  b25_getPtrIX
                             38 .globl  b25_getPtrIY
                             39 .globl  b26_getPtrIX
                             40 .globl  b26_getPtrIY
                             41 .globl  b27_getPtrIX
                             42 .globl  b27_getPtrIY
                             43 .globl  b28_getPtrIX
                             44 .globl  b28_getPtrIY
                             45 .globl  b29_getPtrIX
                             46 .globl  b29_getPtrIY
                             47 .globl  b30_getPtrIX
                             48 .globl  b30_getPtrIY
                             49 .globl  b31_getPtrIX
                             50 .globl  b31_getPtrIY
                             51 .globl  b32_getPtrIX
                             52 .globl  b32_getPtrIY
                             53 .globl  b33_getPtrIX
                             54 .globl  b33_getPtrIY
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



                             55 .globl  minuevaposicion
                             56 .globl	bala_update
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



                             13 .include "objetos.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



                             14 
                             15 .globl _g_palette
                             16 
                             17 
   4BB1 01                   18 ralentizacion: .db #1 			;; Variable para reducir a la mitad la velocidad
   4BB2 01                   19 contEnemigo: .db #1 			;; Para saber si eliminar el enemigo o no
                             20 
                             21 
   4BB3 50 72 65 73 73 20    22 string: .asciz "Press INTRO"
        49 4E 54 52 4F 00
   4BBF 66 6F 72 20 73 74    23 string2:.asciz "for start"
        61 72 74 00
   4BC9 47 41 4D 45 20 4F    24 string3: .asciz "GAME OVER"
        56 45 52 00
   4BD3 59 4F 55 20 57 49    25 win: .asciz "YOU WIN!"
        4E 21 00
                             26 ;;=============================================================
                             27 ;;     Inicializacion del Amstrad CPC al empezar el juego
                             28 ;;  Establecemos la paleta y el modo y desactivamos el firmware
                             29 ;; 
                             30 ;;=============================================================
   4BDC                      31 inicializarCPC:
                             32 
                             33 
   4BDC CD 5E 56      [17]   34        call cpct_disableFirmware_asm 			;; Desactivamos el firmware no queremos que interfiera en nuestro juego
   4BDF 0E 00         [ 7]   35        ld c,#0						;; 
   4BE1 CD 51 56      [17]   36        call cpct_setVideoMode_asm 			;; Ponemos modo de video 0 (160x200, 16 colours)
                             37 
   4BE4 21 8C 36      [10]   38        ld hl, #_g_palette				;;
   4BE7 11 10 00      [10]   39        ld de, #16 					;;
   4BEA CD 1A 54      [17]   40        call cpct_setPalette_asm 			;; Establecemos la paleta
                             41 
   4BED 21 10 1E      [10]   42        ld hl, #0x1E10
                             43       
                             44 
   4BF0 CD 2D 54      [17]   45        call cpct_setPALColour_asm
                             46 
                             47         
                             48 
   4BF3 C9            [10]   49  ret
                             50 
                             51 ;;=============================================================
                             52 ;; 		Inicializacion del MENU del juego
                             53 ;; 
                             54 ;;=============================================================
   4BF4                      55 inicializarMenu:
                             56 
   4BF4 CD E5 43      [17]   57 	call	hud_title					;; Draws the title screen
                             58 
   4BF7                      59     	inmenu:
                             60 
                             61 	    	;; We are going to call draw String, and we have to push parameters
                             62 	   ;; to the stack first (as the function recovers it from there).
   4BF7 21 B3 4B      [10]   63 	   ld   hl, #string  ;; HL = Pointer to the start of the string
   4BFA 11 20 C4      [10]   64 	   ld   de, #0xC420  ;; DE = Pointer to video memory location where the string will be drawn
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   4BFD 01 06 00      [10]   65 	   ld   bc, #0x0006  ;; B = Background colour, C = Foreground colour
                             66 
   4C00 CD 3F 54      [17]   67 	   call cpct_drawStringM0_asm ;; Call the string drawing function
                             68 
   4C03 21 BF 4B      [10]   69 	   ld   hl, #string2  ;; MENU 
   4C06 11 14 C5      [10]   70 	   ld   de, #0xC514  
   4C09 01 06 00      [10]   71 	   ld   bc, #0x0006  
                             72 
   4C0C CD 3F 54      [17]   73 	   call cpct_drawStringM0_asm 
                             74 
   4C0F CD 6B 45      [17]   75     	call checkMenu
   4C12 FE 01         [ 7]   76     	cp #1
   4C14 20 E1         [12]   77     	jr nz,  inmenu
                             78 
   4C16 CD E9 43      [17]   79     	call hud_ertitle
                             80     
                             81 
   4C19 C9            [10]   82  ret
                             83 
                             84 
   4C1A                      85 restarvida:
   4C1A FE FF         [ 7]   86 	cp #0xFF
   4C1C CC 20 4C      [17]   87  	call	z, losehp
                             88 
   4C1F C9            [10]   89  	ret
                             90 
   4C20                      91 losehp:
   4C20 3E 01         [ 7]   92 		ld	a, #1	
   4C22 CD CC 43      [17]   93  		call 	hud_erase			;; Decrements hero hp in one
   4C25 CD E1 43      [17]   94  		call 	hud_getHP			;; Gets current hero HP			
   4C28 7E            [ 7]   95  		ld	a, (hl)
   4C29 FE 00         [ 7]   96  		cp 	#0
   4C2B 20 11         [12]   97  		jr	nz, kg  
                             98 
                             99  			;; If (hp <=0)
                            100  		
   4C2D CD E5 43      [17]  101  			call	hud_title		;; Draws the title screen
                            102 
   4C30 21 C9 4B      [10]  103  			ld   hl, #string3  ;; HL = GAME OVER
   4C33 11 55 C6      [10]  104    			ld   de, #0xC655  ;; DE = Pointer to video memory location where the string will be drawn
   4C36 01 06 00      [10]  105    			ld   bc, #0x0006  ;; B = Background colour, C = Foreground colour
   4C39 CD 3F 54      [17]  106    			call cpct_drawStringM0_asm ;; Call the string drawing function
                            107 
   4C3C                     108    			infi:
   4C3C 18 FE         [12]  109  			jr	infi
                            110 
                            111 
   4C3E                     112 		kg:
   4C3E C9            [10]  113 	ret
                            114 
                            115 ;;=============================================
                            116 ;; FUNCION PARA REDUCIR LA VELOCIDAD A LA MITAD
                            117 ;; MODIFICA : ralentizacion
                            118 ;;=============================================
   4C3F                     119 reducirVelocidadMitad:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



                            120 
                            121 
   4C3F 3A B1 4B      [13]  122 	ld a, (ralentizacion)
   4C42 EE 01         [ 7]  123 	xor #1
   4C44 32 B1 4B      [13]  124 	ld (ralentizacion), a
                            125 
   4C47 C9            [10]  126 	ret
                            127 ;;===================================================
                            128 ;; 	  FUNCION PARA MATAR LOS ENEMIGOS
                            129 ;; MODIFICA : contEnemigo1
                            130 ;;===================================================
   4C48                     131 matarEnemigo:
                            132 
   4C48 3A B2 4B      [13]  133 	ld a, (contEnemigo)
   4C4B FE 00         [ 7]  134 	cp #0
   4C4D C8            [11]  135 	ret z
                            136 
   4C4E 3D            [ 4]  137 	dec a
   4C4F 32 B2 4B      [13]  138 	ld (contEnemigo), a
   4C52 CD DB 49      [17]  139 	call borrar_entidad
                            140 
                            141 
   4C55 C9            [10]  142   ret
                            143 
                            144 
                            145 ;;============================================================================
                            146 ;;  FUNCION PARA RESETEAR EL CONTADOR PARA MATAR LOS ENEMIGOS DE CADA NIVEL
                            147 ;; MODIFICA : contEnemigo1
                            148 ;;============================================================================
   4C56                     149  resetearMuerteEnemigo:
                            150 
   4C56 3E 01         [ 7]  151      ld a, #1
   4C58 32 B2 4B      [13]  152     ld (contEnemigo), a
                            153 
   4C5B C9            [10]  154   ret
                            155 
                            156  ;;===================================================
                            157 ;; 	  FUNCION PARA MATAR CORONA
                            158 ;; MODIFICA : contEnemigo1
                            159 ;;===================================================
   4C5C                     160 matarCorona:
                            161 
   4C5C DD 7E 0D      [19]  162 	ld a, 13(ix)
   4C5F FE 01         [ 7]  163 	cp #1
   4C61 28 16         [12]  164 	jr z, endmatarCorona
                            165 
   4C63 DD 7E 05      [19]  166 	ld a, 5(ix)
   4C66 FE 01         [ 7]  167 	cp #1
   4C68 28 06         [12]  168 	jr z, mataCor
                            169 
                            170 
   4C6A CD D5 49      [17]  171 	call dibujar_entidad
                            172 
   4C6D C3 79 4C      [10]  173 	jp endmatarCorona
                            174 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   4C70                     175 	mataCor:
                            176 	
   4C70 CD 09 53      [17]  177 	call coronaIsMatada
   4C73 CD F3 44      [17]  178 	call spriteAcorona 
   4C76 CD DB 49      [17]  179 	call borrar_entidad
                            180 
   4C79                     181 	endmatarCorona:
   4C79 C9            [10]  182   	ret
                            183 
   4C7A                     184 matarVida:
                            185 
   4C7A DD 7E 0D      [19]  186 	ld a, 13(ix)
   4C7D FE 01         [ 7]  187 	cp #1
   4C7F 28 18         [12]  188 	jr z, endmatarPocion
                            189 
   4C81 DD 7E 05      [19]  190 	ld a, 5(ix)
   4C84 FE 01         [ 7]  191 	cp #1
   4C86 28 06         [12]  192 	jr z, matarPocion
                            193 
                            194 
   4C88 CD D5 49      [17]  195 	call dibujar_entidad
                            196 
   4C8B C3 99 4C      [10]  197 	jp endmatarPocion
                            198 
   4C8E                     199 	matarPocion:
                            200 	
   4C8E CD 0F 53      [17]  201 	call PocionIsMatada
   4C91 CD DB 49      [17]  202 	call borrar_entidad
   4C94 3E 01         [ 7]  203 	ld a, #1
   4C96 CD BE 43      [17]  204 	call hud_draw
                            205 
   4C99                     206 	endmatarPocion:
   4C99 C9            [10]  207   	ret
                            208 ;;=======================================
                            209 ;; 	  PROGRAMA PRINCIPAL MAIN
                            210 ;;========================================
   4C9A                     211 _main::
                            212 
                            213 
   4C9A CD DC 4B      [17]  214     call inicializarCPC 					;; Inicializacion del AMSTRAD CPC
                            215 
   4C9D                     216     volver_empezar:
                            217     
   4C9D CD F4 4B      [17]  218     call inicializarMenu 					;; Iniciamos el MENU del juego
                            219 
   4CA0 CD 17 53      [17]  220     call mapa_draw						;; Pintamos el mapa		
                            221 
   4CA3 CD B4 43      [17]  222     call	hud_getPtrIX					;; Gets Pointer for Hero X in HL 
   4CA6 DD 7E 0E      [19]  223     ld 		a, 14(ix)					;; CARGAMOS 3 COMO INPUT PARA HUD_DRAW 
   4CA9 CD BE 43      [17]  224     call 	hud_draw					;; Draws HUD Hearts, with INPUT A as number of HEARTS
                            225 
                            226 	;;BUCLE PRINCIPAL
   4CAC                     227 	main_loop:
                            228 
                            229 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



   4CAC CD 05 45      [17]  230 		call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4CAF CD A5 52      [17]  231 		call llave_getPtrIY
                            232 
   4CB2 CD DB 49      [17]  233 		call borrar_entidad 				;; BORRAMOS EL PROTA
   4CB5 CD 0A 45      [17]  234 		call prota_update 				;; ACTUALIZAMOS EL PROTA
   4CB8 CD D5 49      [17]  235 		call dibujar_entidad 				;; DIBUJAMOS EL PROTA
                            236 				
                            237 
                            238 
   4CBB DD 7E 0B      [19]  239 		ld a, nivel(ix) 				;; Guardamos el nivel donde se encuentra el protagonista
   4CBE FE 01         [ 7]  240 		cp #1 						;;
   4CC0 20 50         [12]  241 		jr nz, no_nivel_1 				;; CONTROLAMOS EL NIVEL DONDE NOS ENCONTRAMOS
                            242 
                            243 		;;=========================================================================================================
                            244 		;; NIVEL 1	
                            245 		;;
                            246 		;;=========================================================================================================
                            247 		
                            248 		;;ENEMIGO 1	
                            249 		
                            250 		
   4CC2 CD EE 4A      [17]  251 		call enemigo1_getPtrIX
                            252 		
   4CC5 DD 7E 05      [19]  253 		ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   4CC8 FE 01         [ 7]  254 		cp 	#1 					;;
   4CCA CC 48 4C      [17]  255 		call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
   4CCD 28 40         [12]  256 		jr 	z, EnemMuerto			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS
                            257 
   4CCF CD D5 49      [17]  258 		call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO
                            259 
   4CD2 CD 3F 4C      [17]  260 		call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD
   4CD5 28 3B         [12]  261 		jr z, no_nivel_1
                            262 
   4CD7 CD F6 42      [17]  263 		call minuevaposicion
                            264 
   4CDA CD 05 45      [17]  265 		call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4CDD CD F3 4A      [17]  266 		call enemigo1_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4CE0 CD 1D 45      [17]  267 		call checkColision 			;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            268 		
                            269 
   4CE3 DD 7E 08      [19]  270 		ld a, 8(ix) 				;; A = prota_atack_right
   4CE6 FE FF         [ 7]  271 		cp #-1
   4CE8 28 0D         [12]  272 		jr z, nomata 				;; Solo si estamos atacando podemos matar
                            273 
   4CEA FD 7E 04      [19]  274 			ld 	a, 4(iy)
   4CED FE 01         [ 7]  275 			cp 	#1
   4CEF 20 06         [12]  276 			jr 	nz, nomata 
                            277 
                            278 				;MATA
   4CF1 FD 36 05 01   [19]  279 				ld 	5(iy), #1
   4CF5 18 18         [12]  280 				jr EnemMuerto
                            281 		
   4CF7                     282 		nomata:	
                            283 
                            284 		;; BALAS ENEMIGO 1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



                            285 
   4CF7 CD 05 45      [17]  286 		call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4CFA CD 01 42      [17]  287 		call b1_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4CFD CD 1D 45      [17]  288 		call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            289 
   4D00 CD 1A 4C      [17]  290 		call restarvida
                            291 
   4D03 CD FC 41      [17]  292 		call b1_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   4D06 CD DB 49      [17]  293 		call borrar_entidad
   4D09 CD 03 43      [17]  294 		call bala_update
   4D0C CD D5 49      [17]  295 		call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            296 
   4D0F                     297 		EnemMuerto:
                            298 
   4D0F C3 56 52      [10]  299 		jp sincronizado 				;; Finalizamos iteracción del bucle
                            300 
   4D12                     301 		no_nivel_1:
                            302 
   4D12 DD 7E 0B      [19]  303 		   ld a, nivel(ix) 				;; Guardamos el nivel donde se encuentra el protagonista
   4D15 FE 02         [ 7]  304 		   cp #2
   4D17 C2 C7 4D      [10]  305 		   jp nz, no_nivel_2
                            306 
                            307 		   ;;=========================================================================================================
                            308 		   ;; NIVEL 2	
                            309 		   ;;
                            310 		   ;;=========================================================================================================
                            311 		   
   4D1A CD AF 52      [17]  312 		   call pocion_getPtrIY
   4D1D CD 1D 45      [17]  313 		   call checkColision 				;; Comprobamos colision con la llave
   4D20 CD B4 52      [17]  314 		   call comprobar_recogido
                            315 
   4D23 CD AA 52      [17]  316 		   call pocion_getPtrIX
   4D26 CD 7A 4C      [17]  317 		   call matarVida 				
                            318 
                            319 
                            320 		   ;;ENEMIGO 2
                            321 
   4D29 CD 56 4C      [17]  322 		   call resetearMuerteEnemigo
                            323 
   4D2C CD F8 4A      [17]  324 		   call enemigo2_getPtrIX 
                            325 
   4D2F DD 7E 05      [19]  326 		   ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   4D32 FE 01         [ 7]  327 		   cp 	#1 					;;
   4D34 CC 48 4C      [17]  328 		   call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
   4D37 28 3B         [12]  329 		   jr 	z, EnemMuerto2			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS
                            330 
   4D39 CD D5 49      [17]  331 		   call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 2
                            332 		   
   4D3C CD F6 42      [17]  333 		   call minuevaposicion
                            334 
   4D3F CD 05 45      [17]  335 		   call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4D42 CD FD 4A      [17]  336 		   call enemigo2_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4D45 CD 1D 45      [17]  337 		   call checkColision 	
                            338 
   4D48 DD 7E 08      [19]  339 		   ld a, 8(ix) 				;; A = prota_atack_right
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   4D4B FE FF         [ 7]  340 		   cp #-1
   4D4D 28 0D         [12]  341 		   jr z, nomata2 			;; Solo si estamos atacando podemos matar
                            342 
   4D4F FD 7E 04      [19]  343 			 ld 	a, 4(iy)
   4D52 FE 01         [ 7]  344 			 cp 	#1
   4D54 20 06         [12]  345 			 jr 	nz, nomata2 
                            346 
                            347 				;MATA
   4D56 FD 36 05 01   [19]  348 				ld 	5(iy), #1
   4D5A 18 18         [12]  349 				jr EnemMuerto2
                            350 
   4D5C                     351 		   nomata2:
                            352 		   ;; BALAS ENEMIGO 2
                            353 
   4D5C CD 05 45      [17]  354 		   call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4D5F CD 0B 42      [17]  355 		   call b2_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4D62 CD 1D 45      [17]  356 		   call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            357 
   4D65 CD 1A 4C      [17]  358 		   call restarvida 				;; QUITAMOS VIDA AL PROTA SI CHOCAMOS CON UNA BALA
                            359 
   4D68 CD 06 42      [17]  360 		   call b2_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   4D6B CD DB 49      [17]  361 		   call borrar_entidad
   4D6E CD 03 43      [17]  362 		   call bala_update
   4D71 CD D5 49      [17]  363 		   call dibujar_entidad 			;; DIBUJAMOS LA BALA
                            364 
   4D74                     365 		   EnemMuerto2:
                            366 
                            367 		   ;;ENEMIGO 3 
                            368 
   4D74 CD 56 4C      [17]  369 		   call resetearMuerteEnemigo
                            370 
   4D77 CD 02 4B      [17]  371 		   call enemigo3_getPtrIX 
                            372 
   4D7A DD 7E 05      [19]  373 		   ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   4D7D FE 01         [ 7]  374 		   cp 	#1 					;;
   4D7F CC 48 4C      [17]  375 		   call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
   4D82 28 40         [12]  376 		   jr 	z, EnemMuerto6			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS
                            377 
   4D84 CD D5 49      [17]  378 		   call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 3
                            379 		   
                            380 		   
   4D87 CD F6 42      [17]  381 		   call minuevaposicion
                            382 
   4D8A CD 05 45      [17]  383 		   call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4D8D CD 07 4B      [17]  384 		   call enemigo3_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4D90 CD 1D 45      [17]  385 		   call checkColision 	
                            386 
   4D93 DD 7E 07      [19]  387 		   ld a, 7(ix) 				;; A = prota_atack_right
   4D96 FE FF         [ 7]  388 		   cp #-1
   4D98 28 0D         [12]  389 		   jr z, nomata6 			;; Solo si estamos atacando podemos matar
                            390 
   4D9A FD 7E 04      [19]  391 			 ld 	a, 4(iy)
   4D9D FE 01         [ 7]  392 			 cp 	#1
   4D9F 20 06         [12]  393 			 jr 	nz, nomata6 
                            394 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



                            395 				;MATA
   4DA1 FD 36 05 01   [19]  396 				ld 	5(iy), #1
   4DA5 18 1D         [12]  397 				jr EnemMuerto6
                            398 
   4DA7                     399 	           nomata6:
                            400 
   4DA7 CD 3F 4C      [17]  401 		   call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD A LA MITAD
   4DAA 28 1B         [12]  402 		   jr z, no_nivel_2
                            403 		    ;; BALAS ENEMIGO 3
                            404 
   4DAC CD 05 45      [17]  405 		   call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4DAF CD 15 42      [17]  406 		   call b3_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4DB2 CD 1D 45      [17]  407 		   call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            408 
   4DB5 CD 1A 4C      [17]  409 		   call restarvida
                            410 
   4DB8 CD 10 42      [17]  411 		   call b3_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   4DBB CD DB 49      [17]  412 		   call borrar_entidad
   4DBE CD 03 43      [17]  413 		   call bala_update
   4DC1 CD D5 49      [17]  414 		   call dibujar_entidad 			;; DIBUJAMOS LA BALA
                            415 
   4DC4                     416 		   EnemMuerto6:
                            417 
   4DC4 C3 56 52      [10]  418 		   jp sincronizado 				;; Finalizamos iteracción del bucle
                            419 
   4DC7                     420 		   no_nivel_2:
                            421  		
                            422 
   4DC7 DD 7E 0B      [19]  423  		      ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
   4DCA FE 03         [ 7]  424 		      cp #3
   4DCC C2 D3 4E      [10]  425 		      jp nz, no_nivel_3
                            426 
                            427 		      	 ;;=========================================================================================================
                            428 		     	 ;; NIVEL 3
                            429 		      	 ;;	
                            430 		      	 ;;=========================================================================================================		
                            431 
   4DCF CD AF 52      [17]  432 		      	call pocion_getPtrIY
   4DD2 CD 1D 45      [17]  433 		   	call checkColision 				;; Comprobamos colision con la llave
   4DD5 CD B4 52      [17]  434 		  	call comprobar_recogido
                            435 
   4DD8 CD AA 52      [17]  436 		      	 call pocion_getPtrIX
   4DDB CD 7A 4C      [17]  437 		   	 call matarVida
                            438 
                            439 
                            440 		      	 ;;ENEMIGO 4
                            441 
   4DDE CD 56 4C      [17]  442 		      	 call resetearMuerteEnemigo
                            443 
   4DE1 CD 0C 4B      [17]  444 		         call enemigo7_getPtrIX 
                            445 
   4DE4 DD 7E 05      [19]  446 		         ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   4DE7 FE 01         [ 7]  447 		   	 cp 	#1 					;;
   4DE9 CC 48 4C      [17]  448 		   	 call	z, matarEnemigo			;; Si hay colision matamos el enemigo
   4DEC 28 3B         [12]  449 		   	 jr 	z, EnemMuerto3			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



                            450 
   4DEE CD D5 49      [17]  451 		         call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO 2
                            452 		   
   4DF1 CD F6 42      [17]  453 		         call minuevaposicion
                            454 
   4DF4 CD 05 45      [17]  455 		         call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4DF7 CD 11 4B      [17]  456 		   	 call enemigo7_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4DFA CD 1D 45      [17]  457 		   	 call checkColision 	
                            458 
   4DFD DD 7E 08      [19]  459 		   	 ld a, 8(ix) 				;; A = prota_atack_right
   4E00 FE FF         [ 7]  460 		   	 cp #-1
   4E02 28 0D         [12]  461 		    	 jr z, nomata3 			;; Solo si estamos atacando podemos matar
                            462 
   4E04 FD 7E 04      [19]  463 				 ld 	a, 4(iy)
   4E07 FE 01         [ 7]  464 				 cp 	#1
   4E09 20 06         [12]  465 				 jr 	nz, nomata3 
                            466 
                            467 					;MATA
   4E0B FD 36 05 01   [19]  468 					ld 	5(iy), #1
   4E0F 18 18         [12]  469 					jr EnemMuerto3
                            470 
   4E11                     471 			nomata3:
                            472 
                            473 		          ;; BALAS ENEMIGO 4
                            474 
   4E11 CD 05 45      [17]  475 		         call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4E14 CD 1F 42      [17]  476 		         call b9_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4E17 CD 1D 45      [17]  477 		         call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            478 
   4E1A CD 1A 4C      [17]  479 		         call restarvida
                            480 
   4E1D CD 1A 42      [17]  481 		         call b9_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   4E20 CD DB 49      [17]  482 		         call borrar_entidad
   4E23 CD 03 43      [17]  483 		         call bala_update
   4E26 CD D5 49      [17]  484 		         call dibujar_entidad 				;; DIBUJAMOS LA BALA 
                            485 
   4E29                     486 		         EnemMuerto3:
                            487 
                            488 		         ;;ENEMIGO 5
                            489 
   4E29 CD 56 4C      [17]  490 		         call resetearMuerteEnemigo
                            491 
   4E2C CD 16 4B      [17]  492 		         call enemigo8_getPtrIX 
                            493 
                            494 
   4E2F DD 7E 05      [19]  495 		         ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   4E32 FE 01         [ 7]  496 		   	 cp 	#1 					;;
   4E34 CC 48 4C      [17]  497 		   	 call	z, matarEnemigo			;; Si hay colision matamos el enemigo
   4E37 28 3B         [12]  498 		   	 jr 	z, EnemMuerto7	
                            499 
   4E39 CD D5 49      [17]  500 		         call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO 2
                            501 		   
   4E3C CD F6 42      [17]  502 		         call minuevaposicion
                            503 
   4E3F CD 05 45      [17]  504 		         call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   4E42 CD 1B 4B      [17]  505 		   	 call enemigo8_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4E45 CD 1D 45      [17]  506 		   	 call checkColision 	
                            507 
   4E48 DD 7E 07      [19]  508 		   	 ld a, 7(ix) 				;; A = prota_atack_right
   4E4B FE FF         [ 7]  509 		   	 cp #-1
   4E4D 28 0D         [12]  510 		    	 jr z, nomata7 			;; Solo si estamos atacando podemos matar
                            511 
   4E4F FD 7E 04      [19]  512 				 ld 	a, 4(iy)
   4E52 FE 01         [ 7]  513 				 cp 	#1
   4E54 20 06         [12]  514 				 jr 	nz, nomata7 
                            515 
                            516 					;MATA
   4E56 FD 36 05 01   [19]  517 					ld 	5(iy), #1
   4E5A 18 18         [12]  518 					jr EnemMuerto7
                            519 
   4E5C                     520 			nomata7:
                            521 
                            522 		         ;; BALAS ENEMIGO 5
                            523 
   4E5C CD 05 45      [17]  524 		         call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4E5F CD 29 42      [17]  525 		         call b10_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4E62 CD 1D 45      [17]  526 		         call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            527 
   4E65 CD 1A 4C      [17]  528 		         call restarvida
                            529 
   4E68 CD 24 42      [17]  530 		         call b10_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   4E6B CD DB 49      [17]  531 		         call borrar_entidad
   4E6E CD 03 43      [17]  532 		         call bala_update
   4E71 CD D5 49      [17]  533 		         call dibujar_entidad 				;; DIBUJAMOS LA BALA 
                            534 
   4E74                     535 		         EnemMuerto7:
                            536 
                            537 		         ;;ENEMIGO 6
                            538 
   4E74 CD 20 4B      [17]  539 		         call enemigo9_getPtrIX 
                            540 
   4E77 CD 3F 4C      [17]  541 		         call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD A LA MITAD
   4E7A 28 57         [12]  542 		      	 jr z, no_nivel_3
                            543 
   4E7C CD DB 49      [17]  544 		         call borrar_entidad
   4E7F CD 84 4B      [17]  545 		         call enemigo9_update
   4E82 CD D5 49      [17]  546 		         call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO
                            547 		   
   4E85 CD F6 42      [17]  548 		         call minuevaposicion
                            549 
                            550 		          ;;BALAS ENEMIGO 6
                            551 
   4E88 CD 05 45      [17]  552 		          call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4E8B CD 33 42      [17]  553 		          call b11_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4E8E CD 1D 45      [17]  554 		          call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   4E91 CD 1A 4C      [17]  555 		          call restarvida
                            556 
   4E94 CD 2E 42      [17]  557 		          call b11_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   4E97 CD DB 49      [17]  558 		          call borrar_entidad
   4E9A CD 03 43      [17]  559 		          call bala_update
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   4E9D CD D5 49      [17]  560 		          call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            561 
   4EA0 CD 05 45      [17]  562 		          call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4EA3 CD 3D 42      [17]  563 		          call b12_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4EA6 CD 1D 45      [17]  564 		          call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   4EA9 CD 1A 4C      [17]  565 		          call restarvida
                            566 
   4EAC CD 38 42      [17]  567 		          call b12_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
   4EAF CD DB 49      [17]  568 		          call borrar_entidad
   4EB2 CD 03 43      [17]  569 		          call bala_update
   4EB5 CD D5 49      [17]  570 		          call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            571 
   4EB8 CD 05 45      [17]  572 		          call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4EBB CD 47 42      [17]  573 		          call b13_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4EBE CD 1D 45      [17]  574 		          call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO	
   4EC1 CD 1A 4C      [17]  575 		          call restarvida
                            576 
   4EC4 CD 42 42      [17]  577 		          call b13_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 3
   4EC7 CD DB 49      [17]  578 		          call borrar_entidad
   4ECA CD 03 43      [17]  579 		          call bala_update
   4ECD CD D5 49      [17]  580 		          call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            581 
   4ED0 C3 56 52      [10]  582 		         jp sincronizado 				;; Finalizamos iteracción del bucle
                            583 
   4ED3                     584 		      no_nivel_3:
                            585 
                            586 		      	 ;; LEVEL 4 (arreglar velocidades)
                            587 
   4ED3 DD 7E 0B      [19]  588  		         ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
   4ED6 FE 04         [ 7]  589 		         cp #4
   4ED8 C2 38 4F      [10]  590 		         jp nz, no_nivel_4
                            591 
                            592 		      	 ;;=========================================================================================================
                            593 		      	 ;; NIVEL 4
                            594 		      	 ;;	
                            595 		      	 ;;=========================================================================================================		
                            596 
                            597 
   4EDB CD A5 52      [17]  598 			   call llave_getPtrIY
   4EDE CD 1D 45      [17]  599 			   call checkColision 				;; Comprobamos colision con la llave
   4EE1 CD B4 52      [17]  600 			   call comprobar_recogido
                            601 
   4EE4 CD A0 52      [17]  602 		 	   call llave_getPtrIX
   4EE7 CD 5C 4C      [17]  603 			   call matarCorona				;; Comprueba si has cogido la corona, para eliminarla del mapa
                            604 
                            605 
                            606 
                            607 			   ;ENEMIGO 7
                            608 
   4EEA CD 56 4C      [17]  609 			   call resetearMuerteEnemigo
                            610 
   4EED CD 2A 4B      [17]  611 			   call enemigo10_getPtrIX 
                            612 
   4EF0 DD 7E 05      [19]  613 			   ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   4EF3 FE 01         [ 7]  614 		   	   cp 	#1 					;;
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   4EF5 CC 48 4C      [17]  615 		   	   call	z, matarEnemigo			;; Si hay colision matamos el enemigo
   4EF8 28 3B         [12]  616 		   	   jr 	z, EnemMuerto4			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS
                            617 
                            618 
   4EFA CD D5 49      [17]  619 		           call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 2
                            620 		   
   4EFD CD F6 42      [17]  621 		           call minuevaposicion
                            622 
   4F00 CD 05 45      [17]  623 		           call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4F03 CD 2F 4B      [17]  624 		   	   call enemigo10_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4F06 CD 1D 45      [17]  625 		   	   call checkColision 	
                            626 
   4F09 DD 7E 08      [19]  627 		   	   ld a, 8(ix) 				;; A = prota_atack_right
   4F0C FE FF         [ 7]  628 		   	   cp #-1
   4F0E 28 0D         [12]  629 		    	   jr z, nomata4 			;; Solo si estamos atacando podemos matar
                            630 
   4F10 FD 7E 04      [19]  631 				 ld 	a, 4(iy)
   4F13 FE 01         [ 7]  632 				 cp 	#1
   4F15 20 06         [12]  633 				 jr 	nz, nomata4 
                            634 
                            635 					;MATA
   4F17 FD 36 05 01   [19]  636 					ld 	5(iy), #1
   4F1B 18 18         [12]  637 					jr EnemMuerto4
                            638 
   4F1D                     639 			nomata4:
                            640 		           ;; BALAS ENEMIGO 7
                            641 
   4F1D CD 05 45      [17]  642 		           call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4F20 CD 51 42      [17]  643 		           call b14_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4F23 CD 1D 45      [17]  644 		           call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            645 
   4F26 CD 1A 4C      [17]  646 		           call restarvida
                            647 
   4F29 CD 4C 42      [17]  648 		           call b14_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   4F2C CD DB 49      [17]  649 		           call borrar_entidad
   4F2F CD 03 43      [17]  650 		           call bala_update
   4F32 CD D5 49      [17]  651 		           call dibujar_entidad 				;; DIBUJAMOS LA BALA  
                            652 				
   4F35                     653 			   EnemMuerto4:
                            654 
   4F35 C3 56 52      [10]  655 			   jp sincronizado 				;; Finalizamos iteracción del bucle
                            656 
   4F38                     657 		         no_nivel_4:
                            658 
                            659 
   4F38 DD 7E 0B      [19]  660  		           ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
   4F3B FE 05         [ 7]  661 		           cp #5
   4F3D C2 E8 4F      [10]  662 		           jp nz, no_nivel_5
                            663 	
                            664 
                            665 		             ;;=========================================================================================================
                            666 		      	     ;; NIVEL 5
                            667 		      	     ;;	
                            668 		      	     ;;=========================================================================================================		
                            669 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



   4F40 CD A5 52      [17]  670 			     call llave_getPtrIY
   4F43 CD 1D 45      [17]  671 			     call checkColision 				;; Comprobamos colision con la llave
   4F46 CD B4 52      [17]  672 			     call comprobar_recogido
                            673 
   4F49 CD A0 52      [17]  674 		 	     call llave_getPtrIX
   4F4C CD 5C 4C      [17]  675 			     call matarCorona
                            676 
                            677 
                            678 			     ;ENEMIGO 8
                            679 
   4F4F CD 56 4C      [17]  680 			     call resetearMuerteEnemigo
                            681 
   4F52 CD 34 4B      [17]  682 			     call enemigo11_getPtrIX 
                            683 
   4F55 DD 7E 05      [19]  684 			     ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   4F58 FE 01         [ 7]  685 		   	     cp 	#1 					;;
   4F5A CC 48 4C      [17]  686 		   	     call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
   4F5D 28 3B         [12]  687 		   	     jr 	z, EnemMuerto5			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS
                            688 
                            689 
   4F5F CD D5 49      [17]  690 		             call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 2
                            691 		   
   4F62 CD F6 42      [17]  692 		             call minuevaposicion
                            693 
   4F65 CD 05 45      [17]  694 		             call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4F68 CD 39 4B      [17]  695 		   	     call enemigo11_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4F6B CD 1D 45      [17]  696 		   	     call checkColision 	
                            697 
   4F6E DD 7E 08      [19]  698 		   	      ld a, 8(ix) 				;; A = prota_atack_right
   4F71 FE FF         [ 7]  699 		   	      cp #-1
   4F73 28 0D         [12]  700 		    	      jr z, nomata5 				;; Solo si estamos atacando podemos matar
                            701 
   4F75 FD 7E 04      [19]  702 				 ld 	a, 4(iy)
   4F78 FE 01         [ 7]  703 				 cp 	#1
   4F7A 20 06         [12]  704 				 jr 	nz, nomata5 
                            705 
                            706 					;MATA
   4F7C FD 36 05 01   [19]  707 					ld 	5(iy), #1
   4F80 18 18         [12]  708 					jr EnemMuerto5
                            709 
   4F82                     710 			     nomata5:
                            711 
   4F82 CD 05 45      [17]  712 		             call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4F85 CD 5B 42      [17]  713 		             call b15_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4F88 CD 1D 45      [17]  714 		             call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            715 
   4F8B CD 1A 4C      [17]  716 		             call restarvida
                            717 
   4F8E CD 56 42      [17]  718 		             call b15_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   4F91 CD DB 49      [17]  719 		             call borrar_entidad
   4F94 CD 03 43      [17]  720 		             call bala_update
   4F97 CD D5 49      [17]  721 		             call dibujar_entidad 				;; DIBUJAMOS LA BALA 
                            722 
   4F9A                     723 		             EnemMuerto5:
                            724 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



                            725 		             ;ENEMIGO 9
   4F9A CD 56 4C      [17]  726 		             call resetearMuerteEnemigo
                            727 
   4F9D CD 3E 4B      [17]  728 			     call enemigo12_getPtrIX 
                            729 
   4FA0 DD 7E 05      [19]  730 			     ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   4FA3 FE 01         [ 7]  731 		   	     cp 	#1 					;;
   4FA5 CC 48 4C      [17]  732 		   	     call	z, matarEnemigo 			;; Si hay colision matamos el enemigo
   4FA8 28 3B         [12]  733 		   	     jr 	z, EnemMuerto8			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS
                            734 
                            735 
   4FAA CD D5 49      [17]  736 		             call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO 2
                            737 		   
   4FAD CD F6 42      [17]  738 		             call minuevaposicion
                            739 
   4FB0 CD 05 45      [17]  740 		             call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4FB3 CD 43 4B      [17]  741 		   	     call enemigo12_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4FB6 CD 1D 45      [17]  742 		   	     call checkColision 	
                            743 
   4FB9 DD 7E 07      [19]  744 		   	      ld a, 7(ix) 				;; A = prota_atack_right
   4FBC FE FF         [ 7]  745 		   	      cp #-1
   4FBE 28 0D         [12]  746 		    	      jr z, nomata8 				;; Solo si estamos atacando podemos matar
                            747 
   4FC0 FD 7E 04      [19]  748 				 ld 	a, 4(iy)
   4FC3 FE 01         [ 7]  749 				 cp 	#1
   4FC5 20 06         [12]  750 				 jr 	nz, nomata8 
                            751 
                            752 					;MATA
   4FC7 FD 36 05 01   [19]  753 					ld 	5(iy), #1
   4FCB 18 18         [12]  754 					jr EnemMuerto8
                            755 
   4FCD                     756 			     nomata8:
                            757 
   4FCD CD 05 45      [17]  758 		             call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   4FD0 CD 65 42      [17]  759 		             call b16_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   4FD3 CD 1D 45      [17]  760 		             call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            761 
   4FD6 CD 1A 4C      [17]  762 		             call restarvida
                            763 
   4FD9 CD 60 42      [17]  764 		             call b16_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   4FDC CD DB 49      [17]  765 		             call borrar_entidad
   4FDF CD 03 43      [17]  766 		             call bala_update
   4FE2 CD D5 49      [17]  767 		             call dibujar_entidad 				;; DIBUJAMOS LA BALA 
                            768 
                            769 		             
   4FE5                     770 		             EnemMuerto8:
                            771 
   4FE5 C3 56 52      [10]  772 			     jp sincronizado 				;; Finalizamos iteracción del bucle
                            773 
   4FE8                     774 			   no_nivel_5:
                            775 
                            776 			   
   4FE8 DD 7E 0B      [19]  777 			     ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
   4FEB FE 06         [ 7]  778 		             cp #6
   4FED C2 71 50      [10]  779 		             jp nz, no_nivel_6
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



                            780 
                            781 		          	;;=========================================================================================================
                            782 		      		;; NIVEL 6
                            783 		      		;;	
                            784 		      		;;=========================================================================================================		
                            785 
                            786 
   4FF0 CD A5 52      [17]  787 		      		call llave_getPtrIY
   4FF3 CD 1D 45      [17]  788 			   	call checkColision 				;; Comprobamos colision con la llave
   4FF6 CD B4 52      [17]  789 			   	call comprobar_recogido
                            790 
   4FF9 CD A0 52      [17]  791 		 	   	call llave_getPtrIX
   4FFC CD 5C 4C      [17]  792 			   	call matarCorona				;; Comprueba si has cogido la corona, para eliminarla del mapa
                            793 
                            794 		             	;;ENEMIGO 10
                            795 
   4FFF CD 48 4B      [17]  796 		               	call enemigo16_getPtrIX
                            797 
   5002 CD DB 49      [17]  798 		         	call borrar_entidad
   5005 CD 84 4B      [17]  799 		         	call enemigo9_update
   5008 CD D5 49      [17]  800 		         	call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO
                            801 		   		
                            802 		   		;call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD A LA MITAD
                            803 		      	 	;jp z, no_nivel_6
                            804 
   500B CD F6 42      [17]  805 		        	call minuevaposicion
                            806 
                            807 		         	 ;;BALAS ENEMIGO 10
                            808 
   500E CD 05 45      [17]  809 		          	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   5011 CD 6F 42      [17]  810 		          	call b20_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   5014 CD 1D 45      [17]  811 		         	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   5017 CD 1A 4C      [17]  812 		          	call restarvida
                            813 
   501A CD 6A 42      [17]  814 		          	call b20_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   501D CD DB 49      [17]  815 		          	call borrar_entidad
   5020 CD 03 43      [17]  816 		          	call bala_update
   5023 CD D5 49      [17]  817 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            818 
   5026 CD 05 45      [17]  819 		         	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   5029 CD 79 42      [17]  820 		          	call b21_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   502C CD 1D 45      [17]  821 		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   502F CD 1A 4C      [17]  822 		          	call restarvida
                            823 
   5032 CD 74 42      [17]  824 		          	call b21_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
   5035 CD DB 49      [17]  825 		          	call borrar_entidad
   5038 CD 03 43      [17]  826 		          	call bala_update
   503B CD D5 49      [17]  827 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            828 
   503E CD 05 45      [17]  829 		          	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   5041 CD 83 42      [17]  830 		          	call b22_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   5044 CD 1D 45      [17]  831 		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO	
   5047 CD 1A 4C      [17]  832 		          	call restarvida
                            833 
   504A CD 7E 42      [17]  834 		          	call b22_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 3
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   504D CD DB 49      [17]  835 		          	call borrar_entidad
   5050 CD 03 43      [17]  836 		          	call bala_update
   5053 CD D5 49      [17]  837 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            838 
   5056 CD 05 45      [17]  839 		          	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   5059 CD 8D 42      [17]  840 		          	call b23_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   505C CD 1D 45      [17]  841 		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO	
   505F CD 1A 4C      [17]  842 		          	call restarvida
                            843 
   5062 CD 88 42      [17]  844 		          	call b23_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 3
   5065 CD DB 49      [17]  845 		          	call borrar_entidad
   5068 CD 03 43      [17]  846 		          	call bala_update
   506B CD D5 49      [17]  847 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            848 			     
   506E C3 56 52      [10]  849 		          	jp sincronizado 				;; Finalizamos iteracción del bucle
                            850 
   5071                     851 			     no_nivel_6:
                            852 
   5071 DD 7E 0B      [19]  853 			     ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
   5074 FE 07         [ 7]  854 		             cp #7
   5076 C2 F4 50      [10]  855 		             jp nz, no_nivel_7
                            856 
                            857 			             
                            858 		             ;;=========================================================================================================
                            859 			     ;; NIVEL 7
                            860 			     ;;
                            861 			     ;;=========================================================================================================
                            862 			
                            863 
   5079 CD AF 52      [17]  864 			     call pocion_getPtrIY
   507C CD 1D 45      [17]  865 		   	     call checkColision 				;; Comprobamos colision con la llave
   507F CD B4 52      [17]  866 		  	     call comprobar_recogido
                            867 
   5082 CD AA 52      [17]  868 		      	     call pocion_getPtrIX
   5085 CD 7A 4C      [17]  869 		   	     call matarVida
                            870 
                            871 			     ;;ENEMIGO 17	
                            872 		
                            873 		
   5088 CD 56 4C      [17]  874 			    call resetearMuerteEnemigo
                            875 
   508B CD 52 4B      [17]  876 		            call enemigo17_getPtrIX 
                            877 
   508E DD 7E 05      [19]  878 		            ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   5091 FE 01         [ 7]  879 		   	    cp 	#1 					;;
   5093 CC 48 4C      [17]  880 		   	    call	z, matarEnemigo			;; Si hay colision matamos el enemigo
   5096 28 59         [12]  881 		   	    jr 	z, EnemMuerto17			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS
                            882 
   5098 CD D5 49      [17]  883 		            call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO 2
                            884 		   	    
   509B CD 3F 4C      [17]  885 		   	    call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD A LA MITAD
   509E CA F4 50      [10]  886 		      	    jp z, no_nivel_7
                            887 
   50A1 CD F6 42      [17]  888 		            call minuevaposicion
                            889 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
Hexadecimal [16-Bits]



   50A4 CD 05 45      [17]  890 		            call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   50A7 CD 57 4B      [17]  891 		   	    call enemigo17_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   50AA CD 1D 45      [17]  892 		   	    call checkColision 	
                            893 
   50AD DD 7E 08      [19]  894 		   	    ld a, 8(ix) 				;; A = prota_atack_right
   50B0 FE FF         [ 7]  895 		   	    cp #-1
   50B2 28 0D         [12]  896 		    	    jr z, nomata17 			;; Solo si estamos atacando podemos matar
                            897 
   50B4 FD 7E 04      [19]  898 				 ld 	a, 4(iy)
   50B7 FE 01         [ 7]  899 				 cp 	#1
   50B9 20 06         [12]  900 				 jr 	nz, nomata17 
                            901 
                            902 					;MATA
   50BB FD 36 05 01   [19]  903 					ld 	5(iy), #1
   50BF 18 30         [12]  904 					jr EnemMuerto17
                            905 
   50C1                     906 			       nomata17:
                            907 
                            908 
   50C1 CD 05 45      [17]  909 			        call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   50C4 CD 97 42      [17]  910 		          	call b24_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   50C7 CD 1D 45      [17]  911 		         	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   50CA CD 1A 4C      [17]  912 		          	call restarvida
                            913 
   50CD CD 92 42      [17]  914 		          	call b24_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   50D0 CD DB 49      [17]  915 		          	call borrar_entidad
   50D3 CD 03 43      [17]  916 		          	call bala_update
   50D6 CD D5 49      [17]  917 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            918 
   50D9 CD 05 45      [17]  919 		         	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   50DC CD A1 42      [17]  920 		          	call b25_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   50DF CD 1D 45      [17]  921 		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   50E2 CD 1A 4C      [17]  922 		          	call restarvida
                            923 
   50E5 CD 9C 42      [17]  924 		          	call b25_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
   50E8 CD DB 49      [17]  925 		          	call borrar_entidad
   50EB CD 03 43      [17]  926 		          	call bala_update
   50EE CD D5 49      [17]  927 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            928 
                            929 
   50F1                     930 			       EnemMuerto17:
                            931 
   50F1 C3 56 52      [10]  932 		         	jp sincronizado
                            933 
   50F4                     934    			     no_nivel_7:
                            935 
   50F4 DD 7E 0B      [19]  936    			       ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
   50F7 FE 08         [ 7]  937 		               cp #8
   50F9 C2 B5 51      [10]  938 		               jp nz, no_nivel_8
                            939 
                            940 
                            941 		               ;;=========================================================================================================
                            942 			       ;; NIVEL 8
                            943 			       ;;
                            944 			       ;;=========================================================================================================
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
Hexadecimal [16-Bits]



                            945 				
   50FC CD A5 52      [17]  946 				call llave_getPtrIY
   50FF CD 1D 45      [17]  947 			   	call checkColision 				;; Comprobamos colision con la llave
   5102 CD B4 52      [17]  948 			   	call comprobar_recogido
                            949 
   5105 CD A0 52      [17]  950 		 	   	call llave_getPtrIX
   5108 CD 5C 4C      [17]  951 			   	call matarCorona
                            952 
                            953 			       ;;ENEMIGO 18	
                            954 				
   510B CD 56 4C      [17]  955 				call resetearMuerteEnemigo
                            956 
   510E CD 5C 4B      [17]  957 		            	call enemigo18_getPtrIX 
                            958 
   5111 DD 7E 05      [19]  959 		            	ld	a, 5(ix) 				;; A = enemigo_colision (1 --> Colision, !1 No colision)
   5114 FE 01         [ 7]  960 		   	    	cp 	#1 					;;
   5116 CC 48 4C      [17]  961 		   	    	call	z, matarEnemigo			;; Si hay colision matamos el enemigo
   5119 28 3B         [12]  962 		   	    	jr 	z, EnemMuerto18			;; NO DIBUJAMOS NI EL ENEMIGO NI SUS BALAS
                            963 
   511B CD D5 49      [17]  964 		            	call dibujar_entidad 				;; DIBUJAMOS EL ENEMIGO 2
                            965 		   	    
   511E CD F6 42      [17]  966 		            	call minuevaposicion
                            967 
   5121 CD 05 45      [17]  968 		            	call prota_getPtrIX 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   5124 CD 61 4B      [17]  969 		   	    	call enemigo18_getPtrIY 			;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   5127 CD 1D 45      [17]  970 		   	    	call checkColision 	
                            971 
   512A DD 7E 08      [19]  972 		   	   	 ld a, 8(ix) 				;; A = prota_atack_right
   512D FE FF         [ 7]  973 		   	    	cp #-1
   512F 28 0D         [12]  974 		    	    	jr z, nomata18 			;; Solo si estamos atacando podemos matar
                            975 
   5131 FD 7E 04      [19]  976 				 	ld 	a, 4(iy)
   5134 FE 01         [ 7]  977 				 	cp 	#1
   5136 20 06         [12]  978 				 	jr 	nz, nomata18 
                            979 
                            980 						;MATA
   5138 FD 36 05 01   [19]  981 						ld 	5(iy), #1
   513C 18 18         [12]  982 						jr EnemMuerto18
                            983 
   513E                     984 			       nomata18:
                            985 
   513E CD 05 45      [17]  986 			        call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   5141 CD AB 42      [17]  987 		          	call b26_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   5144 CD 1D 45      [17]  988 		         	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   5147 CD 1A 4C      [17]  989 		          	call restarvida
                            990 
   514A CD A6 42      [17]  991 		          	call b26_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   514D CD DB 49      [17]  992 		          	call borrar_entidad
   5150 CD 03 43      [17]  993 		          	call bala_update
   5153 CD D5 49      [17]  994 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
                            995 
                            996 		          	;call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
                            997 		          	;call b33_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
                            998 		         	;call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
                            999 		          	;call restarvida
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 29.
Hexadecimal [16-Bits]



                           1000 
                           1001 		          	;call b33_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
                           1002 		          	;call borrar_entidad
                           1003 		          	;call bala_update
                           1004 		          	;call dibujar_entidad 				;; DIBUJAMOS LA BALA
                           1005 
                           1006 		      
                           1007 		          	
   5156                    1008 			       EnemMuerto18:
                           1009 
                           1010 			       ;; ENEMIGO 19
                           1011 
   5156 CD 66 4B      [17] 1012 			        call enemigo19_getPtrIX
                           1013 
   5159 CD DB 49      [17] 1014 		         	call borrar_entidad
   515C CD 84 4B      [17] 1015 		         	call enemigo9_update
   515F CD D5 49      [17] 1016 		         	call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO
                           1017 
   5162 CD 3F 4C      [17] 1018 		         	call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD
   5165 28 4E         [12] 1019 				jr z, no_nivel_8
                           1020 
   5167 CD F6 42      [17] 1021 		         	call minuevaposicion
                           1022 
                           1023 		         	 ;;BALAS ENEMIGO 10
                           1024 
   516A CD 05 45      [17] 1025 		         	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   516D CD B5 42      [17] 1026 		          	call b27_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   5170 CD 1D 45      [17] 1027 		         	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   5173 CD 1A 4C      [17] 1028 		          	call restarvida
                           1029 
   5176 CD B0 42      [17] 1030 		          	call b27_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   5179 CD DB 49      [17] 1031 		          	call borrar_entidad
   517C CD 03 43      [17] 1032 		          	call bala_update
   517F CD D5 49      [17] 1033 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
                           1034 
   5182 CD 05 45      [17] 1035 		         	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   5185 CD BF 42      [17] 1036 		          	call b28_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   5188 CD 1D 45      [17] 1037 		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   518B CD 1A 4C      [17] 1038 		          	call restarvida
                           1039 
   518E CD BA 42      [17] 1040 		          	call b28_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
   5191 CD DB 49      [17] 1041 		          	call borrar_entidad
   5194 CD 03 43      [17] 1042 		          	call bala_update
   5197 CD D5 49      [17] 1043 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
                           1044 
                           1045 
   519A CD 05 45      [17] 1046 		          	call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   519D CD D3 42      [17] 1047 		          	call b30_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   51A0 CD 1D 45      [17] 1048 		          	call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   51A3 CD 1A 4C      [17] 1049 		          	call restarvida
                           1050 
   51A6 CD CE 42      [17] 1051 		          	call b30_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
   51A9 CD DB 49      [17] 1052 		          	call borrar_entidad
   51AC CD 03 43      [17] 1053 		          	call bala_update
   51AF CD D5 49      [17] 1054 		          	call dibujar_entidad 				;; DIBUJAMOS LA BALA
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 30.
Hexadecimal [16-Bits]



                           1055 
   51B2 C3 56 52      [10] 1056 		               jp sincronizado
                           1057 
                           1058 
   51B5                    1059 		               no_nivel_8:
                           1060 
                           1061 
   51B5 DD 7E 0B      [19] 1062 		                 ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
   51B8 FE 09         [ 7] 1063 		                 cp #9
   51BA C2 3A 52      [10] 1064 		                 jp nz, no_nivel_9
                           1065 
                           1066 
   51BD CD A5 52      [17] 1067 		                     call llave_getPtrIY
   51C0 CD 1D 45      [17] 1068 			   	     call checkColision 				;; Comprobamos colision con la llave
   51C3 CD B4 52      [17] 1069 			   	     call comprobar_recogido
                           1070 
   51C6 CD A0 52      [17] 1071 		 	   	     call llave_getPtrIX
   51C9 CD 5C 4C      [17] 1072 			   	     call matarCorona
                           1073 
                           1074 		                     ;; ENEMIGO 21
   51CC CD 7A 4B      [17] 1075 		                     call enemigo21_getPtrIX
                           1076 
   51CF CD DB 49      [17] 1077 		         	     call borrar_entidad
   51D2 CD 84 4B      [17] 1078 		         	     call enemigo9_update
   51D5 CD D5 49      [17] 1079 		         	     call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO
                           1080 
   51D8 CD F6 42      [17] 1081 		         	     call minuevaposicion
                           1082 
   51DB CD 05 45      [17] 1083 		         	     call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   51DE CD C9 42      [17] 1084 		          	     call b29_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   51E1 CD 1D 45      [17] 1085 		         	     call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   51E4 CD 1A 4C      [17] 1086 		          	     call restarvida
                           1087 
   51E7 CD C4 42      [17] 1088 		          	     call b29_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   51EA CD DB 49      [17] 1089 		          	     call borrar_entidad
   51ED CD 03 43      [17] 1090 		          	     call bala_update
   51F0 CD D5 49      [17] 1091 		          	     call dibujar_entidad 				;; DIBUJAMOS LA BALA
                           1092 		   
                           1093 
                           1094 		         	     ;; ENEMIGO 20
   51F3 CD 70 4B      [17] 1095 		                     call enemigo20_getPtrIX
                           1096 
   51F6 CD DB 49      [17] 1097 		         	     call borrar_entidad
   51F9 CD 84 4B      [17] 1098 		         	     call enemigo9_update
   51FC CD D5 49      [17] 1099 		         	     call dibujar_entidad 			;; DIBUJAMOS EL ENEMIGO
                           1100 
   51FF CD 3F 4C      [17] 1101 		         	     call reducirVelocidadMitad 			;;REDUCIMOS LA VELOCIDAD
   5202 28 36         [12] 1102 				     jr z, no_nivel_9
                           1103 
   5204 CD F6 42      [17] 1104 		         	     call minuevaposicion
                           1105 
   5207 CD 05 45      [17] 1106 		         	     call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   520A CD DD 42      [17] 1107 		          	     call b31_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   520D CD 1D 45      [17] 1108 		         	     call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   5210 CD 1A 4C      [17] 1109 		          	     call restarvida
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 31.
Hexadecimal [16-Bits]



                           1110 
   5213 CD D8 42      [17] 1111 		          	     call b31_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 1
   5216 CD DB 49      [17] 1112 		          	     call borrar_entidad
   5219 CD 03 43      [17] 1113 		          	     call bala_update
   521C CD D5 49      [17] 1114 		          	     call dibujar_entidad 				;; DIBUJAMOS LA BALA
                           1115 
   521F CD 05 45      [17] 1116 		         	     call prota_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL PROTA
   5222 CD E7 42      [17] 1117 		          	     call b32_getPtrIY 				;; PUNTERO A LOS DATOS DE LA ENTIDAD DEL ENEMIGO
   5225 CD 1D 45      [17] 1118 		          	     call checkColision 				;; COMPROBAMOS SI HA COLISIONADO EL PROTA CON EL ENEMIGO
   5228 CD 1A 4C      [17] 1119 		          	     call restarvida
                           1120 
   522B CD E2 42      [17] 1121 		          	     call b32_getPtrIX 				;; PUNTERO A LOS DATOS DE LA ENTIDAD BALA 2
   522E CD DB 49      [17] 1122 		          	     call borrar_entidad
   5231 CD 03 43      [17] 1123 		          	     call bala_update
   5234 CD D5 49      [17] 1124 		          	     call dibujar_entidad 				;; DIBUJAMOS LA BALA
                           1125 
                           1126 		          	     
                           1127 
   5237 C3 56 52      [10] 1128 		                 jp sincronizado
                           1129 
                           1130 
   523A                    1131 		                 no_nivel_9:
                           1132 
                           1133 		                 
   523A DD 7E 0B      [19] 1134 		                   ld a, nivel(ix) 			;; Guardamos el nivel donde se encuentra el protagonista
   523D FE 0A         [ 7] 1135 		               	   cp #10
   523F C2 56 52      [10] 1136 		                   jp nz, no_nivel_10
                           1137 
   5242 CD B9 43      [17] 1138 		                   	call hud_getPtrFIN
   5245 CD D5 49      [17] 1139 		                   	call dibujar_entidad	
                           1140 
                           1141 			             	;; FIN DEL JUEGO TE HAS PASADO EL JUEGO
   5248 21 D3 4B      [10] 1142 			            	 ld   hl, #win  
   524B 11 55 C6      [10] 1143 	   			     	ld   de, #0xC655  
   524E 01 06 00      [10] 1144 	   			     	ld   bc, #0x0006  
                           1145 
   5251 CD 3F 54      [17] 1146 	   			     	call cpct_drawStringM0_asm 
                           1147 	   			     	;; BUCLE INFINITO
   5254                    1148 	   			     	fin: 
   5254 18 FE         [12] 1149 	   			     	jr fin			             
                           1150 
                           1151 
   5256                    1152 		                   no_nivel_10:
                           1153 
                           1154 		                     
                           1155 
                           1156 		                        	    
                           1157 
                           1158 
                           1159 		               	  
                           1160 
                           1161 
   5256                    1162 		sincronizado:
                           1163 
   5256 CD 49 56      [17] 1164 		call cpct_waitVSYNC_asm    			;; FUNCION DE cpctelera que permite hacer HALTS sincronizado con el raster
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 32.
Hexadecimal [16-Bits]



                           1165 
                           1166 
   5259 C3 AC 4C      [10] 1167 	jp main_loop
                           1168 
