	.data
	.align 2
_a: space 4
	.data
	.align 2
_b: space 4
	.text
	.globl main
main:		# enter func
__start:
	sw    $ra, 0($fp)
	subu  $t0, $fp, 4
	sw    $fp, 0($fp)
	subu  $sp, $t0, 4
	addu  $fp, $sp, 8
			#Push space for the locals
	subu  $sp, $sp, 0
_main_Exit::
	lw    $ra, 0($fp)
	move  $t0, $fp
	lw    $fp, -4($fp)
	move  $sp, $t0
	li    $v0, 10
	syscall
	.data
	.align 2
_c: space 4
