.data
	message1: .asciiz "It was true \n"
	message2: .asciiz "It was false \n"
	number1: .float 10.4
	number2: .float 10.4
	
.text
	main:
		lwc1 $f0, number1
		lwc1 $f2, number2 #value will be stored there
		
		#C = compare 
		#c if the numbers are equels
		c.eq.s $f0, $f2 #it will compare if the number are equel
	
		bc1t exit #if there are treu
		
		#if it was calse it will print out secend message
		#it will print only this meesage if it's false
		li $v0, 4
		la $a0, message2
		syscall
	
	#system call to end program
	li $v0, 10 #requesting the opertation systen to terminate the program
	syscall
	
	#label
	exit:
		li $v0, 4
		la $a0, message1
		syscall