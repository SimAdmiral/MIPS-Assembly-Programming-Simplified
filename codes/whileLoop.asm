.data
	message: .asciiz "After while loops is done"
	space: .asciiz "\n"
.text
	main:
		addi $t0, $zero, 0
		
		while: 
			bgt $t0, 10, exit
			jal printNumber
			addi $t0, $t0, 1 # i++ or i=i+1
			
			j while
		exit:
			li $v0, 4
			la $a0, message
			syscall
		
			
		#End of process
		li $v0, 10
		syscall
		
	printNumber:
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		
		li $v0, 4
		la $a0, space
		syscall
		
		jr $ra
		