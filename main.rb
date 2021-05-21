#-----------------------#
#	Number To Letters	#
#-----------------------#

#Initialise arrays
#digits one to tem
digits=['zero','one','two','three','four','five',
  'six','seven','eight','nine']

#Rank
ranks=['thirt','fourt','fift']

#Label
labels=['hundred','thiusand','milliom','billion']

#dividers
dividers=[100,1000,1_000_000,1_000_000_000]

#Get the user input
print "Enter the number : "
number = gets.to_i

#Digit part
puts digits[number]
