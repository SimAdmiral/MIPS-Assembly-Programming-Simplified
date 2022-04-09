.data
	number1: .float 3.14
	number2: .float 3.71
	number3: .double 2.75

.text
	ldc1 $f2, number3
	#ldc1 load double
	lwc1 $f2, number1
	lwc1 $f4, number2
	#lwc1 load fload
	
	add.s $f12, $f2, $f4
	#add.s pretože je to flaot

	
	li $v0, 3
	syscall
		