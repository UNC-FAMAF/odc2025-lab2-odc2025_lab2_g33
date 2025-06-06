.ifndef formas_s
.equ    formas_s, 0

.equ SCREEN_WIDTH, 640
.equ SCREEN_HEIGHT, 480
.equ BITS_PER_PIXEL, 32

Pantalla:
	// Que hace MMAD?
	// Multiplica y suma a la vez
	madd x0, x1, x21, x0     // x0 = (x1 * x2) + x0
	add  x0, x20, x0, lsl #2 // x0 = posición base de la pantallla + [(posición y * 640) + posición x]
	br   lr

/*
    Dibuja un rectángulo en la pantalla.
    Parámetros:
        x0 = posición de la esquina superior izquierda en x
	x1 = posición de la esquina superior izquierda en y
	x2 = ancho del rectángulo (→)
        x3 = largo del rectángulo (↓)
        x4 = color del rectángulo
*/
Rectangulo:
	sub  sp, sp, #48   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #40] // guardo la dirección de retorno en el stack
	stur x0, [sp, #32] // guardo el valor de x0 en el stack
	stur x1, [sp, #24] // guardo el valor de x1 en el stack
	stur x2, [sp, #16] // guardo el valor de x2 en el stack
	stur x3, [sp, #8]  // guardo el valor de x3 en el stack
	stur x4, [sp, #0]  // guardo el valor de x4 en el stack

	mov x7, x0 // Copia la coordenada x de la esquina superior derecha del rectángulo
	mov x5, x3 // Indico el largo del rectángulo

loop_rectangulo1:
	mov x6, x2   // Indico el ancho del rectángulo
	mov x0, x7   // Devuelve el valor de x0
	BL  Pantalla // calcula donde comenzar a colorear la primera línea

loop_rectangulo2:
	stur w4, [x0]             // Colorea la pantalla
	add  x0, x0, #4           // Me muevo al siguiente pixel hacia la derecha
	sub  x6, x6, #1           // Decrementar contador del ancho
	cbnz x6, loop_rectangulo2 // Si no terminó la fila, salto
	add  x1, x1, #1           // Me posiciono en la siguiente fila
	sub  x5, x5, #1           // Decrementar contador del largo
	cbnz x5, loop_rectangulo1 // Si no es la última fila, salto

	ldur x4, [sp, #0]  // recupero el valor de x4
	ldur x3, [sp, #8]  // recupero el valor de x3
	ldur x2, [sp, #16] // recupero el valor de x2
	ldur x1, [sp, #24] // recupero el valor de x1
	ldur x0, [sp, #32] // recupero el valor de x0
	ldur lr, [sp, #40] // recupero la dirección de retorno
	add  sp, sp, #48   // devuelvo la memoria pedida
	br   lr

/*
    Elegir valores para los REGISTROS para dibujar un cuadrado.
        x0 = posición de la esquina superior izquierda en x (1 = 1pixel)
		x1 = posición de la esquina superior izquierda en y
        x2 = Largo de la cara del cuadrado 'tamano'
        x3 = Color

*/
Cuadrado:
	sub  sp, sp, #40   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #32] // guardo la dirección de retorno en el stack
	stur x0, [sp, #24] // guardo el valor de x0 en el stack
	stur x1, [sp, #16] // guardo el valor de x1 en el stack
	stur x2, [sp, #8]  // guardo el valor de x2 en el stack
	stur x3, [sp, #0]  // guardo el valor de x3 en el stack

	mov x6, x0 // Copia la coordenada x de la esquina superior derecha del cuadrado
	mov x4, x2 // Indico el largo del cuadrado

loop_cuadrado1:
	mov x5, x2   // Indico el ancho del cuadrado
	mov x0, x6   // Devuelve el valor de x0
	BL  Pantalla // calcula donde comenzar a colorear la primera línea

loop_cuadrado2:
	stur w3, [x0]           // Colorea la pantalla
	add  x0, x0, #4         // Me muevo al siguiente pixel hacia la derecha
	sub  x5, x5, #1         // Decrementar contador del ancho
	cbnz x5, loop_cuadrado2 // Si no terminó la fila, salto
	add  x1, x1, #1         // Me posiciono en la siguiente fila
	sub  x4, x4, #1         // Decrementar contador del largo
	cbnz x4, loop_cuadrado1 // Si no es la última fila, salto

	ldur x3, [sp, #0]  // recupero el valor de x3
	ldur x2, [sp, #8]  // recupero el valor de x2
	ldur x1, [sp, #16] // recupero el valor de x1
	ldur x0, [sp, #24] // recupero el valor de x0
	ldur lr, [sp, #32] // recupero la dirección de retorno
	add  sp, sp, #40   // devuelvo la memoria pedida
	br   lr

/*
    Dibuja un círculo en la pantalla.
    Parámetros:
        x0 = posicion del centro en x
        x1 = posicion del centro en y
        x2 = radio del circulo
        x3 = color del circulo
*/
Circulo:
	sub  sp, sp, #40   // pido memoria en el stack para la dirección de retorno y los parámetros
	stur lr, [sp, #32] // guardo la dirección de retorno en el stack
	stur x0, [sp, #24] // guardo el valor de x0 en el stack
	stur x1, [sp, #16] // guardo el valor de x1 en el stack
	stur x2, [sp, #8]  // guardo el valor de x2 en el stack
	stur x3, [sp, #0]  // guardo el valor de x3 en el stack

	mov x4, x0
	mov x5, x1

	sub x9, x4, x2
	sub x10, x5, x2

	mul x6, x2, x2
	add x7, x2, x2
	add x18, x2, x2

loop_circulo1:
	sub  x0, x9, x4
	sub  x1, x10, x5
	madd x0, x0, x0, xzr
	madd x0, x1, x1, x0
	cmp  x0, x6
	B.LE loop_circulo2
	sub  x7, x7, 1
	add  x9, x9, 1
	cbnz x7, loop_circulo1

circulo_mov_y:
	add  x10, x10, 1
	sub  x9, x4, x2
	sub  x18, x18, 1
	add  x7, x2, x2
	cbnz x18, loop_circulo1

circulo_ret:
	ldur x3, [sp, #0]  // recupero el valor de x3
	ldur x2, [sp, #8]  // recupero el valor de x2
	ldur x1, [sp, #16] // recupero el valor de x1
	ldur x0, [sp, #24] // recupero el valor de x0
	ldur lr, [sp, #32] // recupero la dirección de retorno
	add  sp, sp, #40   // devuelvo la memoria pedida
	br   lr

loop_circulo2:
	mov  x0, x9
	mov  x1, x10
	BL   Pantalla
	stur w3, [x0]
	add  x9, x9, 1
	sub  x7, x7, 1
	cbz  x7, circulo_mov_y
	b    loop_circulo1

	.endif
