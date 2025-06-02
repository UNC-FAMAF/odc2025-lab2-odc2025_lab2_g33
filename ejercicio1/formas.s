.ifndef formas_s
	.equ formas_s, 0

	.equ SCREEN_WIDTH, 640
	.equ SCREEN_HEIGHT, 480
	.equ BITS_PER_PIXEL, 32

Pantalla:
		//Que hace MMAD?
		//Multiplica y suma a la vez 
	madd x0, x1, x21, x0 //x0 = (x1 * x2) + x0
	add x0, x20, x0, lsl #2 //x0 = posición base de la pantallla + [(posición y * 640) + posición x]
	br lr

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
		sub sp, sp, #48 //pido memoria en el stack para la dirección de retorno y los parámetros
		stur lr, [sp, #40] //guardo la dirección de retorno en el stack
		stur x0, [sp, #32] //guardo el valor de x0 en el stack
		stur x1, [sp, #24] //guardo el valor de x1 en el stack
		stur x2, [sp, #16] //guardo el valor de x2 en el stack
		stur x3, [sp, #8] //guardo el valor de x3 en el stack
		stur x4, [sp, #0] //guardo el valor de x4 en el stack

		mov x7, x0 // Copia la coordenada x de la esquina superior derecha del rectángulo
		mov x5, x3 // Indico el largo del rectángulo
	loop_rectangulo1:
		mov x6, x2// Indico el ancho del rectángulo
		mov x0, x7 // Devuelve el valor de x0
		BL Pantalla //calcula donde comenzar a colorear la primera línea
	loop_rectangulo2:
		stur w4, [x0] // Colorea la pantalla
		add x0, x0, #4 // Me muevo al siguiente pixel hacia la derecha
		sub x6, x6, #1 // Decrementar contador del ancho
		cbnz x6, loop_rectangulo2 // Si no terminó la fila, salto
		add x1, x1, #1 // Me posiciono en la siguiente fila
		sub x5, x5, #1 // Decrementar contador del largo
		cbnz x5, loop_rectangulo1 // Si no es la última fila, salto

		ldur x4, [sp, #0] //recupero el valor de x4
		ldur x3, [sp, #8] //recupero el valor de x3
		ldur x2, [sp, #16] //recupero el valor de x2
		ldur x1, [sp, #24] //recupero el valor de x1
		ldur x0, [sp, #32] //recupero el valor de x0
		ldur lr, [sp, #40] //recupero la dirección de retorno
		add sp, sp, #48 //devuelvo la memoria pedida
		br lr

/*
    Elegir valores para los REGISTROS para dibujar un cuadrado.
        x0 = posición de la esquina superior izquierda en x (1 = 1pixel)
		x1 = posición de la esquina superior izquierda en y
        x2 = Largo de la cara del cuadrado 'tamano'
        x3 = Color

*/
Cuadrado:
		sub sp, sp, #40 //pido memoria en el stack para la dirección de retorno y los parámetros
		stur lr, [sp, #32] //guardo la dirección de retorno en el stack
		stur x0, [sp, #24] //guardo el valor de x0 en el stack
		stur x1, [sp, #16] //guardo el valor de x1 en el stack
		stur x2, [sp, #8] //guardo el valor de x2 en el stack
		stur x3, [sp, #0] //guardo el valor de x3 en el stack

		mov x6, x0 // Copia la coordenada x de la esquina superior derecha del cuadrado
		mov x4, x2 // Indico el largo del cuadrado
	loop_cuadrado1:
		mov x5, x2// Indico el ancho del cuadrado
		mov x0, x6 // Devuelve el valor de x0
		BL Pantalla //calcula donde comenzar a colorear la primera línea
	loop_cuadrado2:
		stur w3, [x0] // Colorea la pantalla
		add x0, x0, #4 // Me muevo al siguiente pixel hacia la derecha
		sub x5, x5, #1 // Decrementar contador del ancho
		cbnz x5, loop_cuadrado2 // Si no terminó la fila, salto
		add x1, x1, #1 // Me posiciono en la siguiente fila
		sub x4, x4, #1 // Decrementar contador del largo
		cbnz x4, loop_cuadrado1 // Si no es la última fila, salto

		ldur x3, [sp, #0] //recupero el valor de x3
		ldur x2, [sp, #8] //recupero el valor de x2
		ldur x1, [sp, #16] //recupero el valor de x1
		ldur x0, [sp, #24] //recupero el valor de x0
		ldur lr, [sp, #32] //recupero la dirección de retorno
		add sp, sp, #40 //devuelvo la memoria pedida
		br lr

/* 
    Dibuja un círculo en la pantalla.
    Parámetros:
        x0 = posicion del centro en x
        x1 = posicion del centro en y
        x2 = radio del circulo
        x3 = color del circulo
*/
Circulo:
        sub sp, sp, #40 //pido memoria en el stack para la dirección de retorno y los parámetros
		stur lr, [sp, #32] //guardo la dirección de retorno en el stack
		stur x0, [sp, #24] //guardo el valor de x0 en el stack
		stur x1, [sp, #16] //guardo el valor de x1 en el stack
		stur x2, [sp, #8] //guardo el valor de x2 en el stack
		stur x3, [sp, #0] //guardo el valor de x3 en el stack

        mov x4, x0
        mov x5, x1

        sub x9, x4,x2 
        sub x10, x5,x2

        mul x6,x2,x2
        add x7,x2,x2
        add x18,x2,x2
	loop_circulo1:
        sub x0,x9,x4
        sub x1,x10,x5
        madd x0,x0,x0,xzr
        madd x0,x1,x1,x0
        cmp x0,x6
        B.LE loop_circulo2
        sub x7,x7,1
        add x9,x9,1
        cbnz x7,loop_circulo1
    circulo_mov_y:
        add x10,x10,1
        sub x9,x4,x2
        sub x18,x18,1
        add x7,x2,x2
        cbnz x18, loop_circulo1
    circulo_ret:
        ldur x3, [sp, #0] //recupero el valor de x3
		ldur x2, [sp, #8] //recupero el valor de x2
		ldur x1, [sp, #16] //recupero el valor de x1
		ldur x0, [sp, #24] //recupero el valor de x0
		ldur lr, [sp, #32] //recupero la dirección de retorno
		add sp, sp, #40 //devuelvo la memoria pedida
		br lr
    
    loop_circulo2:
        mov x0,x9
        mov x1,x10
        BL Pantalla
        stur w3,[x0]
        add x9,x9,1
        sub x7,x7,1
        cbz x7, circulo_mov_y
        b loop_circulo1


//Figuras
Fondo:
	mov x0, 0
	mov x1, 0
	mov x2, SCREEN_WIDTH
	mov x3, 0xCCCC
	bl Cuadrado

//Pajaors
	mov x0, 430
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 427
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 420
	mov x1, 100
	mov x2, 10
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 410
	mov x1, 110
	mov x2, 10
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 400
	mov x1, 100
	mov x2, 10
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 395
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 390
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 380
	mov x1, 120
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 370
	mov x1, 120
	mov x2, 10
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 360
	mov x1, 130
	mov x2, 10
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 350
	mov x1, 120
	mov x2, 10
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 345
	mov x1, 120
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 340
	mov x1, 120
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado




	mov x0, 340
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 330
	mov x1, 100
	mov x2, 10
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 320
	mov x1, 110
	mov x2, 10
	mov x3, 0x000000
	bl Cuadrado


	mov x0, 310
	mov x1, 100
	mov x2, 10
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 305
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado

	mov x0, 300
	mov x1, 100
	mov x2, 5
	mov x3, 0x000000
	bl Cuadrado


//montana
	mov x0, 110
	mov x1, 120
	mov x2, 40
	mov x3, 100
	mov x4, 0xFFFFFF
	bl Rectangulo

	mov x0, 80
	mov x1, 150
	mov x2, 100
	mov x3, 100
	movz x4, 0x001C83AF & 0xFFFF, lsl 0
	movk x4, (0x001C83AF >> 16) & 0xFFFF, lsl 16
	bl Rectangulo

	mov x0, 30
	mov x1, 200
	mov x2, 200
	mov x3, 100
	movz x4, 0x001C83AF & 0xFFFF, lsl 0
	movk x4, (0x001C83AF >> 16) & 0xFFFF, lsl 16
	bl Rectangulo

	mov x0, 0
	mov x1, 300
	mov x2, 300
	mov x3, 100
	movz x4, 0x001C83AF & 0xFFFF, lsl 0
	movk x4, (0x001C83AF >> 16) & 0xFFFF, lsl 16
	bl Rectangulo

//Figura: piso
	mov x0, 0
	mov x1, 400
	mov x2, 640
	mov x3, 80
	movz x4, 0x0007DE00 & 0xFFFF, lsl 0
	movk x4, (0x0007DE00 >> 16) & 0xFFFF, lsl 16
	bl Rectangulo

	mov x0, 0
	mov x1, 430
	mov x2, 640
	mov x3, 40
	movz x4, 0x00AF8D1C & 0xFFFF, lsl 0
	movk x4, (0x00AF8D1C >> 16) & 0xFFFF, lsl 16
	bl Rectangulo

	mov x0, 0
	mov x1, 450
	mov x2, 640
	mov x3, 40
	movz x4, 0x00AF6F1C & 0xFFFF, lsl 0
	movk x4, (0x00AF6F1C >> 16) & 0xFFFF, lsl 16
	bl Rectangulo


//Figura: Sol
//rayo medio abajo
	mov x0, 565
	mov x1, 155
	mov x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 560
	mov x1, 155
	mov x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 540
	mov x1, 140
	mov x2, 20
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 540
	mov x1, 145
	mov x2, 20
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

//rayo medio arriba
	mov x0, 550
	mov x1, 10
	mov x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 560
	mov x1, 10
	mov x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 540
	mov x1, 20
	mov x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 540
	mov x1, 10
	mov x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

//rayo abajo derecha
	mov x0, 615
	mov x1, 105
	mov x2, 5
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 605
	mov x1, 105
	mov x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 600
	mov x1, 115
	mov x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 580
	mov x1, 115
	mov x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 590
	mov x1, 115
	mov x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

//rayo abajo izquierda
	mov x0, 485
	mov x1, 125
	mov x2, 10
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 485
	mov x1, 110
	mov x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

	mov x0, 495
	mov x1, 110
	mov x2, 15
	movz x3, 0x00FF7700 & 0xFFFF, lsl 0
 	movk x3, (0x00FF7700 >> 16) & 0xFFFF, lsl 16 
	bl Cuadrado

//rayo arriba derecha
	mov x0, 485
	mov x1, 27
	mov x2, 5
	mov x3, 15
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl Rectangulo

	mov x0, 485
	mov x1, 38
	mov x2, 22
	mov x3, 7
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl Rectangulo 

	mov x0, 498
	mov x1, 40
	mov x2, 10
	mov x3, 30
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl Rectangulo

//rayo arriba izquierda
	mov x0, 605
	mov x1, 30
	mov x2, 5
	mov x3, 10
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl Rectangulo 

	mov x0, 600
	mov x1, 40
	mov x2, 10
	mov x3, 7
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl Rectangulo 

	mov x0, 590
	mov x1, 40
	mov x2, 10
	mov x3, 20
	movz x4, 0x00FF7700 & 0xFFFF, lsl 0
	movk x4, (0x00FF7700 >> 16) & 0xFFFF, lsl 16
	bl Rectangulo 
	
	mov x0, 550
	mov x1, 85
	mov x2, 55
	movz x3, 0x00FF9A00 & 0xFFFF, lsl 0
 	movk x3, (0x00FF9A00 >> 16) & 0xFFFF, lsl 16 
	bl Circulo

	mov x0, 550
	mov x1, 85
	mov x2, 50
	mov x3, 0x00FFFF00
	bl Circulo
	
.endif
