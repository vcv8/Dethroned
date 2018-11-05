.area _CODE

.include "cpctelera.h.s"
.include "protagonista.h.s"

    
.globl _g_tileset
.globl _level1
.globl _level2
.globl _level4

;;=====================================================================
;;=====================================================================
;;DATOS PRIVADOS
;; Los otros ficheros no pueden acceder a estos valores. NO SON GLOBALES
;;======================================================================
;;=====================================================================

 ;;CREAR VARIABLES
level: .dw #_level1

mapa_draw::
    
    ld hl, #_g_tileset
    call cpct_etm_setTileset2x4_asm

        ld a, 11(ix)

        cp #1
        ld   hl, #_level1
        ld (level),hl
        jr z, primer_nivel

        cp #2
        ld   hl, #_level2
        ld (level),hl
        jr z, segundo_nivel

        cp #3
        ld   hl, #_level4
        ld (level),hl
        jr z, cuarto_nivel

        cp #4
        ld   hl, #_level1
        ld (level),hl
        jr z, primer_nivel

        cp #5
        ld   hl, #_level2
        ld (level),hl
        jr z, segundo_nivel

        cp #6
        ld   hl, #_level4
        ld (level),hl
        jr z, cuarto_nivel

        cp #7
        ld   hl, #_level1
        ld (level),hl
        jr z, primer_nivel

        cp #8
        ld   hl, #_level4
        ld (level),hl
        jr z, cuarto_nivel

        cp #9
        ld   hl, #_level4
        ld (level),hl
        jr z, cuarto_nivel


    primer_nivel:

        ld   hl, #_level1   ;; HL = pointer to the tilemap
        push hl              ;; Push ptilemap to the stack

        jr seguir

    segundo_nivel:

        ld   hl, #_level2   ;; HL = pointer to the tilemap
        push hl              ;; Push ptilemap to the stack

        jr seguir

    cuarto_nivel:

        ld   hl, #_level4   ;; HL = pointer to the tilemap
        push hl              ;; Push ptilemap to the stack

        jr seguir

   


    seguir:

    
    ld   hl, #0xC000  ;; HL = Pointer to video memory location where tilemap is drawn
    push hl              ;; Push pvideomem to the stack
    ;; Set Paramters on registers
    ld    a, #40  ;; A = map_width
    ld    bc, #0000          ;; BC 0000
    ld    d, #32          ;; H = height in tiles of the tile-box
    ld    e, #40          ;; L =  width in tiles of the tile-box

    call  cpct_etm_drawTileBox2x4_asm 

    ret 

mapa_redraw::


     ld hl, #_g_tileset
     call cpct_etm_setTileset2x4_asm

     ld a, 11(ix)

        cp #1
        ld   hl, #_level1
        ;ld (level),hl
        jr z, seguir2
        
     ld   hl, (level)   ;; HL = pointer to the tilemap

     seguir2:
     push hl              ;; Push ptilemap to the stack
     ld   hl, #0xC000  ;; HL = Pointer to video memory location where tilemap is drawn
     ld de, #0xC000
     ld c, 0(ix)                    ;; IX es el registro indice que nos permite acceder a los datos de la entidad (en este caso: entity_x, entity_y.) C= entity_x
     ld b, 1(ix)                    ;; B=entity_y Aqui indicamos la fila donde empieza y en c la columna (Coord X e Y)              
     ;dec c
     ;dec c
     
     ;dec b
     ;dec b

     ;call cpct_getScreenPtr_asm     ;; COGER PUNTERO DE PANTALLA
     push hl                        ;; Push pvideomem to the stack
     ;; Set Paramters on registers
    
     ld c, 0(ix)                    ;; IX es el registro indice que nos permite acceder a los datos de la entidad (en este caso: entity_x, entity_y.) C= entity_x
     ld b, 1(ix)                    ;; B=entity_y Aqui indicamos la fila donde empieza y en c la columna (Coord X e Y)              
     
     ld a, b
     ld d, b
     ld b,#0
        bucle:
            dec a
            cp #0
            jr z, salir
            dec a
            cp #0
            jr z, salir
            dec a
            cp #0
            jr z, salir
            dec a
            cp #0
            jr z, salir
            ld d,a
            ld a,b
            inc a
            ld b,a
            ld a,d
            jr bucle
     salir:
     
     ld a, c
     ld c, #0
        bucle_2:
            dec a
            cp #0
            jr z, salir2
            dec a
            cp #0
            jr z, salir2
            ld d,a
            ld a,c
            inc a
            ld c,a
            ld a,d
            
            jr bucle_2

     salir2:
     
     ;dec b
     ld a,3(ix)  
     cp #15
     jr nz,noprota
     ld d,#5
     ld e,#3
        
        jr saltar

     noprota:
     ld d,#2
     ld e,#2
      
     saltar:
    
     ld    a, #40  ;; A = map_width
     call  cpct_etm_drawTileBox2x4_asm 


    ret 
