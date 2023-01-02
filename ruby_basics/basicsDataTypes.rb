
#ruby has four basic data types

#number(integers and floats), strings, symbols and booleans(true, false and nill).
#integer
    17 / 5 # => 3
    #float
    17.0 / 5 # => 3.4 

    #converting number types
    #integer to float
    17.to_f # => 17.0

    #float to integer
    17.0.to_i # => 17
    17.9.to_i # => 17, ruby doesn't do any rounding in this conversion.

    #useful methods
    #even?
    6.even? # => true
    7.even? # => false

#odd?
    6.odd? # => false
    7.odd? # => true

#Strings
    "This is a string"
    'This is a string too'
    #concatenation
    "Hello, " + "World!" # => "Hello, World!"
    "Hello, " << "World!" # => "Hello, World!"
    "Hello, ".concat("World!") # => "Hello, World!"
    #substring
    "hello"[0] # => "h"
    "hello"[0..1] # => "he"
    "hello"[0, 4] # => "hell"
    "hello"[-1] # => "o"
    #Escape characters
    \\  #=> Need a backslash in your string?
    \b  #=> Backspace
    \r  #=> Carriage return, for those of you that love typewriters
    \n  #=> Newline. You'll likely use this one the most.
    \s  #=> Space
    \t  #=> Tab
    \""  # => Double quotation mark
    \'' # => Single quotation mark
    #interpalation
    name = "Nathan"
    puts "Hello, #{name}" # => "Hello, Nathan"
    #converting other objs in string
    5.to_s # => "5"
    nil.to_s # => ""
    :symbol.to_s  # => "symbol"

#Symbol
    #Symbols are stored in memory only once, making them faster in certain situations.
    #commonly used in hashes
    :my_symbol

#Boolean
    #nil == nothing
    
