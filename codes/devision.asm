.data

.text
	addi $t0, $zero, 30
	addi $t1, $zero, 5
	
	div $s0, $t0, $t1 # s0 = t0 / t1
	
	li $v0, l
	add $a0, $zero, $s0
	syscall

	
	#this devision will need two regisors
	#remainder is go to higth
	#cousion to lov regisrer
	addi $t0, $zero, 30
	addi $t1, $zero, 6
	
	div $t0, $t1 
	
	mflo $s0 #Quotien
	mfhi $s1 #Remainder
	
	
		
	
	li $v0, l
	add $a0, $zero, $s0
	syscall
		