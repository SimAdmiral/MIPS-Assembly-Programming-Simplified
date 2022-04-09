.data
	message: .asciiz "The number are equel"
	message2: .asciiz "Nothing happend"
	
.text
	main:
		addi $t0, $zero, 5
		addi $t1, $zero, 20
		
		beq $t0, $t1, numbersEqual 
		bne $t0, $t1, numbersEqual 
		#branch if equal if not equal
		
		#something like call
		b numberEqual
		
		
		
		#syscall to end program 
		li $v0, 10
		syscall
	
	numbersEqual:
		li $v0, 4
		la $a0, message
		syscall