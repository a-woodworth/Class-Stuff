 # Let's make a digital version of the FizzBuzz game.  Write a program that prints the
# numbers from 1 to a given number. But for multiples of three print “Fizz”
# instead of the number and for the multiples of five print “Buzz”.
# For numbers which are multiples of both three and five print “FizzBuzz”."


def fizzbuzz(number)
  (1..number).each do |n|

# Multiples of both 3 and 5
    if (n % 3 == 0) && (n % 5 == 0)
    puts "FizzBuzz"

# Multiples of 3 print "Fizz"
    elsif n % 3 == 0
    puts "Fizz"

# Multiples of 5 print "Buzz"
    elsif n % 5 == 0
    puts "Buzz"

    else
    puts n
    end
  end
end

print fizzbuzz(20)
