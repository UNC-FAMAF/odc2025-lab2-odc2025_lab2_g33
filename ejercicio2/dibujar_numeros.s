.ifndef dibujar_numeros_s

.include "formas.s"

.equ AMARILLO, 0x00FFAA00

Numeros:
	sub  sp, sp, #64   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #56] // guardo la dirección de retorno en el stack
	stur x0, [sp, #48] // guardo el valor de x0 en el stack
	stur x1, [sp, #40] // guardo el valor de x1 en el stack
	stur x2, [sp, #32] // guardo el valor de x2 en el stack
	stur x3, [sp, #24] // guardo el valor de x3 en el stack
	stur x4, [sp, #16] // guardo el valor de x4 en el stack
	stur x5, [sp, #8]  // guardo el valor de x5 en el stack
	stur x6, [sp, #0]  // guardo el valor de x6 en el stack

	// LEVEL: OdC

	mov x0, 10
	mov x1, 5
	bl  LetraL

	mov x0, 35
	mov x1, 5
	bl  LetraE

	mov x0, 60
	mov x1, 5
	bl  LetraV

	mov x0, 90
	mov x1, 5
	bl  LetraE

	mov x0, 115
	mov x1, 5
	bl  LetraL

	mov x0, 130
	mov x1, 5
	bl  LetraDosPuntos

	mov x0, 160
	mov x1, 5
	bl  LetraO

	mov x0, 190
	mov x1, 5
	bl  Letrad

	mov x0, 210
	mov x1, 5
	bl  LetraC

	// SCORE: 2025

	mov x0, 10
	mov x1, 35
	bl  LetraS

	mov x0, 35
	mov x1, 35
	bl  LetraC

	mov x0, 60
	mov x1, 35
	bl  LetraO

	mov x0, 90
	mov x1, 35
	bl  LetraR

	mov x0, 110
	mov x1, 35
	bl  LetraE

	mov x0, 130
	mov x1, 35
	bl  LetraDosPuntos

	mov x0, 160
	mov x1, 35
	bl  Numero2

	mov x0, 185
	mov x1, 35
	bl  Numero0

	mov x0, 210
	mov x1, 35
	bl  Numero2

	mov x0, 235
	mov x1, 35
	bl  Numero5

	ldur x6, [sp, #0]  // recupero el valor de x6
	ldur x5, [sp, #8]  // recupero el valor de x5
	ldur x4, [sp, #16] // recupero el valor de x4
	ldur x3, [sp, #24] // recupero el valor de x3
	ldur x2, [sp, #32] // recupero el valor de x2
	ldur x1, [sp, #40] // recupero el valor de x1
	ldur x0, [sp, #48] // recupero el valor de x0
	ldur lr, [sp, #56] // recupero la dirección de retorno
	add  sp, sp, #64   // devuelvo la memoria pedida
	br   lr

	// // -------------- "OdC 2025" --------------------------------

/*
Letras
Parametros:
	x0 = posición de la esquina superior izquierda en x
	x1 = posición de la esquina superior izquierda en y
*/
	// -------------- Letra O:

LetraO:
	sub  sp, sp, #64   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #56] // guardo la dirección de retorno en el stack
	stur x0, [sp, #48] // guardo el valor de x0 en el stack
	stur x1, [sp, #40] // guardo el valor de x1 en el stack
	stur x2, [sp, #32] // guardo el valor de x2 en el stack
	stur x3, [sp, #24] // guardo el valor de x3 en el stack
	stur x4, [sp, #16] // guardo el valor de x4 en el stack
	stur x5, [sp, #8]  // guardo el valor de x5 en el stack
	stur x6, [sp, #0]  // guardo el valor de x6 en el stack

	// almaceno los valores de origen de la letra en x5 y x6
	mov x5, x0
	mov x6, x1

	mov  x2, 5
	mov  x3, 20
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	add  x0, x5, 20
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]  // recupero el valor de x6
	ldur x5, [sp, #8]  // recupero el valor de x5
	ldur x4, [sp, #16] // recupero el valor de x4
	ldur x3, [sp, #24] // recupero el valor de x3
	ldur x2, [sp, #32] // recupero el valor de x2
	ldur x1, [sp, #40] // recupero el valor de x1
	ldur x0, [sp, #48] // recupero el valor de x0
	ldur lr, [sp, #56] // recupero la dirección de retorno
	add  sp, sp, #64   // devuelvo la memoria pedida
	br   lr

	// -------------- Letra d:

Letrad:
	sub  sp, sp, #64   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #56] // guardo la dirección de retorno en el stack
	stur x0, [sp, #48] // guardo el valor de x0 en el stack
	stur x1, [sp, #40] // guardo el valor de x1 en el stack
	stur x2, [sp, #32] // guardo el valor de x2 en el stack
	stur x3, [sp, #24] // guardo el valor de x3 en el stack
	stur x4, [sp, #16] // guardo el valor de x4 en el stack
	stur x5, [sp, #8]  // guardo el valor de x5 en el stack
	stur x6, [sp, #0]  // guardo el valor de x6 en el stack

	// almaceno los valores de origen de la letra en x5 y x6
	mov x5, x0
	mov x6, x1

	mov  x2, 5
	mov  x3, 15
	add  x0, x5, 0
	add  x1, x6, 5
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 5
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	add  x0, x5, 10
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]  // recupero el valor de x6
	ldur x5, [sp, #8]  // recupero el valor de x5
	ldur x4, [sp, #16] // recupero el valor de x4
	ldur x3, [sp, #24] // recupero el valor de x3
	ldur x2, [sp, #32] // recupero el valor de x2
	ldur x1, [sp, #40] // recupero el valor de x1
	ldur x0, [sp, #48] // recupero el valor de x0
	ldur lr, [sp, #56] // recupero la dirección de retorno
	add  sp, sp, #64   // devuelvo la memoria pedida
	br   lr

	// -------------- Letra C:

LetraC:

	sub  sp, sp, #64   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #56] // guardo la dirección de retorno en el stack
	stur x0, [sp, #48] // guardo el valor de x0 en el stack
	stur x1, [sp, #40] // guardo el valor de x1 en el stack
	stur x2, [sp, #32] // guardo el valor de x2 en el stack
	stur x3, [sp, #24] // guardo el valor de x3 en el stack
	stur x4, [sp, #16] // guardo el valor de x4 en el stack
	stur x5, [sp, #8]  // guardo el valor de x5 en el stack
	stur x6, [sp, #0]  // guardo el valor de x6 en el stack

	// almaceno los valores de origen de la letra en x5 y x6
	mov x5, x0
	mov x6, x1

	mov  x2, 5
	mov  x3, 20
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]  // recupero el valor de x6
	ldur x5, [sp, #8]  // recupero el valor de x5
	ldur x4, [sp, #16] // recupero el valor de x4
	ldur x3, [sp, #24] // recupero el valor de x3
	ldur x2, [sp, #32] // recupero el valor de x2
	ldur x1, [sp, #40] // recupero el valor de x1
	ldur x0, [sp, #48] // recupero el valor de x0
	ldur lr, [sp, #56] // recupero la dirección de retorno
	add  sp, sp, #64   // devuelvo la memoria pedida
	br   lr

	// -------------- Número 2

Numero2:
	sub  sp, sp, #64   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #56] // guardo la dirección de retorno en el stack
	stur x0, [sp, #48] // guardo el valor de x0 en el stack
	stur x1, [sp, #40] // guardo el valor de x1 en el stack
	stur x2, [sp, #32] // guardo el valor de x2 en el stack
	stur x3, [sp, #24] // guardo el valor de x3 en el stack
	stur x4, [sp, #16] // guardo el valor de x4 en el stack
	stur x5, [sp, #8]  // guardo el valor de x5 en el stack
	stur x6, [sp, #0]  // guardo el valor de x6 en el stack

	// almaceno los valores de origen de la letra en x5 y x6
	mov x5, x0
	mov x6, x1

	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	add  x0, x5, 0
	add  x1, x6, 9
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	add  x0, x5, 0
	add  x1, x6, 9
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 4
	add  x0, x5, 0
	add  x1, x6, 8
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	add  x0, x5, 15
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]  // recupero el valor de x6
	ldur x5, [sp, #8]  // recupero el valor de x5
	ldur x4, [sp, #16] // recupero el valor de x4
	ldur x3, [sp, #24] // recupero el valor de x3
	ldur x2, [sp, #32] // recupero el valor de x2
	ldur x1, [sp, #40] // recupero el valor de x1
	ldur x0, [sp, #48] // recupero el valor de x0
	ldur lr, [sp, #56] // recupero la dirección de retorno
	add  sp, sp, #64   // devuelvo la memoria pedida
	br   lr

	// -------------- Número 0

Numero0:
	sub  sp, sp, #64   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #56] // guardo la dirección de retorno en el stack
	stur x0, [sp, #48] // guardo el valor de x0 en el stack
	stur x1, [sp, #40] // guardo el valor de x1 en el stack
	stur x2, [sp, #32] // guardo el valor de x2 en el stack
	stur x3, [sp, #24] // guardo el valor de x3 en el stack
	stur x4, [sp, #16] // guardo el valor de x4 en el stack
	stur x5, [sp, #8]  // guardo el valor de x5 en el stack
	stur x6, [sp, #0]  // guardo el valor de x6 en el stack

	// almaceno los valores de origen de la letra en x5 y x6
	mov x5, x0
	mov x6, x1

	mov  x2, 5
	mov  x3, 20
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	add  x0, x5, 15
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]  // recupero el valor de x6
	ldur x5, [sp, #8]  // recupero el valor de x5
	ldur x4, [sp, #16] // recupero el valor de x4
	ldur x3, [sp, #24] // recupero el valor de x3
	ldur x2, [sp, #32] // recupero el valor de x2
	ldur x1, [sp, #40] // recupero el valor de x1
	ldur x0, [sp, #48] // recupero el valor de x0
	ldur lr, [sp, #56] // recupero la dirección de retorno
	add  sp, sp, #64   // devuelvo la memoria pedida
	br   lr

	// -------------- Número 5

Numero5:
	sub  sp, sp, #64   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #56] // guardo la dirección de retorno en el stack
	stur x0, [sp, #48] // guardo el valor de x0 en el stack
	stur x1, [sp, #40] // guardo el valor de x1 en el stack
	stur x2, [sp, #32] // guardo el valor de x2 en el stack
	stur x3, [sp, #24] // guardo el valor de x3 en el stack
	stur x4, [sp, #16] // guardo el valor de x4 en el stack
	stur x5, [sp, #8]  // guardo el valor de x5 en el stack
	stur x6, [sp, #0]  // guardo el valor de x6 en el stack

	// almaceno los valores de origen de la letra en x5 y x6
	mov x5, x0
	mov x6, x1

	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	add  x0, x5, 15
	add  x1, x6, 9
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 5
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 4
	add  x0, x5, 0
	add  x1, x6, 8
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]  // recupero el valor de x6
	ldur x5, [sp, #8]  // recupero el valor de x5
	ldur x4, [sp, #16] // recupero el valor de x4
	ldur x3, [sp, #24] // recupero el valor de x3
	ldur x2, [sp, #32] // recupero el valor de x2
	ldur x1, [sp, #40] // recupero el valor de x1
	ldur x0, [sp, #48] // recupero el valor de x0
	ldur lr, [sp, #56] // recupero la dirección de retorno
	add  sp, sp, #64   // devuelvo la memoria pedida
	br   lr

	// -------------- Letra L:
LetraL:
	sub  sp, sp, #64   // reservar espacio en stack
	stur lr, [sp, #56] // guardar lr
	stur x0, [sp, #48]
	stur x1, [sp, #40]
	stur x2, [sp, #32]
	stur x3, [sp, #24]
	stur x4, [sp, #16]
	stur x5, [sp, #8]
	stur x6, [sp, #0]

	mov x5, x0 // x5 = x0 (origen x)
	mov x6, x1 // x6 = x1 (origen y)

	// trazo vertical de L
	mov  x2, 5                                 // ancho
	mov  x3, 20                                // alto
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// trazo horizontal de L (base)
	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// restaurar registros y retornar
	ldur x6, [sp, #0]
	ldur x5, [sp, #8]
	ldur x4, [sp, #16]
	ldur x3, [sp, #24]
	ldur x2, [sp, #32]
	ldur x1, [sp, #40]
	ldur x0, [sp, #48]
	ldur lr, [sp, #56]
	add  sp, sp, #64
	br   lr

	// -------------- Letra E:
LetraE:
	sub  sp, sp, #64
	stur lr, [sp, #56]
	stur x0, [sp, #48]
	stur x1, [sp, #40]
	stur x2, [sp, #32]
	stur x3, [sp, #24]
	stur x4, [sp, #16]
	stur x5, [sp, #8]
	stur x6, [sp, #0]

	mov x5, x0
	mov x6, x1

	// vertical central de E
	mov  x2, 5
	mov  x3, 20
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// trazo superior
	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// trazo medio
	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 7
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// trazo inferior
	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]
	ldur x5, [sp, #8]
	ldur x4, [sp, #16]
	ldur x3, [sp, #24]
	ldur x2, [sp, #32]
	ldur x1, [sp, #40]
	ldur x0, [sp, #48]
	ldur lr, [sp, #56]
	add  sp, sp, #64
	br   lr

	// -------------- Letra V:
LetraV:
	sub  sp, sp, #64
	stur lr, [sp, #56]
	stur x0, [sp, #48]
	stur x1, [sp, #40]
	stur x2, [sp, #32]
	stur x3, [sp, #24]
	stur x4, [sp, #16]
	stur x5, [sp, #8]
	stur x6, [sp, #0]

	mov x5, x0
	mov x6, x1

	// punto izquierdo superior
	mov  x2, 5
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// segundo punto
	mov  x2, 5
	mov  x3, 10
	add  x0, x5, 5
	add  x1, x6, 5
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// vértice inferior
	mov  x2, 5
	mov  x3, 5
	add  x0, x5, 10
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// tercer punto
	mov  x2, 5
	mov  x3, 10
	add  x0, x5, 15
	add  x1, x6, 5
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// punto derecho superior
	mov  x2, 5
	mov  x3, 5
	add  x0, x5, 20
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]
	ldur x5, [sp, #8]
	ldur x4, [sp, #16]
	ldur x3, [sp, #24]
	ldur x2, [sp, #32]
	ldur x1, [sp, #40]
	ldur x0, [sp, #48]
	ldur lr, [sp, #56]
	add  sp, sp, #64
	br   lr

	// -------------- Letra Dos Puntos (:)
LetraDosPuntos:
	sub  sp, sp, #64
	stur lr, [sp, #56]
	stur x0, [sp, #48]
	stur x1, [sp, #40]
	stur x2, [sp, #32]
	stur x3, [sp, #24]
	stur x4, [sp, #16]
	stur x5, [sp, #8]
	stur x6, [sp, #0]

	mov x5, x0
	mov x6, x1

	// punto superior
	mov  x2, 5
	mov  x3, 5
	add  x0, x5, 10
	add  x1, x6, 5
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// punto inferior
	mov  x2, 5
	mov  x3, 5
	add  x0, x5, 10
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]
	ldur x5, [sp, #8]
	ldur x4, [sp, #16]
	ldur x3, [sp, #24]
	ldur x2, [sp, #32]
	ldur x1, [sp, #40]
	ldur x0, [sp, #48]
	ldur lr, [sp, #56]
	add  sp, sp, #64
	br   lr

	// -------------- Letra S:
LetraS:
	sub  sp, sp, #64
	stur lr, [sp, #56]
	stur x0, [sp, #48]
	stur x1, [sp, #40]
	stur x2, [sp, #32]
	stur x3, [sp, #24]
	stur x4, [sp, #16]
	stur x5, [sp, #8]
	stur x6, [sp, #0]

	mov x5, x0
	mov x6, x1

	// trazo superior
	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// vertical izquierda arriba
	mov  x2, 5
	mov  x3, 10
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// trazo medio
	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 7
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// vertical derecha abajo
	mov  x2, 5
	mov  x3, 10
	add  x0, x5, 15
	add  x1, x6, 10
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// trazo inferior
	mov  x2, 20
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]
	ldur x5, [sp, #8]
	ldur x4, [sp, #16]
	ldur x3, [sp, #24]
	ldur x2, [sp, #32]
	ldur x1, [sp, #40]
	ldur x0, [sp, #48]
	ldur lr, [sp, #56]
	add  sp, sp, #64
	br   lr

	// -------------- Letra R:
LetraR:
	sub  sp, sp, #64
	stur lr, [sp, #56]
	stur x0, [sp, #48]
	stur x1, [sp, #40]
	stur x2, [sp, #32]
	stur x3, [sp, #24]
	stur x4, [sp, #16]
	stur x5, [sp, #8]
	stur x6, [sp, #0]

	mov x5, x0
	mov x6, x1

	// trazo vertical de R
	mov  x2, 5
	mov  x3, 20
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// trazo superior de la "pancita"
	mov  x2, 15
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// trazo medio de la "pancita"
	mov  x2, 15
	mov  x3, 5
	add  x0, x5, 0
	add  x1, x6, 7
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// vertical derecha de la "pancita"
	mov  x2, 5
	mov  x3, 7
	add  x0, x5, 10
	add  x1, x6, 0
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// pata diagonal de R (dos cuadrados)
	mov  x2, 5
	mov  x3, 5
	add  x0, x5, 5
	add  x1, x6, 9
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 5
	add  x0, x5, 10
	add  x1, x6, 15
	movz x4, AMARILLO & 0xFFFF, lsl 0
	movk x4, (AMARILLO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	ldur x6, [sp, #0]
	ldur x5, [sp, #8]
	ldur x4, [sp, #16]
	ldur x3, [sp, #24]
	ldur x2, [sp, #32]
	ldur x1, [sp, #40]
	ldur x0, [sp, #48]
	ldur lr, [sp, #56]
	add  sp, sp, #64
	br   lr

	.endif

