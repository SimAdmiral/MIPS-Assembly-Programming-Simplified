.data
	mydata: .asciiz "aaaa"

.text
	li $v0, 4
	la $a0, mydata
	syscall 
