.data
	message: .asciiz "Hi how are you? "
.text
	main: 
		addi $s0, $zero, 14
		addi $s1, $zero, 10
		
		bgt $s0, $s1, displayHi
		#it's sudo instruction 
		#it will be transfare to 3-4 lines code 

		bgtz $s0, displayHi
		
		#BRANCH IF GRATER THAN ZERO
		
		
		
	#End of main
	li $v0, 10
	syscall
	
	displayHi: 
		li $v0, 4
		la, $a0, message
		syscall
		