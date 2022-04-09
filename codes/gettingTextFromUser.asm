.data
	message: .asciiz "Hello " 
	userInput: .space 20 
.text
	main:
		#Getting user input
		li $v0, 8
		la $a0, userInput
		li $a1, 20
		syscall
		
		#Dispolay hello
		li $v0, 4
		la $a0, message
		syscall
		
		#Display name
		li $v0, 4
		la $a0, userInput
		syscall
		
		
	li $v0, 10
	syscall