

#Predicate Enumerable methods
    #is a method that returns true or false. This method is indicated by a "?"
    #at the end

    #include?
        numbers = [5,6,7,8]

        numbers.include?(6)
        # => true

        numbers.include?(3)
        # => false

        
    #any?
        numbers = [21, 42, 303, 499, 550, 811]

        numbers.any? { |number| number < 500 }
        # => true
        
        numbers.any? { |number| number < 20 }
        # => false 

    #all?
        #is also fairly intuitive. It only returns true if all the elements in your array or hash match the condition you set within the block; otherwise, it will return false.

        fruits = ["apple", "banana", "strawberry", "pineapple"]

        fruits.all? { |fruit| fruit.length > 3 }
        #=> true

        fruits.all? { |fruit| fruit.length > 6 }
        #=> false


    #none?
        # performs the opposite function of #all?. It returns true only if the condition in the block matches none of the elements in your array or hash; otherwise, it returns false.
        fruits = ["apple", "banana", "strawberry", "pineapple"]

        fruits.none? { |fruit| fruit.length > 10 }
        #=> true

        fruits.none? { |fruit| fruit.length > 6 }
        #=> false