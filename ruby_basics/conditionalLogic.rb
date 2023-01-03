
# conditionals statement will always have an expression that evaluates to true or false
# the only false values in ruby are the values nil and false, everything else is true

number = 8;

#if
    if statement == true
        #do something
    end 

    #can be write like this
    puts "8 is even!" if 8 % 2 == 0 # => 8 is even!

#if-else
    if number % 2 == 0
        puts "even!"
    else
        puts "not even"
    end

#elsif 
    if number % 2 == 0
        puts "even!"
    elsif number % 3 == 0
        puts "odd"
    else
        puts "invalid value"
    end

#comparasion operators
    #equals(==)
    5 == 5 # => true
    5 == 6 # => false
    #not equals(!=)
    5 != 5 # => false
    5 != 6 # => true
    #greater than(>)
    5 > 5 # => false
    5 > 6 # => false
    #less than(<)
    5 < 5 # => false
    5 < 6 # => true
    #greater than or equals to(>=)
    5 >= 5 # => true
    5 >= 6 # => false
    #less than or equals to(<=)
    5 <= 5 # => true
    5 <= 6 # => true
    #eql?
    5.eql?(5.0) # => false, equals values but differents types return false
    5.eql?(5) # => true
    #equal?
    a = 5
    b = 5
    a.equal?(b) # => true, Two variables pointing to the same number will usually return true.
    #spaceshit operator(<=>)
        #if the value on the left is less than the value on the right
        5 <=> 10 # => -1
        #if the value on the left is equal to the value on the right
        10 <=> 10 # => 0
        #if the value on the left is greater than the value on the right
        10 <=> 5 # => 1

#Logical operators
    #and (&&)
    if 5 == 5 && 10 == 10 #returns true if both conditions are true
        puts "yeah"
    end
    #or (||)
    if 5 == 4 || 5 == 5 # returns true if one condition is true
        puts "yeah"
    end
    #not (!)
    if !false #reverses the logic of the condition
        puts "yeah"
    end

#Case statements
    #Case statements process each condition in turn, and if the condition returns false,
    #it will move onto the next one until a match is found. An else clause can be provided to serve as a default if no match is found.
    grade = 'F'

    did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
      when 'A' then "Hell yeah!"
      when 'D' then "Don't tell your mother."
      else "'YOU SHALL NOT PASS!' -Gandalf"
    end

#Unless statement
    age = 19

    puts "Welcome to a life of debt." unless age < 18

    unless age < 18
    puts "Down with that sort of thing."
    else
    puts "Careful now!"
    end

#Ternary operator
    #age = 19
    response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
    puts response #=> "You're all grown up."