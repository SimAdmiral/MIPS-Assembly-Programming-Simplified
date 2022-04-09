#function are called procedures

.data
	message: .asciiz "hello hovna"
.text
	
	main: 
		jal displaMessage
		
		addi, $s0, $zero, 5
		
		#Print
		li $v0, 1
		add $a0, $zero, $s0
		syscall 
		
		
	li $v0, 10
	syscall
	
		
	displaMessage:
		li $v0, 4
		la $a0, message
		syscall
		jr $ra	 #go back to function or procedure fro mthwtere it had been caleed
			
		
	