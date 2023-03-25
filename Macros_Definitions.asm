#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Macro ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#	

		#~~~~~~~~~~~~~~~~~~~~~~~~~~ Get and store first user input ~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro firstRationalNumber
	.data 
	prompt1:	.asciiz "rational(a,b): Enter a \n"
	prompt1.1:	.asciiz "rational(a,b): Enter b \n"
	
	.text
	# a 
	li $v0, 4			# Syntax for printing message
	la $a0, prompt1
	syscall
	
	# Get user input for a
	li $v0, 5			# Syntax for storing integer	
	syscall				
	move $t0, $v0		 	# Store the input for a into $t0
	
	# b 
	li $v0, 4			# Syntax for printing message
	la $a0, prompt1.1
	syscall
	
	# Get user input for b
	li $v0, 5			# Syntax for storing integer	
	syscall				
	move $t1, $v0 			# Store the input for b into $t1
	
	beq $t1, $zero, End		#if b = 0 print error message

.end_macro 
		#~~~~~~~~~~~~~~~~~~~~~~~~~~ Get and store first user input ~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro secondRationalNumber
	.data
	prompt2:	.asciiz "rational(c,d): Enter c \n"
	prompt2.2:	.asciiz "rational(c,d): Enter d \n"
	
	.text
	# c
	li $v0, 4			# Syntax for printing message
	la $a0, prompt2 	
	syscall				
	
	li $v0, 5			# Syntax for storing integer	
	syscall				
	move $t2, $v0			# Store the input for c into $t2
	
	# d
	li $v0, 4			# Syntax for printing message
	la $a0, prompt2.2 	
	syscall				
	
	li $v0, 5			# Syntax for storing integer	
	syscall				
	move $t3, $v0			# Store the input for d into $t3
	
	beq $t3, $zero, End		#if d = 0 print error message
.end_macro 

		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Add Rational Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro add_rational
	mul $t4, $t0, $t3		# Multiply numerator1 by denominator2
	mul $t5, $t1, $t2		# Multiply denominator1 by numerator2
	add $t6, $t4, $t5		# Add the two products | (num1 * denom2) + (denom1 * num2)

	move $t7, $t6  			# Store $t6 to $t7
	mul  $t8, $t1, $t3		# Multiply denominator1 by denominator2
.end_macro 

		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Sub Rational Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro sub_rational
	mul $t4, $t0, $t3		# Multiply numerator1 by denominator2
	mul $t5, $t1, $t2		# Multiply denominator1 by numerator2
	sub $t6, $t4, $t5		# Subtract the two products | (num1 * denom2) + (denom1 * num2)
	
	move $t7, $t6  	
	mul $t8, $t1, $t3   		# Multiply the denominators to get the common denominator
.end_macro 

		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Mul Rational Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro mul_rational
	mul $t7, $t0, $t2        	# Multiply numerator1 by numerator2
	mul $t8, $t1, $t3        	# Multiply denominator1 by denominator2
.end_macro 

		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Div Rational Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro div_rational
	mul $t7, $t0, $t3		# Multiply numerator1 by denominator2
	mul $t8, $t1, $t2		# Multiply denominator1 by numerator2
	
	beq $t5, $zero, End		# If result denom = 0 print error message
.end_macro 		

		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Is Rational Function ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro is_rational
	beq $t1, $zero, End		#if b = 0 print error message
	beq $t3, $zero, End		#if d = 0 print error message
.end_macro

	        #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Print result ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro printResult(%sign)

	.data 
	sign:		.asciiz %sign
	par1: 		.asciiz "rational ("	
	par1.1:		.asciiz " ( "	
	div1: 		.asciiz " / "
	par2: 		.asciiz " ) "
	equal: 		.asciiz " = "
	newLine:	.asciiz " \n"
	
	.text 	
	li $v0, 4			# Print(
	la $a0, par1						
	syscall
	
	li $v0, 1			# Print a
	move $a0, $t0						
	syscall
	
	li $v0, 4			# Print /
	la $a0, div1						
	syscall	
	
	li $v0, 1			# Print b
	move $a0, $t1						
	syscall
	
	li $v0, 4			# Print )
	la $a0, par2				
	syscall	
	
	li $v0, 4			# print sign +, -, *, /
	la $a0, sign				
	syscall
	
	li $v0, 4			# Print (
	la $a0, par1			
	syscall
	
	li $v0, 1			# Print c
	move $a0, $t2						
	syscall	
	
	li $v0, 4			# print /
	la $a0, div1					
	syscall	
	
	li $v0, 1			# Print d
	move $a0, $t3						
	syscall
	
	li $v0, 4			# Print )
	la $a0, par2						
	syscall	
	
	li $v0, 4			# Print =
	la $a0, equal		
	syscall
	
	li $v0, 4			# Print (
	la $a0, par1.1			
	syscall
	
	li $v0, 1			# print result num	
	move $a0, $t7					
	syscall	
	
	li $v0, 4			# print /
	la $a0, div1						
	syscall	
	
	li $v0, 1			# Print result denom	
	move $a0, $t8					
	syscall
	
	li $v0, 4			# Print )
	la $a0, par2						
	syscall	
	
	li $v0, 4			# \n
	la $a0, newLine						
	syscall
.end_macro 	      
		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Execute Program ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro done
	li $v0, 10           
    	syscall  
.end_macro 

		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Error Message ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
.macro errorM
	.data
	errorMessage:	.asciiz "Error: Denominator cannot be ZERO!!!\n"
	
	.text
End:
	la $a0, errorMessage	# Print error message if b or d = 0
	li $v0, 4		
	syscall	
.end_macro 






