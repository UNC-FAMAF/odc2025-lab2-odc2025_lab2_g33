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

	mov x0, 10
	mov x1, 5
	bl  LetraO
	mov x0, 40
	mov x1, 5
	bl  Letrad
	mov x0, 60
	mov x1, 5
	bl  LetraC
	mov x0, 95
	mov x1, 5
	bl  Numero2
	mov x0, 120
	mov x1, 5
	bl  Numero0
	mov x0, 145
	mov x1, 5
	bl  Numero2
	mov x0, 170
	mov x1, 5
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

	.endif

