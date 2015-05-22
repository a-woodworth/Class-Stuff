# Integer vs Float div by zero gotchas
#
#
1 / 0 = ZeroDivisionError
1.0 / 0 = Infinity
1 / 0.0 = Infinity
0 / 0.0 = NaN

# String concatenation vs interpolation
x = 5
"Num = #{x}"  # Whats the output and why?

    # Output is "Num = and whatever x is via interpolation"


"Num = " + x  # whats the output and why?

    #Output is An error. Can't convert number to a string.

# Arrays
[1,2,3,4 ... 1,000] # return all the evens

    #[1, 2, 3, 4].select { |number| number.even? }



# Modules vs Classes: Questions
#
# What are some differences between a module and a class?

    # Modules are methods you want to apply across multiple classes.  A class relates to objects within its own class.

    #Class==you can create object from a class.  Module is a group of methods.


# What are the two canonical uses for modules?

    #1) To include methods. 2) When you have a bunch of classes where a name might conflict so instead of creating a new class, add a module around it.


# What are your 2 favorite methods in Enumerable?

    # .sort, .each_with_index (Daniel's = map, select)

# Whats the difference between extend and include?

    # Changes from being an instance level method to being a class level method.

# Bonus: What is the name of the include hook method?

    #included

# What are the differences between a string and a symbol?

    # A string is just a grouping of characters, links, whatever inside quotes that keeps clogging up memory.  A symbol is something you set to apply across an object so it will get re-used.

# Bonus: Why might a symbol be used as a hash key?
  #To further sort the hash. Symbol of music with a hash key of "rock", "blues", etc.

# Bonus * 2: How long does a symbol stay in memory?
  #It's only an instance variable so it only stays until you restart the script.

# Use the following code ./person.rb
class Person

  def initialize(message = "Gutan Tag")
    @message = message
  end

  def salutation
    "Hello"
  end

  def good_bye
    "Laters!"
  end
end

# Write an initializer to satisfy these tests (see above)


# Person.new.salutation == "Hello"
puts Person.new("Bonjour").salutation == "Bonjour"
puts Person.new("Hola").salutation == "Hola"

# Make this test pass
puts Person.new.salutation == "Gutan Tag"

# Without opening the class make this test pass
puts Person.new.good_bye == "Laters!"

# Bonus Questions which stopped being asked
# Given: [1,2,3].inject(:+) == 6, how does this work?
    #Injects a plus which adds to the prior number in the array to equal 6.
