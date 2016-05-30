// To keep this in the first portion of the binary.
.section ".text.boot"

// Make _start global.
.globl _start

_start:
	ldr sp, =0x8000
	bl main

