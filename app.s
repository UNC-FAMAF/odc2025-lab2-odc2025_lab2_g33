	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.include "formas.s"

	.globl main

main:
	mov x20, x0 // Guarda la dirección base-inicio del framebuffer en x20
	mov x21, SCREEN_WIDTH // Guardo el largo de la pantalla x21
	mov x22, SCREEN_HEIGH // Guardo el ancho de la pantalla x22

	bl Fondo
	bl Tierra

InfLoop:
	b InfLoop
