.ifndef delay_s

/*
Parámetros
x0 cantidad de ejecuciones
*/
Delay:
	// guardar parámetros
	sub  sp, sp, #16
	stur lr, [sp, #8]
	stur x0, [sp, #0]

DelayLoop:
	sub  x0, x0, #1    // decrementar 1 al contador.
	cbnz x0, DelayLoop // Si no terminó el contador salto.

	// devolver parámetros
	ldur x0, [sp, #0]
	ldur lr, [sp, #8]
	add  sp, sp, #16
	br   lr

DelayFrame:
	// guardar parámetros
	sub  sp, sp, #16
	stur lr, [sp, #8]
	stur x0, [sp, #0]

	mov x0, 0xFFFFFF
	bl  Delay

	// devolver parámetros
	ldur x0, [sp, #0]
	ldur lr, [sp, #8]
	add  sp, sp, #16
	br   lr

	.endif
