ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 .area _CODE
                              2 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                              3 .include "cpctelera.h.s"
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



                              4 .include "protagonista.h.s"
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



                              5 
                              6     
                              7 .globl _g_tileset
                              8 .globl _level1
                              9 .globl _level2
                             10 .globl _level4
                             11 
                             12 ;;=====================================================================
                             13 ;;=====================================================================
                             14 ;;DATOS PRIVADOS
                             15 ;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
                             16 ;;======================================================================
                             17 ;;=====================================================================
                             18 
                             19  ;;CREAR VARIABLES
   5315 00 0B                20 level: .dw #_level1
                             21 
   5317                      22 mapa_draw::
                             23     
   5317 21 9C 36      [10]   24     ld hl, #_g_tileset
   531A CD 14 56      [17]   25     call cpct_etm_setTileset2x4_asm
                             26 
   531D DD 7E 0B      [19]   27         ld a, 11(ix)
                             28 
   5320 FE 01         [ 7]   29         cp #1
   5322 21 00 0B      [10]   30         ld   hl, #_level1
   5325 22 15 53      [16]   31         ld (level),hl
   5328 28 50         [12]   32         jr z, primer_nivel
                             33 
   532A FE 02         [ 7]   34         cp #2
   532C 21 00 06      [10]   35         ld   hl, #_level2
   532F 22 15 53      [16]   36         ld (level),hl
   5332 28 4C         [12]   37         jr z, segundo_nivel
                             38 
   5334 FE 03         [ 7]   39         cp #3
   5336 21 00 01      [10]   40         ld   hl, #_level4
   5339 22 15 53      [16]   41         ld (level),hl
   533C 28 48         [12]   42         jr z, cuarto_nivel
                             43 
   533E FE 04         [ 7]   44         cp #4
   5340 21 00 0B      [10]   45         ld   hl, #_level1
   5343 22 15 53      [16]   46         ld (level),hl
   5346 28 32         [12]   47         jr z, primer_nivel
                             48 
   5348 FE 05         [ 7]   49         cp #5
   534A 21 00 06      [10]   50         ld   hl, #_level2
   534D 22 15 53      [16]   51         ld (level),hl
   5350 28 2E         [12]   52         jr z, segundo_nivel
                             53 
   5352 FE 06         [ 7]   54         cp #6
   5354 21 00 01      [10]   55         ld   hl, #_level4
   5357 22 15 53      [16]   56         ld (level),hl
   535A 28 2A         [12]   57         jr z, cuarto_nivel
                             58 
   535C FE 07         [ 7]   59         cp #7
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



   535E 21 00 0B      [10]   60         ld   hl, #_level1
   5361 22 15 53      [16]   61         ld (level),hl
   5364 28 14         [12]   62         jr z, primer_nivel
                             63 
   5366 FE 08         [ 7]   64         cp #8
   5368 21 00 01      [10]   65         ld   hl, #_level4
   536B 22 15 53      [16]   66         ld (level),hl
   536E 28 16         [12]   67         jr z, cuarto_nivel
                             68 
   5370 FE 09         [ 7]   69         cp #9
   5372 21 00 01      [10]   70         ld   hl, #_level4
   5375 22 15 53      [16]   71         ld (level),hl
   5378 28 0C         [12]   72         jr z, cuarto_nivel
                             73 
                             74 
   537A                      75     primer_nivel:
                             76 
   537A 21 00 0B      [10]   77         ld   hl, #_level1   ;; HL = pointer to the tilemap
   537D E5            [11]   78         push hl              ;; Push ptilemap to the stack
                             79 
   537E 18 0C         [12]   80         jr seguir
                             81 
   5380                      82     segundo_nivel:
                             83 
   5380 21 00 06      [10]   84         ld   hl, #_level2   ;; HL = pointer to the tilemap
   5383 E5            [11]   85         push hl              ;; Push ptilemap to the stack
                             86 
   5384 18 06         [12]   87         jr seguir
                             88 
   5386                      89     cuarto_nivel:
                             90 
   5386 21 00 01      [10]   91         ld   hl, #_level4   ;; HL = pointer to the tilemap
   5389 E5            [11]   92         push hl              ;; Push ptilemap to the stack
                             93 
   538A 18 00         [12]   94         jr seguir
                             95 
                             96    
                             97 
                             98 
   538C                      99     seguir:
                            100 
                            101     
   538C 21 00 C0      [10]  102     ld   hl, #0xC000  ;; HL = Pointer to video memory location where tilemap is drawn
   538F E5            [11]  103     push hl              ;; Push pvideomem to the stack
                            104     ;; Set Paramters on registers
   5390 3E 28         [ 7]  105     ld    a, #40  ;; A = map_width
   5392 01 00 00      [10]  106     ld    bc, #0000          ;; BC 0000
   5395 16 20         [ 7]  107     ld    d, #32          ;; H = height in tiles of the tile-box
   5397 1E 28         [ 7]  108     ld    e, #40          ;; L =  width in tiles of the tile-box
                            109 
   5399 CD FB 54      [17]  110     call  cpct_etm_drawTileBox2x4_asm 
                            111 
   539C C9            [10]  112     ret 
                            113 
   539D                     114 mapa_redraw::
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



                            115 
                            116 
   539D 21 9C 36      [10]  117      ld hl, #_g_tileset
   53A0 CD 14 56      [17]  118      call cpct_etm_setTileset2x4_asm
                            119 
   53A3 DD 7E 0B      [19]  120      ld a, 11(ix)
                            121 
   53A6 FE 01         [ 7]  122         cp #1
   53A8 21 00 0B      [10]  123         ld   hl, #_level1
                            124         ;ld (level),hl
   53AB 28 03         [12]  125         jr z, seguir2
                            126         
   53AD 2A 15 53      [16]  127      ld   hl, (level)   ;; HL = pointer to the tilemap
                            128 
   53B0                     129      seguir2:
   53B0 E5            [11]  130      push hl              ;; Push ptilemap to the stack
   53B1 21 00 C0      [10]  131      ld   hl, #0xC000  ;; HL = Pointer to video memory location where tilemap is drawn
   53B4 11 00 C0      [10]  132      ld de, #0xC000
   53B7 DD 4E 00      [19]  133      ld c, 0(ix)                    ;; IX es el registro indice que nos permite acceder a los datos de la entidad (en este caso: entity_x, entity_y.) C= entity_x
   53BA DD 46 01      [19]  134      ld b, 1(ix)                    ;; B=entity_y Aqui indicamos la fila donde empieza y en c la columna (Coord X e Y)              
                            135      ;dec c
                            136      ;dec c
                            137      
                            138      ;dec b
                            139      ;dec b
                            140 
                            141      ;call cpct_getScreenPtr_asm     ;; COGER PUNTERO DE PANTALLA
   53BD E5            [11]  142      push hl                        ;; Push pvideomem to the stack
                            143      ;; Set Paramters on registers
                            144     
   53BE DD 4E 00      [19]  145      ld c, 0(ix)                    ;; IX es el registro indice que nos permite acceder a los datos de la entidad (en este caso: entity_x, entity_y.) C= entity_x
   53C1 DD 46 01      [19]  146      ld b, 1(ix)                    ;; B=entity_y Aqui indicamos la fila donde empieza y en c la columna (Coord X e Y)              
                            147      
   53C4 78            [ 4]  148      ld a, b
   53C5 50            [ 4]  149      ld d, b
   53C6 06 00         [ 7]  150      ld b,#0
   53C8                     151         bucle:
   53C8 3D            [ 4]  152             dec a
   53C9 FE 00         [ 7]  153             cp #0
   53CB 28 16         [12]  154             jr z, salir
   53CD 3D            [ 4]  155             dec a
   53CE FE 00         [ 7]  156             cp #0
   53D0 28 11         [12]  157             jr z, salir
   53D2 3D            [ 4]  158             dec a
   53D3 FE 00         [ 7]  159             cp #0
   53D5 28 0C         [12]  160             jr z, salir
   53D7 3D            [ 4]  161             dec a
   53D8 FE 00         [ 7]  162             cp #0
   53DA 28 07         [12]  163             jr z, salir
   53DC 57            [ 4]  164             ld d,a
   53DD 78            [ 4]  165             ld a,b
   53DE 3C            [ 4]  166             inc a
   53DF 47            [ 4]  167             ld b,a
   53E0 7A            [ 4]  168             ld a,d
   53E1 18 E5         [12]  169             jr bucle
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   53E3                     170      salir:
                            171      
   53E3 79            [ 4]  172      ld a, c
   53E4 0E 00         [ 7]  173      ld c, #0
   53E6                     174         bucle_2:
   53E6 3D            [ 4]  175             dec a
   53E7 FE 00         [ 7]  176             cp #0
   53E9 28 0C         [12]  177             jr z, salir2
   53EB 3D            [ 4]  178             dec a
   53EC FE 00         [ 7]  179             cp #0
   53EE 28 07         [12]  180             jr z, salir2
   53F0 57            [ 4]  181             ld d,a
   53F1 79            [ 4]  182             ld a,c
   53F2 3C            [ 4]  183             inc a
   53F3 4F            [ 4]  184             ld c,a
   53F4 7A            [ 4]  185             ld a,d
                            186             
   53F5 18 EF         [12]  187             jr bucle_2
                            188 
   53F7                     189      salir2:
                            190      
                            191      ;dec b
   53F7 DD 7E 03      [19]  192      ld a,3(ix)  
   53FA FE 0F         [ 7]  193      cp #15
   53FC 20 06         [12]  194      jr nz,noprota
   53FE 16 05         [ 7]  195      ld d,#5
   5400 1E 03         [ 7]  196      ld e,#3
                            197         
   5402 18 04         [12]  198         jr saltar
                            199 
   5404                     200      noprota:
   5404 16 02         [ 7]  201      ld d,#2
   5406 1E 02         [ 7]  202      ld e,#2
                            203       
   5408                     204      saltar:
                            205     
   5408 3E 28         [ 7]  206      ld    a, #40  ;; A = map_width
   540A CD FB 54      [17]  207      call  cpct_etm_drawTileBox2x4_asm 
                            208 
                            209 
   540D C9            [10]  210     ret 
