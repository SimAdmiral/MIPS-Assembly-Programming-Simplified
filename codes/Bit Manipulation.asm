.data
	newLine: .asciiz "\n"
.text 
	main: 
		li $a1, 11
		jal showNumber #show 11 to the screen
		
		li $a1, 11
		jal clearBitZero #clearvth efirst bitn in 11 it will give you 10
		
		move $a1, $v0
		jal showNumber #display 10
		
		li $v0, 10
		syscall #end program

#except number	
showNumber:
	li $v0, 4
	la $a0, newLine #show new line
	syscall
	
	li $v0, 1
	move $a0, $a1 	#display athe number you past and go back
	syscall
	
	jr $ra
	
clearBitZero:
	# MASK $s0
	
	addi $sp, $sp, -4
	sw $s0, 0($sp)  #store the value in the stack
	
	#make the mask
	li $s0, -1  #make mask shift it and clear first bit
	sll $s0, $s0, 1
	and $v0, $a1, $s0
	
	lw $s0, 0($sp)  #restore the value and go back
	addi $sp, $sp, 4
	
	jr $ra
	
	
	
	
	
	
	
	
	
	
	
	
	
