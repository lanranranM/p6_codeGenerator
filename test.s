	.text
	.globl main
	.data
	.align 2
_a: spce 4
main:
__start:
	lw    $ra, 0($fp)
	move  $t0, $fp
	lw    $fp, -4($fp)
	move  $sp, $t0
	li    $v0, 10
	syscall
