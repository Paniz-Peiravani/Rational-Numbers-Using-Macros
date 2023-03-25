.include "Macros_Definitions.asm"

.text
.globl main

main:
	firstRationalNumber		# firstRational Number macro to get user input 
	secondRationalNumber		# secondRational Number macro to get user input
	is_rational			# Check if we have ratinal number
	
	#add_Rational
	add_rational			# Adding two rational number togehter
	printResult(" + ")		# Printing the result
	
	#sub_rational
	sub_rational			# subtracting two rational number togehter
	printResult(" - ")		# Printing the result
	
	#mul_rational
	mul_rational			# Multipling two rational number togehter
	printResult(" * ")		# Printing the result
	
	#div_rational
	div_rational			# Adding two rational number togehter
	printResult(" / ")		# Printing the result
	
	done
	
	#Error Message
End:
	errorM
	done
	
	
	
	
	
	
	
	
	
