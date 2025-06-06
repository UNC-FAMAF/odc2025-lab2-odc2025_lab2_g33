.ifndef sonic_s

.include "formas.s"

.equ BLANCO, 0xFFFFFFFF
.equ NEGRO, 0x00000000
.equ AZUL_1, 0x00001C86
.equ AZUL_2, 0x00002991
.equ AZUL_3, 0x00003DAC
.equ ANIL_1, 0x003232e6
.equ ANIL_2, 0x005858e0
.equ CELESTE_1, 0x006262D5
.equ CELESTE_2, 0x006161D4
.equ CELESTE_3, 0x008686FC
.equ CELESTE_4, 0x008888FE
.equ GRIS_2, 0x00D3D3D3
.equ GRIS_3, 0x00B8B8B8
.equ GRIS_1, 0x00636363
.equ PIEL_2, 0x00E6A183
.equ PIEL_1, 0x00c68642
.equ ROJO_1, 0x008B0000
.equ ROJO_2, 0x00d90000
.equ ROJO_3, 0x00a60000

/*
  El sprite de Sonic se divide en dos: una mitad que contiene su torso para arriba y la otra mitad son las piernas que giran.
  Las piernas pueden dividirse en 4 frames que pueden ser animados.
*/
Sonic_Base:
	sub  sp, sp, #48   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #40] // guardo la dirección de retorno en el stack
	stur x0, [sp, #32] // guardo el valor de x0 en el stack
	stur x1, [sp, #24] // guardo el valor de x1 en el stack
	stur x2, [sp, #16] // guardo el valor de x2 en el stack
	stur x3, [sp, #8]  // guardo el valor de x3 en el stack
	stur x4, [sp, #0]  // guardo el valor de x4 en el stack

	mov  x2, 60
	mov  x3, 50
	mov  x0, 240
	mov  x1, 260
	movz x4, ANIL_2 & 0xFFFF, lsl 0
	movk x4, (ANIL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 30
	mov  x0, 270
	mov  x1, 285
	movz x4, BLANCO & 0xFFFF, lsl 0
	movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 200
	mov  x1, 250
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 45
	mov  x3, 5
	mov  x0, 210
	mov  x1, 255
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 225
	mov  x1, 260
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 240
	mov  x1, 265
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 5
	mov  x0, 245
	mov  x1, 270
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 215
	mov  x1, 275
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 205
	mov  x1, 280
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 195
	mov  x1, 285
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 205
	mov  x1, 290
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 30
	mov  x3, 5
	mov  x0, 215
	mov  x1, 295
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 225
	mov  x1, 300
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 230
	mov  x1, 305
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 50
	mov  x3, 5
	mov  x0, 205
	mov  x1, 310
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 35
	mov  x3, 5
	mov  x0, 220
	mov  x1, 315
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 250
	mov  x1, 320
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 255
	mov  x1, 325
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 60
	mov  x3, 5
	mov  x0, 210
	mov  x1, 245
	movz x4, AZUL_3 & 0xFFFF, lsl 0
	movk x4, (AZUL_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 30
	mov  x3, 5
	mov  x0, 225
	mov  x1, 250
	movz x4, AZUL_3 & 0xFFFF, lsl 0
	movk x4, (AZUL_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 255
	mov x1, 255
	mov x2, 5
	mov x3, AZUL_3
	bl  Cuadrado

	mov  x2, 10
	mov  x3, 5
	mov  x0, 260
	mov  x1, 260
	movz x4, AZUL_3 & 0xFFFF, lsl 0
	movk x4, (AZUL_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 270
	mov x1, 265
	mov x2, 5
	mov x3, AZUL_3
	bl  Cuadrado

	mov  x2, 10
	mov  x3, 5
	mov  x0, 260
	mov  x1, 270
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 35
	mov  x0, 260
	mov  x1, 270
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 250
	mov  x1, 295
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 250
	mov  x1, 275
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 245
	mov x1, 280
	mov x2, 5
	mov x3, ANIL_1 & 0xFFFF
	bl  Cuadrado

	mov x0, 245
	mov x1, 290
	mov x2, 5
	mov x3, ANIL_1 & 0xFFFF
	bl  Cuadrado

	mov x0, 265
	mov x1, 305
	mov x2, 5
	mov x3, ANIL_1 & 0xFFFF
	bl  Cuadrado

	mov x0, 270
	mov x1, 310
	mov x2, 5
	mov x3, ANIL_1 & 0xFFFF
	bl  Cuadrado

	mov  x2, 5
	mov  x3, 20
	mov  x0, 235
	mov  x1, 275
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 15
	mov  x0, 230
	mov  x1, 280
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 230
	mov  x1, 270
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 255
	mov  x1, 250
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 255
	mov  x1, 250
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 260
	mov  x1, 255
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 270
	mov x1, 260
	mov x2, 5
	mov x3, ANIL_1 & 0xFFFF
	bl  Cuadrado

	mov  x2, 15
	mov  x3, 5
	mov  x0, 280
	mov  x1, 260
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 290
	mov  x1, 265
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 295
	mov x1, 270
	mov x2, 10
	mov x3, ANIL_1 & 0xFFFF
	bl  Cuadrado

	mov  x2, 10
	mov  x3, 25
	mov  x0, 300
	mov  x1, 275
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 295
	mov x1, 300
	mov x2, 5
	mov x3, ANIL_2 & 0xFFFF
	bl  Cuadrado

	mov  x2, 10
	mov  x3, 5
	mov  x0, 225
	mov  x1, 275
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 240
	mov  x1, 275
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	mov  x0, 240
	mov  x1, 275
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	mov  x0, 225
	mov  x1, 275
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 215
	mov x1, 280
	mov x2, 10
	mov x3, AZUL_2
	bl  Cuadrado

	mov x0, 245
	mov x1, 295
	mov x2, 10
	mov x3, AZUL_2
	bl  Cuadrado

	mov x0, 250
	mov x1, 300
	mov x2, 10
	mov x3, AZUL_2
	bl  Cuadrado

	mov x0, 255
	mov x1, 305
	mov x2, 5
	mov x3, AZUL_2
	bl  Cuadrado

	mov x0, 260
	mov x1, 305
	mov x2, 5
	mov x3, AZUL_2
	bl  Cuadrado

	mov x0, 230
	mov x1, 305
	mov x2, 5
	mov x3, AZUL_2
	bl  Cuadrado

	mov  x2, 30
	mov  x3, 5
	mov  x0, 200
	mov  x1, 310
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 255
	mov x1, 310
	mov x2, 5
	mov x3, AZUL_2
	bl  Cuadrado

	mov  x2, 15
	mov  x3, 5
	mov  x0, 270
	mov  x1, 250
	movz x4, AZUL_3 & 0xFFFF, lsl 0
	movk x4, (AZUL_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 285
	mov  x1, 255
	movz x4, AZUL_3 & 0xFFFF, lsl 0
	movk x4, (AZUL_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 295
	mov x1, 260
	mov x2, 5
	mov x3, AZUL_3
	bl  Cuadrado

	mov x0, 300
	mov x1, 265
	mov x2, 5
	mov x3, AZUL_3
	bl  Cuadrado

	mov  x2, 5
	mov  x3, 10
	mov  x0, 305
	mov  x1, 270
	movz x4, AZUL_3 & 0xFFFF, lsl 0
	movk x4, (AZUL_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 310
	mov  x1, 280
	movz x4, ANIL_2 & 0xFFFF, lsl 0
	movk x4, (ANIL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 310
	mov x1, 280
	mov x2, 5
	mov x3, AZUL_1
	bl  Cuadrado

	mov  x2, 15
	mov  x3, 10
	mov  x0, 300
	mov  x1, 305
	movz x4, GRIS_2 & 0xFFFF, lsl 0
	movk x4, (GRIS_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 15
	mov  x0, 310
	mov  x1, 290
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 15
	mov  x0, 310
	mov  x1, 290
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 15
	mov  x0, 305
	mov  x1, 300
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 300
	mov  x1, 315
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	mov  x0, 290
	mov  x1, 290
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 15
	mov  x0, 295
	mov  x1, 295
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 300
	mov  x1, 295
	movz x4, ANIL_2 & 0xFFFF, lsl 0
	movk x4, (ANIL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 300
	mov x1, 305
	mov x2, 5
	mov x3, BLANCO
	bl  Cuadrado

	mov  x2, 10
	mov  x3, 5
	mov  x0, 275
	mov  x1, 280
	movz x4, GRIS_2 & 0xFFFF, lsl 0
	movk x4, (GRIS_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 270
	mov  x1, 285
	movz x4, GRIS_2 & 0xFFFF, lsl 0
	movk x4, (GRIS_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	mov  x0, 260
	mov  x1, 310
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 20
	mov  x0, 260
	mov  x1, 310
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 275
	mov  x1, 285
	movz x4, BLANCO & 0xFFFF, lsl 0
	movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 275
	mov  x1, 310
	movz x4, BLANCO & 0xFFFF, lsl 0
	movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 5
	mov  x0, 265
	mov  x1, 310
	movz x4, BLANCO & 0xFFFF, lsl 0
	movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 270
	mov  x1, 315
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 255
	mov  x1, 315
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 45
	mov  x3, 5
	mov  x0, 260
	mov  x1, 320
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 45
	mov  x3, 5
	mov  x0, 260
	mov  x1, 320
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 265
	mov  x1, 325
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 295
	mov  x1, 315
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 255
	mov  x1, 315
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 30
	mov  x3, 5
	mov  x0, 260
	mov  x1, 330
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 290
	mov  x1, 325
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 260
	mov  x1, 310
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 255
	mov  x1, 265
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 15
	mov  x0, 255
	mov  x1, 260
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 15
	mov  x0, 250
	mov  x1, 260
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 245
	mov  x1, 330
	movz x4, ROJO_1 & 0xFFFF, lsl 0
	movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 35
	mov  x3, 5
	mov  x0, 245
	mov  x1, 335
	movz x4, GRIS_1 & 0xFFFF, lsl 0
	movk x4, (GRIS_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 275
	mov  x1, 335
	movz x4, ROJO_1 & 0xFFFF, lsl 0
	movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 290
	mov  x1, 330
	movz x4, ROJO_1 & 0xFFFF, lsl 0
	movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 30
	mov  x3, 5
	mov  x0, 245
	mov  x1, 340
	movz x4, GRIS_3 & 0xFFFF, lsl 0
	movk x4, (GRIS_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 250
	mov  x1, 345
	movz x4, GRIS_3 & 0xFFFF, lsl 0
	movk x4, (GRIS_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 255
	mov  x1, 350
	movz x4, GRIS_3 & 0xFFFF, lsl 0
	movk x4, (GRIS_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 245
	mov  x1, 340
	movz x4, GRIS_1 & 0xFFFF, lsl 0
	movk x4, (GRIS_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 260
	mov  x1, 340
	movz x4, GRIS_1 & 0xFFFF, lsl 0
	movk x4, (GRIS_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 255
	mov  x1, 345
	movz x4, GRIS_1 & 0xFFFF, lsl 0
	movk x4, (GRIS_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 255
	mov  x1, 350
	movz x4, GRIS_1 & 0xFFFF, lsl 0
	movk x4, (GRIS_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 25
	mov  x0, 215
	mov  x1, 325
	movz x4, BLANCO & 0xFFFF, lsl 0
	movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 215
	mov  x1, 345
	movz x4, GRIS_3 & 0xFFFF, lsl 0
	movk x4, (GRIS_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 30
	mov  x3, 5
	mov  x0, 215
	mov  x1, 340
	movz x4, GRIS_2 & 0xFFFF, lsl 0
	movk x4, (GRIS_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	mov  x0, 240
	mov  x1, 325
	movz x4, GRIS_3 & 0xFFFF, lsl 0
	movk x4, (GRIS_3 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 240
	mov x1, 320
	mov x2, 5
	mov x3, AZUL_1
	bl  Cuadrado

	mov  x2, 5
	mov  x3, 10
	mov  x0, 245
	mov  x1, 320
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 245
	mov  x1, 325
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov x0, 240
	mov x1, 325
	mov x2, 5
	mov x3, BLANCO
	bl  Cuadrado

	mov  x2, 20
	mov  x3, 5
	mov  x0, 220
	mov  x1, 320
	movz x4, BLANCO & 0xFFFF, lsl 0
	movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 230
	mov  x1, 325
	movz x4, GRIS_1 & 0xFFFF, lsl 0
	movk x4, (GRIS_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	mov  x0, 210
	mov  x1, 325
	movz x4, GRIS_1 & 0xFFFF, lsl 0
	movk x4, (GRIS_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 205
	mov  x1, 325
	movz x4, BLANCO & 0xFFFF, lsl 0
	movk x4, (BLANCO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 205
	mov  x1, 335
	movz x4, GRIS_2 & 0xFFFF, lsl 0
	movk x4, (GRIS_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 210
	mov  x1, 315
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 20
	mov  x0, 185
	mov  x1, 315
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 185
	mov  x1, 315
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 210
	mov  x1, 320
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 190
	mov  x1, 315
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 190
	mov  x1, 320
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 190
	mov  x1, 325
	movz x4, ROJO_1 & 0xFFFF, lsl 0
	movk x4, (ROJO_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 195
	mov  x1, 330
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 5
	mov  x0, 205
	mov  x1, 320
	movz x4, GRIS_1 & 0xFFFF, lsl 0
	movk x4, (GRIS_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 185
	mov  x1, 315
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 180
	mov  x1, 320
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 5
	mov  x0, 185
	mov  x1, 330
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 190
	mov  x1, 335
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 215
	mov  x1, 350
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 5
	mov  x0, 240
	mov  x1, 345
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 240
	mov  x1, 350
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 5
	mov  x0, 240
	mov  x1, 355
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 15
	mov  x0, 220
	mov  x1, 350
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 220
	mov  x1, 360
	movz x4, PIEL_1 & 0xFFFF, lsl 0
	movk x4, (PIEL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 5
	mov  x0, 225
	mov  x1, 355
	movz x4, PIEL_2 & 0xFFFF, lsl 0
	movk x4, (PIEL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 215
	mov  x1, 365
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 15
	mov  x3, 10
	mov  x0, 205
	mov  x1, 355
	movz x4, ANIL_1 & 0xFFFF, lsl 0
	movk x4, (ANIL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 205
	mov  x1, 355
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 10
	mov  x0, 195
	mov  x1, 345
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 40
	mov  x3, 5
	mov  x0, 175
	mov  x1, 340
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 30
	mov  x3, 5
	mov  x0, 180
	mov  x1, 345
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 195
	mov  x1, 365
	movz x4, AZUL_2 & 0xFFFF, lsl 0
	movk x4, (AZUL_2 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 195
	mov  x1, 370
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 190
	mov  x1, 370
	movz x4, AZUL_1 & 0xFFFF, lsl 0
	movk x4, (AZUL_1 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x4, [sp, #0]  // recupero el valor de x4
	ldur x3, [sp, #8]  // recupero el valor de x3
	ldur x2, [sp, #16] // recupero el valor de x2
	ldur x1, [sp, #24] // recupero el valor de x1
	ldur x0, [sp, #32] // recupero el valor de x0
	ldur lr, [sp, #40] // recupero la dirección de retorno
	add  sp, sp, #48   // devuelvo la memoria pedida
	br   lr

	.endif

