.data
	prompt: .asciiz "Enter your age "
	message: .asciiz "\nYour age is "

.text
	li $v0, 4 # we are gouing to print string or text
	la $a0, prompt
	syscall
	
	 li $v0, 5
	 #system call to print out we want to get intiger from user
	 #number will be stored in $v0
	 syscall 
	 
	 #Store the number in $t0
	 
	 move $t0, $v0
	 
	 #print message
	li $v0, 4 # we are gouing to print string or text
	la $a0, message
	syscall
	
	#print AGE
	li $v0, 1 # we are gouing to print string or text
	move $a0, $t0 # it willm move intiger to a0 register and print it out
	syscall

	
