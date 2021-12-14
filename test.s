	.text
	.globl main
main:		# enter func
__start:
	sw    $ra, 0($sp)
	subu  $sp, $sp, 4
	sw    $fp, 0($sp)
	subu  $sp, $sp, 4
	addu  $fp, $sp, 8
			#Push space for the locals
	subu  $sp, $sp, 8
_main_Exit:
	lw    $ra, 0($fp)
	move  $t0, $fp
	lw    $fp, -4($fp)
	move  $sp, $t0
	li    $v0, 10
	syscall
	.text
test:		# enter func
	sw    $ra, 0($sp)
	subu  $sp, $sp, 4
	sw    $fp, 0($sp)
	subu  $sp, $sp, 4
	addu  $fp, $sp, 8
			#Push space for the locals
	subu  $sp, $sp, 4
.L0:
	lw    $ra, 0($fp)
	move  $t0, $fp
	lw    $fp, -4($fp)
	move  $sp, $t0
	jr    $ra
