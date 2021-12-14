	.data
	.align 2
_a: space 4
	.data
	.align 2
_b: space 4
	.text
	.globl main
main:
__start:
	lw    $ra, 0($fp)
	move  $t0, $fp
	lw    $fp, -4($fp)
	move  $sp, $t0
	li    $v0, 10
	syscall
	.data
	.align 2
_c: space 4
