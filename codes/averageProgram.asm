.data
	array: .word 10, 2, 9
	length: .word 3
	sum: .word 0
	average: .word 0
	
.text
	main:
		la $t0, array   # bease address
		li $t1, 0	# i =0
		lw $t2, length # $t2 é length 
		li $t3, 0 	# sum = 0
		
		sumLoop: 
			lw $t4, ($t0) # $t4 = array[i]
			add $t3, $t3, $t4 	# sum = sum + array[i]
			
			add $t1, $t1, 1  # ocrementing of index
			add $t0, $t0, 4
			blt $t1, $t2, sumLoop #if i < len the loop again
		sw $t3, sum
		
		
		
		

		# diaplay sum
		
		li $v0, 1
		move $a0, $t3 
		syscall
		
				
		#calculate the average 
		div $t5, $t3, $t2
		# this will be stored in $t5
		sw $t5, average #this will store in avverage
		
		#average number the number
		li $v0, 1
		move $a0, $t5 
		syscall
		
		# terminate the program
		li $v0, 10
		syscall
		
		
		
		
		
		
		
		
		