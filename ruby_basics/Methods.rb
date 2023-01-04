#Methods
    #creating a method
    def my_name #def is a built-in keyword that tells Ruby that this is the start of a method definition.
                #my_name is the name of method
        "Joe Smith"
    end         #end terminate the block of the method
      
    puts my_name    #=> "Joe Smith"

    #parameters and arguments
    def welcome(name)#name is a parameters, parameters is the variable that your methods will recive
        "Welcome, #{name}!"
    end

    puts welcome("Nathan")# this ("Nathan") is a argument, are the actual variables that get passed to the method when it is called

    #default parameters can be passed too.
    #in this case: def welcome(name = "guy")...

    #Chaining Methods
    phrase = ["be", "to", "not", "or", "be", "to"]

    puts phrase.reverse.join(" ").capitalize
    #=> "To be or not to be"