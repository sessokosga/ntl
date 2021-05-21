#-----------------------#
#	Number To Letters	#
#-----------------------#

#Converting function
def convert (number)
  #Initialise arrays
  #digits one to tem
  digits=['zero','one','two','three','four','five',
    'six','seven','eight','nine']

  #Rank
  ranks=['thir','four','fif']

  #Label
  labels=['hundred','thiusand','milliom','billion']

  #dividers
  dividers=[10,100,1000,1_000_000,1_000_000_000]

  #indicate if we must show digits or not
  showDigit=true

  #Main loop to handle conversions
  #i=dividers.length-1
  i=0
  until i==-1 or number/10 == 0
    #dizens
    j = number / dividers[i]
    number %= dividers[i]

    #Prevent showing zero next to a round number
    #eg: show twenty instead of twenty zero
    if number == 0
      showDigit=false
    end

    #handle number from 10 to 19
    if j == 1
      if number == 0
        puts "ten"
      elsif number == 1
        puts "eleven"
      elsif number == 2
        puts "twelve"
      else
        #handle 13 and 15
        if [3,5].include?(number)
          print "#{ranks[number-3]}"
          #handle 14,16 to 19
        else
          print "#{digits[number]}"
        end

        #Show the appropriate suffixe
        #Prevent dubbing 't'
        unless number == 8
          print "t"
        end
        puts "een"
      end

      #prevent showing digits
      #eg: show eleven instead of eleven one
      showDigit=false

    #handle 20 to 90
    else
      #handle 20
      if j == 2
        print "twen"

      #handle 30,40,50
      elsif [3,4,5].include?(j)
      print "#{ranks[j-3]}"

      #handle 60 to 90
      else
        print digits[j]
      end

      #show the right suffix
      #Prevent dubbing 't'
      unless j == 8
        print "t"
      end
      print "y "
    end
    i-=1
  end

  #Digit part
  if showDigit
    puts digits[number]
  end
end

#Get the user input
#print "Enter the number : "
#number = gets.to_i


i=0
until i==100
  puts convert(i)
  i+=1
end