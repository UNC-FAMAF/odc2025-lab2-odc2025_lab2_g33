.equ SCREEN_WIDTH, 640
.equ SCREEN_HEIGH, 480
.equ BITS_PER_PIXEL, 32

.globl main

main:
	mov x20, x0           // Guarda la dirección base-inicio del framebuffer en x20
	mov x21, SCREEN_WIDTH
	mov x22, SCREEN_HEIGH
	mov x23, 0            // Offset para el fondo 1
	mov x24, 0            // Offset para el fondo 2
	mov x25, 0            // Offset para el fondo 3

StartFrameLoop:

	// distintas velocidades para obtener el efecto de paralaje
	sub x23, x23, #1
	sub x24, x24, #3
	sub x25, x25, #30

	// frame1
	bl Fondo
	bl Numeros
	bl Sonic_Base

	bl Sonic_Frame_1

	bl DelayFrame

	// frame2
	bl Fondo
	bl Numeros
	bl Sonic_Base

	bl Sonic_Frame_2

	bl DelayFrame

	// frame3
	bl Fondo
	bl Numeros
	bl Sonic_Base

	bl Sonic_Frame_3

	bl DelayFrame

	// frame4
	bl Fondo
	bl Numeros
	bl Sonic_Base

	bl Sonic_Frame_4

	bl DelayFrame

	bl StartFrameLoop

InfLoop:
	b InfLoop

	.include "fondo.s"
	.include "delay.s"
	.include "sonic.s"
	.include "frame_1.s"
	.include "frame_2.s"
	.include "frame_3.s"
	.include "frame_4.s"
	.include "dibujar_numeros.s"
