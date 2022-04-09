.data

.text #instructions
	addi $s0, $zero, 10
	addi $s1 $zero, 4
	
	mul $t0, $s0, $s1
	#max you can multiplay only 16-bit
	
	#display
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
	
	
	
	addi $t0, $zero, 2000
	addi $t1, $zero, 10
	
	mult $t0, $t1
	#low an hight registers
	
	mflo $s0
	#display
	li $v0, 1
	add $a0, $zero, $s0
	syscall
	
	
	
	
	
	
	#multiplicatoin  <- it can shift right and left
	addi $s0, $zero, 4
	sll $t0, $s0, 3 # 4**2
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	