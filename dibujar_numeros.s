.ifndef dibujar_numeros_s

.include "formas.s"

.equ NEGRO,  0x00000000

Numeros:
// // -------------- "OdC 2025" --------------------------------
// -------------- Letra O:
 	mov x2, 5 
 	mov x3, 20 
 	mov x0, 10
 	mov x1, 5 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 20 
	mov x0, 30
	mov x1, 5 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 25
	mov x3, 5
	mov x0, 10
	mov x1, 5 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 25
	mov x3, 5
	mov x0, 10
	mov x1, 20 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	// -------------- Letra d:

	mov x2, 5 
	mov x3, 15 
	mov x0, 40
	mov x1, 10
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 10 
	mov x3, 5 
	mov x0, 40
	mov x1, 10
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 10 
	mov x3, 5 
	mov x0, 40
	mov x1, 20
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 20 
	mov x0, 50
	mov x1, 5 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	// -------------- Letra C:

	mov x2, 5 
	mov x3, 20 
	mov x0, 60
	mov x1, 5 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20 
	mov x3, 5 
	mov x0, 60
	mov x1, 5
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20 
	mov x3, 5 
	mov x0, 60
	mov x1, 20
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	// -------------- Número 2

	mov x2, 20 
	mov x3, 5 
	mov x0, 95
	mov x1, 5
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 10 
	mov x0, 95
	mov x1, 14
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 10 
	mov x0, 95
	mov x1, 14
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20 
	mov x3, 4
	mov x0, 95
	mov x1, 13
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 10 
	mov x0, 110
	mov x1, 5
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20 
	mov x3, 5
	mov x0, 95
	mov x1, 20
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	// -------------- Número 0

	mov x2, 5 
	mov x3, 20 
	mov x0, 120
	mov x1, 5 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20
	mov x3, 5 
	mov x0, 120
	mov x1, 5 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20
	mov x3, 5 
	mov x0, 120
	mov x1, 20 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 20 
	mov x0, 135
	mov x1, 5 
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

// -------------- Número 2

	mov x2, 20 
	mov x3, 5 
	mov x0, 145
	mov x1, 5
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 10 
	mov x0, 145
	mov x1, 14
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 10 
	mov x0, 145
	mov x1, 14
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20 
	mov x3, 4
	mov x0, 145
	mov x1, 13
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 10 
	mov x0, 160
	mov x1, 5
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20 
	mov x3, 5
	mov x0, 145
	mov x1, 20
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	// -------------- Número 5

	mov x2, 20 
	mov x3, 5 
	mov x0, 170
	mov x1, 5
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 10 
	mov x0, 185
	mov x1, 14
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 5 
	mov x3, 5
	mov x0, 170
	mov x1, 10
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20 
	mov x3, 4
	mov x0, 170
	mov x1, 13
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

	mov x2, 20 
	mov x3, 5 
	mov x0, 170
	mov x1, 20
 	movz x4, NEGRO & 0xFFFF, lsl 0
 	movk x4, (NEGRO >> 16) & 0xFFFF, lsl 16 
  bl Rectangulo

.endif 

