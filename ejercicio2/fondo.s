.ifndef frame_1_s

.include "formas.s"

// Figuras
Fondo:

	sub  sp, sp, #56   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #48] // guardo la dirección de retorno en el stack
	stur x0, [sp, #40] // guardo el valor de x0 en el stack
	stur x1, [sp, #32] // guardo el valor de x1 en el stack
	stur x2, [sp, #24] // guardo el valor de x2 en el stack
	stur x3, [sp, #16] // guardo el valor de x3 en el stack
	stur x4, [sp, #8]  // guardo el valor de x4 en el stack
	stur x5, [sp, #0]  // guardo el valor de x4 en el stack

	mov x0, 0
	mov x1, 0
	mov x2, SCREEN_WIDTH
	mov x3, 0xCCCC
	bl  Cuadrado

	// Figura: Sol
	// rayo medio abajo
	mov  x0, 565
	mov  x1, 155
	mov  x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 560
	mov  x1, 155
	mov  x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 540
	mov  x1, 140
	mov  x2, 20
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 540
	mov  x1, 145
	mov  x2, 20
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	// rayo medio arriba
	mov  x0, 550
	mov  x1, 10
	mov  x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 560
	mov  x1, 10
	mov  x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 540
	mov  x1, 20
	mov  x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 540
	mov  x1, 10
	mov  x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	// rayo abajo derecha
	mov  x0, 615
	mov  x1, 105
	mov  x2, 5
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 605
	mov  x1, 105
	mov  x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 600
	mov  x1, 115
	mov  x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 580
	mov  x1, 115
	mov  x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 590
	mov  x1, 115
	mov  x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	// rayo abajo izquierda
	mov  x0, 485
	mov  x1, 125
	mov  x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 485
	mov  x1, 110
	mov  x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	mov  x0, 495
	mov  x1, 110
	mov  x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Cuadrado

	// rayo arriba derecha
	mov  x0, 485
	mov  x1, 27
	mov  x2, 5
	mov  x3, 15
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x0, 485
	mov  x1, 38
	mov  x2, 22
	mov  x3, 7
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x0, 498
	mov  x1, 40
	mov  x2, 10
	mov  x3, 30
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// rayo arriba izquierda
	mov  x0, 605
	mov  x1, 30
	mov  x2, 5
	mov  x3, 10
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x0, 600
	mov  x1, 40
	mov  x2, 10
	mov  x3, 7
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x0, 590
	mov  x1, 40
	mov  x2, 10
	mov  x3, 20
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x0, 550
	mov  x1, 85
	mov  x2, 55
	movz x3, 0x00FF9A00 & 0xFFFF, lsl 0
	movk x3, (0x00FF9A00 >> 16) & 0xFFFF, lsl 16
	bl   Circulo

	mov x0, 550
	mov x1, 85
	mov x2, 50
	mov x3, 0x00FFFF00
	bl  Circulo

	// Pajaros
	mov x0, 430
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 427
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 420
	mov x1, 100
	mov x2, 10
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 410
	mov x1, 110
	mov x2, 10
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 400
	mov x1, 100
	mov x2, 10
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 395
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 390
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 380
	mov x1, 120
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 370
	mov x1, 120
	mov x2, 10
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 360
	mov x1, 130
	mov x2, 10
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 350
	mov x1, 120
	mov x2, 10
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 345
	mov x1, 120
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 340
	mov x1, 120
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 340
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 330
	mov x1, 100
	mov x2, 10
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 320
	mov x1, 110
	mov x2, 10
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 310
	mov x1, 100
	mov x2, 10
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 305
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	mov x0, 300
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	mov x4, x24
	bl  CuadradoX

	// montana
	mov x0, 110
	mov x1, 120
	mov x2, 40
	mov x3, 100
	mov x4, 0xFFFFFF
	mov x5, x23
	bl  RectanguloX

	mov  x0, 80
	mov  x1, 150
	mov  x2, 100
	mov  x3, 100
	movz x4, 0x001C83AF & 0xFFFF, lsl 0
	movk x4, (0x001C83AF >> 16) & 0xFFFF, lsl 16
	mov  x5, x23
	bl   RectanguloX

	mov  x0, 30
	mov  x1, 200
	mov  x2, 200
	mov  x3, 100
	movz x4, 0x001C83AF & 0xFFFF, lsl 0
	movk x4, (0x001C83AF >> 16) & 0xFFFF, lsl 16
	mov  x5, x23
	bl   RectanguloX

	mov  x0, 0
	mov  x1, 300
	mov  x2, 300
	mov  x3, 100
	movz x4, 0x001C83AF & 0xFFFF, lsl 0
	movk x4, (0x001C83AF >> 16) & 0xFFFF, lsl 16
	mov  x5, x23
	bl   RectanguloX

	// Figura: piso
	mov  x0, 0
	mov  x1, 400
	mov  x2, 640
	mov  x3, 80
	movz x4, 0x0007DE00 & 0xFFFF, lsl 0
	movk x4, (0x0007DE00 >> 16) & 0xFFFF, lsl 16
	mov  x5, x23
	bl   RectanguloX

	mov  x0, 0
	mov  x1, 430
	mov  x2, 640
	mov  x3, 40
	movz x4, 0x00AF8D1C & 0xFFFF, lsl 0
	movk x4, (0x00AF8D1C >> 16) & 0xFFFF, lsl 16
	mov  x5, x23
	bl   RectanguloX

	mov  x0, 0
	mov  x1, 450
	mov  x2, 640
	mov  x3, 40
	movz x4, 0x00AF6F1C & 0xFFFF, lsl 0
	movk x4, (0x00AF6F1C >> 16) & 0xFFFF, lsl 16
	mov  x5, x23
	bl   RectanguloX

	ldur x5, [sp, #0]  // recupero el valor de x5
	ldur x4, [sp, #8]  // recupero el valor de x4
	ldur x3, [sp, #16] // recupero el valor de x3
	ldur x2, [sp, #24] // recupero el valor de x2
	ldur x1, [sp, #32] // recupero el valor de x1
	ldur x0, [sp, #40] // recupero el valor de x0
	ldur lr, [sp, #48] // recupero la dirección de retorno
	add  sp, sp, #56   // devuelvo la memoria pedida
	br   lr

	.endif
