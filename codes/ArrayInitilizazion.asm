.data
	myArray: .word 100:3 # 3 elements every is initilited to 100 [100,100,100]
	myArray1: .word 5:10
	newLine: .asciiz "\n"
	exitText: .ascii "Exit"
.text
	main: 
	
	#Clear $t0 to 0
	addi $s0, $zero, 0
	


	while:
		# becaise 4*10 or 3*4 = 12 This NEED TO BE CHANGED
		beq $t0, 40, exit
		
		lw $t6, myArray1($t0)
		
		
		addi $t0, $t0, 4 #$t0 += 4 4 will be added to index
		#print current number
		li $v0, 1
		move $a0, $t6
		syscall
		
		#Print new line
		li $v0, 4
		la $a0, newLine
		syscall
		
		j while
	exit:
		#Tell system this is end of program
		la $a0, exitText
		syscall
	
	
	