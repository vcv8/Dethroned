ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .area _CODE
                              2 
                              3 
                              4 ;;======================================================================
                              5 ;;======================================================================
                              6 ;; DATOS PRIVADOS
                              7 ;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
                              8 ;;======================================================================
                              9 ;;======================================================================
                             10 
                             11 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                             12 .include "cpctelera.h.s"
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



                             13 .include "protagonista.h.s"
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



                             14 .include "mapas.h"
                              1  ;;====================================
                              2  ;; FUNCIONES PUBLICAS DE MAPA  
                              3  ;;====================================
                              4 
                              5  .globl mapa_draw
                              6  .globl mapa_redraw
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                             15 
                             16 .globl _sprite_protile3_00
                             17 .globl _sprite_protile3_01
                             18 .globl _sprite_protile3_02
                             19 .globl _sprite_protile3_03
                             20 .globl _sprite_protile3_04
                             21 .globl _sprite_protile3_05
                             22 .globl _sprite_protile3_06	
                             23 .globl _sprite_protile3_07
                             24 .globl _sprite_protile3_08
                             25 .globl _sprite_protile3_09
                             26 .globl _sprite_protile3_10
                             27 .globl _sprite_protile3_11
                             28 .globl _sprite_protile3_12
                             29 .globl _sprite_protile3_13
                             30 .globl _sprite_protile3_14
                             31 .globl _sprite_protile3_15
                             32 .globl _sprite_protile3_16
                             33 .globl _sprite_protile3_17
                             34 .globl _sprite_protile3_18
                             35 .globl _sprite_protile3_19	
                             36 
                             37 .globl _stor_torreta3_0
                             38 .globl _stor_torreta3_1
                             39 .globl _sbala_bala3_0
                             40 .globl _sbala_bala3_1
                             41 .globl _sheart_heart2
                             42 .globl _scrown_coronasola
                             43 .globl _sfin_fin2
                             44  
                             45 
   499F                      46 spriteArray:
   499F 04 28                47 	.dw _sprite_protile3_00
   49A1 40 28                48 	.dw _sprite_protile3_01
   49A3 7C 28                49 	.dw _sprite_protile3_02
   49A5 B8 28                50 	.dw _sprite_protile3_03
   49A7 F4 28                51 	.dw _sprite_protile3_04
   49A9 30 29                52 	.dw _sprite_protile3_05
   49AB 6C 29                53 	.dw _sprite_protile3_06
   49AD A8 29                54 	.dw _sprite_protile3_07
   49AF E4 29                55 	.dw _sprite_protile3_08
   49B1 20 2A                56 	.dw _sprite_protile3_09
   49B3 5C 2A                57 	.dw _sprite_protile3_10
   49B5 98 2A                58 	.dw _sprite_protile3_11
   49B7 D4 2A                59 	.dw _sprite_protile3_12
   49B9 10 2B                60 	.dw _sprite_protile3_13
   49BB 4C 2B                61 	.dw _sprite_protile3_14
   49BD 88 2B                62 	.dw _sprite_protile3_15
   49BF C4 2B                63 	.dw _sprite_protile3_16
   49C1 00 2C                64 	.dw _sprite_protile3_17
   49C3 3C 2C                65 	.dw _sprite_protile3_18
   49C5 78 2C                66 	.dw _sprite_protile3_19
   49C7 AC 27                67 	.dw _stor_torreta3_0
   49C9 C4 27                68 	.dw _stor_torreta3_1
   49CB A0 27                69 	.dw _sbala_bala3_0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



   49CD A4 27                70 	.dw _sbala_bala3_1
   49CF 7C 27                71 	.dw _sheart_heart2
   49D1 70 27                72 	.dw _scrown_coronasola
   49D3 00 10                73 	.dw _sfin_fin2
                             74 
                             75 ;;=====================================================================
                             76 ;;=====================================================================
                             77 ;;FUNCIONES PUBLICAS
                             78 ;;=====================================================================
                             79 ;;=====================================================================
                             80 
                             81 ;;==============================================================================
                             82 ;; FUNCION GLOBAL QUE PERMITE DIBUJAR UNA ENTIDAD
                             83 ;; MODIFICA : 
                             84 ;;===============================================================================
                             85 
   49D5                      86 dibujar_entidad::
                             87 
                             88 	
   49D5 3E FF         [ 7]   89 	ld a, #0xFF 				;; A = Color Rojo 
                             90 	
                             91 
   49D7 CD E1 49      [17]   92 	call dibujado
                             93 
                             94 
   49DA C9            [10]   95 	ret 
                             96 
                             97 
                             98 ;;==============================================================================
                             99 ;; FUNCION GLOBAL QUE BORRA LA ENTIDAD
                            100 ;; MODIFICA : 
                            101 ;;===============================================================================
   49DB                     102 borrar_entidad::
                            103 
                            104 
   49DB 3E 00         [ 7]  105 	ld a, #0x00			;;COLOR FONDO
                            106 	
   49DD CD 9D 53      [17]  107    	call mapa_redraw 		;; Redibujado
                            108  
   49E0 C9            [10]  109  	ret
                            110 
                            111 
                            112 ;;=====================================================================
                            113 ;;=====================================================================
                            114 ;;FUNCIONES PRIVADAS
                            115 ;;=====================================================================
                            116 ;;=====================================================================
                            117 
                            118 
                            119 ;;=======================================
                            120 ;; FUNCION PARA PINTAR UNA ENTIDAD
                            121 ;;		IX -> Puntero a los datos de la entidad
                            122 ;;      A -> COLOR
                            123 ;,		bc -> TAM CUADRADO
                            124 ;; MODIFICA : AF, BC, DE, HL
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



                            125 ;;========================================
                            126 
   49E1                     127 dibujado:
                            128 
   49E1 FE 00         [ 7]  129 	cp #0x00
   49E3 28 1E         [12]  130 	jr z, borra
                            131 
   49E5 CD 1D 4A      [17]  132 	call	select_sprite
   49E8 C5            [11]  133 	push bc						;; Almacena en HL el sprite seleccionado en sel_sprite
                            134 
                            135 	;;CALCULAR POSICION EN PANTALLA
                            136 
   49E9 11 00 C0      [10]  137 	ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
   49EC DD 4E 00      [19]  138 	ld c, pos_x(ix) 				;; IX es el registro indice que nos permite acceder a los datos de la entidad (en este caso: entity_x, entity_y.) C= entity_x
   49EF DD 46 01      [19]  139 	ld b, pos_y(ix) 				;; B=entity_y Aqui indicamos la fila donde empieza y en c la columna (Coord X e Y)				
   49F2 CD 3C 57      [17]  140 	call cpct_getScreenPtr_asm      		;; COGER PUNTERO DE PANTALLA
                            141 
                            142 	;; PINTAR SPRITE
                            143 
   49F5 D1            [10]  144 	pop 	de							;; Se extrae de la pila el sprite anteriormente seleccionado
   49F6 EB            [ 4]  145 	ex 	de, hl  						;; Intercambia valores entre los dos registros, ya que nosotros lo queremos en de y venia en hl
                            146 	;;ld	hl, (bc)
   49F7 DD 4E 02      [19]  147 	ld 	c, ancho(ix)						;; C = ancho entidad ( en bytes!)
   49FA DD 46 03      [19]  148 	ld 	b, alto(ix) 						;; B = alto entidad ( en bytes! = mismo numero de filas)
   49FD CD 5B 54      [17]  149 	call 	cpct_drawSprite_asm
   4A00 C3 1C 4A      [10]  150 	jp 	finaliza
                            151 
                            152 	;; BORRAR SPRITE
   4A03                     153 	borra:
                            154 	
   4A03 11 00 C0      [10]  155 	ld de, #0xC000     				;;PUNTERO AL PRINCIPIO DE LA MEMORIA DE VIDEO
   4A06 DD 4E 00      [19]  156 	ld c, pos_x(ix) 				;; IX es el registro indice que nos permite acceder a los datos de la entidad (en este caso: entity_x, entity_y.) C= entity_x
   4A09 DD 46 01      [19]  157 	ld b, pos_y(ix) 				;; B=entity_y Aqui indicamos la fila donde empieza y en c la columna (Coord X e Y)				
   4A0C CD 3C 57      [17]  158 	call cpct_getScreenPtr_asm      		;; COGER PUNTERO DE PANTALLA
                            159 
                            160 	
   4A0F EB            [ 4]  161 	ex 	de, hl  						;; Intercambia valores entre los dos registros, ya que nosotros lo queremos en de y venia en hl
   4A10 3E 00         [ 7]  162 	ld 	a, #0x00
   4A12 DD 4E 02      [19]  163 	ld 	c, ancho(ix)						;; C = ancho entidad ( en bytes!)
   4A15 DD 46 03      [19]  164 	ld 	b, alto(ix) 						;; B = alto entidad ( en bytes! = mismo numero de filas)
   4A18 CD 6E 56      [17]  165 	call 	cpct_drawSolidBox_asm
                            166 
   4A1B E1            [10]  167 	pop 	hl							;; Se extrae de la pila el sprite anteriormente seleccionado
                            168 
   4A1C                     169 	finaliza:
   4A1C C9            [10]  170 	ret
                            171 
                            172 
                            173 ;;==============================================================================
                            174 ;; FUNCION GLOBAL PARA SELECCIONAR SPRITE A DIBUJAR
                            175 ;; MODIFICA : HL, A
                            176 ;;===============================================================================
                            177 
   4A1D                     178 select_sprite:
                            179 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



                            180 
   4A1D 11 9F 49      [10]  181 	ld 	de, #spriteArray 
   4A20 DD 6E 0C      [19]  182 	ld	l, sprite(ix)
   4A23 26 00         [ 7]  183 	ld 	h, #0x00
   4A25 29            [11]  184   	add 	hl,hl	                     	;; Multiplying HL by 2
   4A26 19            [11]  185   	add 	hl,de                      	;; The address of the element: DE + HL = ArrayAddress + Index * 4
   4A27 4E            [ 7]  186   	ld 	c,(hl)                     	;; We have the element in DEBC
   4A28 23            [ 6]  187   	inc 	hl				;; 
   4A29 46            [ 7]  188   	ld 	b,(hl)				;; 
                            189 
   4A2A C9            [10]  190  	ret
