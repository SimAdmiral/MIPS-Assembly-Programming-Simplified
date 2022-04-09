#s REGISTER DONT HAVE PERMISION TOR MODIFING VALUE
#FUNCTION DON'T HAVE PERMISSION FOR MODIFING VALUES
#they are color saved

#t REGISTER HAVE PERMISION FOR MODIFIING VALUES
#FUNCTIO CAN MODIFINE VALVUE 
#they are coli save
#can do whaever nut modifieing values 

.data
	newLine: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 10 # s0 = 10
		
		jal increaseMyRegister
		
		#print new line
		li $v0, 4
		la $a0, newLine
		syscall
		
		#print value
		li $v0, 1
		move $a0, $s0
		syscall
		
	li $v0, 10
	syscall
	
	increaseMyRegister:
		addi $sp, $sp, -4 # why -4 MULITPLAING HOW MANY EPLEMENTS BY NEG FOUR
		# we need to store it as 4 bittes
		# if we are adding we are taking place from the stack
		
		sw $s0, 0($sp) #STORING VALUE INTO STACK
		
		addi $s0, $s0, 30 # NEW VALUE WHATEVER YOU CAN DO
		
		#print value
		li $v0, 1
		move $a0, $s0
		syscall
		
		#LOADING FROM RANDOM ACCESS MEMEORY THE VALUE
		#old value will be available in stack 
		lw $s0, 0($sp) #restoring stack
		addi $sp, $sp, 4
		
		jr $ra
		
		