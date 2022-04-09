.data 
	promptMessage: .asciiz "Enter a number to find it's factorials "
	resultMessage: .asciiz "\nThe factoria lof the number is "
	theNumber: 	.word 0
	theAnsware: 	.word 0
	
.text
	.globl main #declare main as global function
	main:
		li $v0, 4
		la $a0, promptMessage
		syscall
		
		li $v0, 5 #read number
		syscall
		
		sw $v0, theNumber #the value will e stored there
		
		#call factorial function
		lw $a0, theNumber
		jal findFactorial
		sw $v0, theAnsware #the value will be returned there in $v0 and we want to stored it there
		
		#Display the results
		li $v0, 4
		la $a0, resultMessage
		syscall
		
		li $v0, 1
		lw $a0, theAnsware
		syscall
		
		#tell the system that's the end of the program
		li $v0, 10
		syscall
		
		
#find factorial function
.globl findFactorial
findFactorial:
	subu $sp, $sp, 8
	sw $ra, ($sp) #storing the value of the returning adress into the stack
	sw $s0, 4($sp)
	
	#base case
	#start the recursion
	li $v0, 1
	beq $a0, 0, factorialDone
	
	#find factorial of the number - 1
	move $s0, $a0
	sub $a0, $a0, 1
	jal findFactorial
	
	#the maggick happens here
	mul $v0, $s0, $v0
	
	factorialDone:
		lw $ra, ($sp) #estoring the value of the returning adres form the stack
		lw $s0, 4($sp)
		addu $sp, $sp, 8 #we substract 8 now we add 8
		jr $ra #return from the function
	
	
		
		
		
		