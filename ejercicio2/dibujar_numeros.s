.ifndef dibujar_numeros_s

.include "formas.s"

.equ NEGRO, 0x00000000

Numeros:
	sub  sp, sp, #48   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #40] // guardo la dirección de retorno en el stack
	stur x0, [sp, #32] // guardo el valor de x0 en el stack
	stur x1, [sp, #24] // guardo el valor de x1 en el stack
	stur x2, [sp, #16] // guardo el valor de x2 en el stack
	stur x3, [sp, #8]  // guardo el valor de x3 en el stack
	stur x4, [sp, #0]  // guardo el valor de x4 en el stack

	// // -------------- "OdC 2025" --------------------------------
	// -------------- Letra O:
	mov  x2, 5
	mov  x3, 20
	mov  x0, 10
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	mov  x0, 30
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 10
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 25
	mov  x3, 5
	mov  x0, 10
	mov  x1, 20
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// -------------- Letra d:

	mov  x2, 5
	mov  x3, 15
	mov  x0, 40
	mov  x1, 10
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 40
	mov  x1, 10
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 10
	mov  x3, 5
	mov  x0, 40
	mov  x1, 20
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	mov  x0, 50
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// -------------- Letra C:

	mov  x2, 5
	mov  x3, 20
	mov  x0, 60
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 60
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 60
	mov  x1, 20
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// -------------- Número 2

	mov  x2, 20
	mov  x3, 5
	mov  x0, 95
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 95
	mov  x1, 14
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 95
	mov  x1, 14
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 4
	mov  x0, 95
	mov  x1, 13
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 110
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 95
	mov  x1, 20
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// -------------- Número 0

	mov  x2, 5
	mov  x3, 20
	mov  x0, 120
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 120
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 120
	mov  x1, 20
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 20
	mov  x0, 135
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// -------------- Número 2

	mov  x2, 20
	mov  x3, 5
	mov  x0, 145
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 145
	mov  x1, 14
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 145
	mov  x1, 14
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 4
	mov  x0, 145
	mov  x1, 13
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 160
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 145
	mov  x1, 20
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	// -------------- Número 5

	mov  x2, 20
	mov  x3, 5
	mov  x0, 170
	mov  x1, 5
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 10
	mov  x0, 185
	mov  x1, 14
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 5
	mov  x3, 5
	mov  x0, 170
	mov  x1, 10
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 4
	mov  x0, 170
	mov  x1, 13
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
	bl   Rectangulo

	mov  x2, 20
	mov  x3, 5
	mov  x0, 170
	mov  x1, 20
	movz x4, NEGRO & 0xFFFF, lsl 0
	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16
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

