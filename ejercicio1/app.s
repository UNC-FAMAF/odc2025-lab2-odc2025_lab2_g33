	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.globl main
	.include "formas.s"
	.include "dibujar_numeros.s"
	.include "sonic.s"
  //.include "frame_1.s"
	.include "frame_2.s"
	//.include "frame_3.s"
	//.include "frame_4.s"

main:
	mov x20, x0 // Guarda la dirección base-inicio del framebuffer en x20
	mov x21, SCREEN_WIDTH // Guardo el largo de la pantalla x21
	mov x22, SCREEN_HEIGH // Guardo el ancho de la pantalla x22

	bl Fondo
	bl Numeros
	bl Sonic_Base
	//bl Sonic_Frame_1
  bl Sonic_Frame_2
	//bl Sonic_Frame_3
	//bl Sonic_Frame_4
InfLoop:
	b InfLoop
