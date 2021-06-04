#-----------------------#
#	Number To Letters	#
#-----------------------#

#Show digits
def show_digits (num)
  #digits one to tem
  digits = %w[zero one two three four five six seven eight nine]
  digits[num]
end

#Handle number between 10 and 99
def almost_hundred (num)
  #Initialise an empty result
  result = ""

  #Rank
  ranks = %w[twen thir four fif]

  #Non standard numbers
  nonstand = %w[eleven twelve]

  i = num / 10
  num %= 10

  if i == 1
    if num == 0
      result += "ten"
    elsif [1, 2].include?(num)
      result += nonstand[num - 1].to_s
    else
      if [3, 4, 5].include?(num)
        result += ranks[num - 2].to_s
      else
        result += show_digits num
      end
      result += 'teen'
    end
  else
    if [2, 3, 4, 5].include?(i)
      result += ranks[i - 2].to_s
    else
      result += show_digits i
    end
    result += 'ty'
  end

  result += ' '
end

#Handle conversion from 1 to 999
def almost_thousand (num)
  #Initialise an empty result
  result = ""
  until num < 0
    #Handle hundreds
    if num > 99
      result += show_digits num / 100
      result += ' hundred '
      num %= 100
      #Handle dozens and numbers form 11 to 19
    elsif num >= 10
      result += almost_hundred num

      #Prevent showing eleven one to nineteen nine
      if num > 10 && num < 20
        num = 0
      end
      num %= 10

      #Handle digits
    elsif num < 10
      unless num == 0
        result += show_digits num
      end
      num -= 10
    end
  end
  return result
end

#Main conversion function
def convert (num)
  #Initialise an empty result
  result = ""

  #Label
  labels = %w[thousand million billion trillion quadrillion]

  #dividers
  dividers = [1000, 1_000_000, 1_000_000_000, 1_000_000_000_000, 1_000_000_000_000_000]

  #This loop identify the right label
  i = dividers.length - 1
  while i >= 0
    j = num / dividers[i]

    #Prevent showing 0 million
    unless j ==0
      result += almost_thousand j
      result += ' ' + labels[i] + ' '
      end
    num %= dividers[i]
    i -= 1
  end

  result+= ' ' +almost_thousand( num)

  return result

end

puts convert 1_124_101_000_456