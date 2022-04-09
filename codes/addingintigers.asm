.data
	number1: .word 5
	number2: .word 5
.text
	lw $t0, number1($zero)
	lw $t1, number2($zero)
	
	add $t2, $t0, $t1 # t2 = t0 + t1
	
	li $v0, 1
	add $a0, $zero, $t2
	
	
	
	#substrasting
	
	lw $s0, number1
	lw $s1, number2
	
	sub $t0, $s0, $s1
	
	li $v0, 1
	move $a0, $t0
	syscall
	