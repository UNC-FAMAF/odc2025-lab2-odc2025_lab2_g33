.ifndef frame_1_s

.include "formas.s"

.equ BLANCO, 0xFFFFFFFF
.equ NEGRO, 0x00000000
.equ AZUL_1, 0x00001C86
.equ AZUL_2, 0x00002991
.equ AZUL_3, 0x00003DAC
.equ ANIL_1, 0x003232e6
.equ ANIL_2, 0x005858e0
.equ GRIS_2, 0x00D3D3D3
.equ GRIS_3, 0x00B8B8B8
.equ GRIS_1, 0x00636363
.equ PIEL_2, 0x00E6A183
.equ PIEL_1, 0x00c68642
.equ ROJO_1, 0x008B0000
.equ ROJO_2, 0x00d90000
.equ ROJO_3, 0x00a60000
.equ ROJO_4, 0x00590000

Sonic_Frame_3: 
  mov x2, 5
	mov x3, 10
	mov x0, 305
	mov x1, 260
 	movz x4, AZUL_1 & 0xFFFF, lsl 0
 	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
	mov x3, 15
	mov x0, 300
	mov x1, 250
 	movz x4, AZUL_1 & 0xFFFF, lsl 0
 	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 15
  mov x3, 5
  mov x0, 240
  mov x1, 320
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 20
  mov x3, 5
  mov x0, 250
  mov x1, 325
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo
  
  mov x2, 20
  mov x3, 5
  mov x0, 265
  mov x1, 330
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 20
  mov x3, 5
  mov x0, 270
  mov x1, 335
  movz x4, ROJO_3 & 0xFFFF, lsl 0
  movk x4, (ROJO_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 20
  mov x3, 10
  mov x0, 275
  mov x1, 340
  movz x4, ROJO_3 & 0xFFFF, lsl 0
  movk x4, (ROJO_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x0, 295
	mov x1, 345
	mov x2, 5
	mov x3, ROJO_3
	bl Cuadrado

  mov x2, 15
  mov x3, 15
  mov x0, 280
  mov x1, 345
  movz x4, ROJO_3 & 0xFFFF, lsl 0
  movk x4, (ROJO_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo
  
  mov x2, 5
  mov x3, 20
  mov x0, 295
  mov x1, 350
  movz x4, ROJO_1 & 0xFFFF, lsl 0
  movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 290
  mov x1, 370
  movz x4, ROJO_1 & 0xFFFF, lsl 0
  movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 285
  mov x1, 380
  movz x4, ROJO_1 & 0xFFFF, lsl 0
  movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 280
  mov x1, 390
  movz x4, ROJO_1 & 0xFFFF, lsl 0
  movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x0, 275
	mov x1, 400
	mov x2, 5
	mov x3, ROJO_1
	bl Cuadrado

  mov x0, 270
	mov x1, 405
	mov x2, 5
	mov x3, ROJO_1
	bl Cuadrado

  mov x2, 10
  mov x3, 5
  mov x0, 260
  mov x1, 410
  movz x4, ROJO_1 & 0xFFFF, lsl 0
  movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x0, 255
	mov x1, 405
	mov x2, 5
	mov x3, ROJO_1
	bl Cuadrado

  mov x2, 5
  mov x3, 10
  mov x0, 250
  mov x1, 395
  movz x4, ROJO_1 & 0xFFFF, lsl 0
  movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 10
  mov x3, 5
  mov x0, 250
  mov x1, 390
  movz x4, GRIS_2 & 0xFFFF, lsl 0
  movk x4, (GRIS_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 20
  mov x3, 5
  mov x0, 245
  mov x1, 385
  movz x4, GRIS_2 & 0xFFFF, lsl 0
  movk x4, (GRIS_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo


  mov x2, 15
  mov x3, 5
  mov x0, 250
  mov x1, 380
  movz x4, BLANCO & 0xFFFF, lsl 0
  movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 10
  mov x3, 5
  mov x0, 255
  mov x1, 375
  movz x4, BLANCO & 0xFFFF, lsl 0
  movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x0, 255
	mov x1, 370
	mov x2, 5
	mov x3, BLANCO
	bl Cuadrado

  mov x2, 5
  mov x3, 30
  mov x0, 265
  mov x1, 380
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 255
  mov x1, 395
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 20
  mov x0, 260
  mov x1, 390
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 15
  mov x0, 270
  mov x1, 390
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 275
  mov x1, 390
  movz x4, GRIS_2 & 0xFFFF, lsl 0
  movk x4, (GRIS_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 270
  mov x1, 380
  movz x4, GRIS_2 & 0xFFFF, lsl 0
  movk x4, (GRIS_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 270
  mov x1, 370
  movz x4, BLANCO & 0xFFFF, lsl 0
  movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x0, 275
	mov x1, 365
	mov x2, 5
	mov x3, BLANCO
	bl Cuadrado

  mov x2, 5
  mov x3, 20
  mov x0, 275
  mov x1, 370
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo
   
  mov x2, 5
  mov x3, 25
  mov x0, 280
  mov x1, 365
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 20
  mov x0, 285
  mov x1, 360
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 20
  mov x0, 290
  mov x1, 350
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x0, 280
	mov x1, 360
	mov x2, 5
	mov x3, ROJO_1
	bl Cuadrado

  mov x2, 15
  mov x3, 5
  mov x0, 185
  mov x1, 380
  movz x4, GRIS_1 & 0xFFFF, lsl 0
  movk x4, (GRIS_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 15
  mov x3, 5
  mov x0, 185
  mov x1, 375
  movz x4, GRIS_3 & 0xFFFF, lsl 0
  movk x4, (GRIS_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 10
  mov x3, 10
  mov x0, 240
  mov x1, 360
  movz x4, ANIL_1 & 0xFFFF, lsl 0
  movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 10
  mov x3, 15
  mov x0, 245
  mov x1, 370
  movz x4, ANIL_1 & 0xFFFF, lsl 0
  movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 10
  mov x3, 5
  mov x0, 245
  mov x1, 375
  movz x4, ANIL_1 & 0xFFFF, lsl 0
  movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 20
  mov x3, 10
  mov x0, 200
  mov x1, 365
  movz x4, AZUL_2 & 0xFFFF, lsl 0
  movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 20
  mov x3, 10
  mov x0, 190
  mov x1, 370
  movz x4, AZUL_2 & 0xFFFF, lsl 0
  movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 10
  mov x3, 5
  mov x0, 210
  mov x1, 365
  movz x4, AZUL_1 & 0xFFFF, lsl 0
  movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 20
  mov x3, 5
  mov x0, 210
  mov x1, 370
  movz x4, AZUL_1 & 0xFFFF, lsl 0
  movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 15
  mov x0, 205
  mov x1, 355
  movz x4, AZUL_1 & 0xFFFF, lsl 0
  movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 10
  mov x3, 5
  mov x0, 185
  mov x1, 370
  movz x4, GRIS_3 & 0xFFFF, lsl 0
  movk x4, (GRIS_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 15
  mov x3, 45
  mov x0, 170
  mov x1, 365
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 35
  mov x0, 165
  mov x1, 370
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 20
  mov x0, 160
  mov x1, 380
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 20
  mov x0, 185
  mov x1, 395
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 15
  mov x0, 190
  mov x1, 400
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 195
  mov x1, 405
  movz x4, ROJO_2 & 0xFFFF, lsl 0
  movk x4, (ROJO_2 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 15
  mov x3, 5
  mov x0, 200
  mov x1, 410
  movz x4, ROJO_3 & 0xFFFF, lsl 0
  movk x4, (ROJO_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 35
  mov x3, 5
  mov x0, 200
  mov x1, 415
  movz x4, ROJO_3 & 0xFFFF, lsl 0
  movk x4, (ROJO_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 55
  mov x3, 5
  mov x0, 200
  mov x1, 420
  movz x4, ROJO_3 & 0xFFFF, lsl 0
  movk x4, (ROJO_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 10
  mov x3, 5
  mov x0, 195
  mov x1, 405
  movz x4, ROJO_3 & 0xFFFF, lsl 0
  movk x4, (ROJO_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 190
  mov x1, 395
  movz x4, ROJO_3 & 0xFFFF, lsl 0
  movk x4, (ROJO_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 5
  mov x3, 10
  mov x0, 185
  mov x1, 385
  movz x4, ROJO_3 & 0xFFFF, lsl 0
  movk x4, (ROJO_3 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 15
  mov x3, 5
  mov x0, 185
  mov x1, 415
  movz x4, ROJO_1 & 0xFFFF, lsl 0
  movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x2, 15
  mov x3, 5
  mov x0, 170
  mov x1, 405
  movz x4, ROJO_1 & 0xFFFF, lsl 0
  movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

  mov x0, 180
	mov x1, 410
	mov x2, 5
	mov x3, ROJO_1
	bl Cuadrado

  mov x2, 10
  mov x3, 5
  mov x0, 160
  mov x1, 400
  movz x4, ROJO_1 & 0xFFFF, lsl 0
  movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

.endif



