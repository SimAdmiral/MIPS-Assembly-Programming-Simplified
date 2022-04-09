.data

.text
	main:
	
		#it will store the values to register what will be acees by function later
		addi $a1, $zero, 50
		addi $a2, $zero, 100
						
		jal addNumbers
	
		li $v0, 1
		addi $a0, $v1, 0
		syscall
		
		
		
	li $v0, 10
	syscall
	
	
	
	addNumbers:
		add $v1, $a1, $a2 # it will get the values fmro the registers
		#v1 it just soter values it's by defaul e
		jr $ra