


#declaring variables
    age = 20 # => 20
    #is possible add a expression in a variable
    age = 20 + 5 # => 25
    #the variable age was overwrited
    #shorthand assignment
    age += 4 # => 29, sum the past value + 4
    age -= 4 # => 21
    age *= 4 # => 100
    age /= 4 # => 6

#naming variables
    # bad
    a = 19
    string = "John"

    # good
    age = 19
    name = "John"
    can_swim = false

#variables are references in the memory
    desired_location = "Barcelona" #the local "desired_location" in the memory get the value "Barcelona"
    johns_location = desired_location # the local "johns_location" point to "desired_location" and get the value "Barcelo" too.  
    
    desired_location  #=> "Barcelona"
    johns_location    #=> "Barcelona"
    #if the value of "desired_location" is changed, "johns_location" also change
    desired_location = "Paris"
    
    desired_location  #=> "Paris"
    johns_location    #=> "Paris"



