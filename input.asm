main:
	li $s0, 0
	li $a0, 2
	li $a1, 3
	jal multiplyNumbers

multiplyNumbers:
	li $t0, 0
	li $v0, 0

multiplyNumbersLoop:
	beq $t0, $a1, multiplyNumbersReturn

	add $v0, $v0, $a0
	addi $t0, $t0, 1

	j multiplyNumbersLoop

multiplyNumbersReturn:
	jr $ra