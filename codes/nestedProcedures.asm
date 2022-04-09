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
		
		li $v0, 4
		la $a0,newLine
		syscall
		
		jal printValue
		
	li $v0, 10
	syscall
	
	increaseMyRegister:
		addi $sp, $sp, -8
		#every value is 4 bites we need to store 2 values
		#we will have the old addresin the stack and than we will restore the old aress
		
		
		#--------------
		# why -4 MULITPLAING HOW MANY EPLEMENTS BY NEG FOUR
		# we need to store it as 4 bittes
		# if we are adding we are taking place from the stack
		#--------------
				
		sw $s0, 0($sp) #STORING VALUE INTO STACK
		sw $ra, 4($sp) # it willl store adress
		# 4($sp) 4 is indicator next 4 bits
		
		addi $s0, $s0, 30 # NEW VALUE WHATEVER YOU CAN DO
		
		#nesterd procedure
		jal printValue
		#jal jump and link
		
		#LOADING FROM RANDOM ACCESS MEMEORY THE VALUE
		#old value will be available in stack 
		lw $s0, 0($sp) #restoring stack
		lw $ra, 4($sp)
		addi $sp, $sp, 4
		
		jr $ra
		
		
	printValue:
		#print value
		li $v0, 1
		move $a0, $s0
		syscall
		
		jr $ra
		
		
		