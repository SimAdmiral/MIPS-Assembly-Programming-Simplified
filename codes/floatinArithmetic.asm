.data
	number: .double 3.00
	number1: .double 2.00
	
.text
	ldc1 $f2, number
	ldc1 $f4, number1
	
	mul.d $f12, $f2, $f4
	
	li $v0, 3
	syscall
	
	#sub.d
	#div.d
	#mul.d
	
	div.d $f12, $f2, $f4
	
	li $v0, 3
	syscall
	
	