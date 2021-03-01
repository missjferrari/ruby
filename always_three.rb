#input number
#gets user input number, conver to integer
#number1 = number
#number1 = number1 + 5
#number1 * 2
#number1 - 4
#number1 / 2
#final_number = number - number1
#print result (final number)

def always_three(number)
    number = (((number + 5) * 2 - 4) / 2 - number)
end

puts "Please enter a number"
number = gets.to_i

puts "Always " + always_three(number).to_s