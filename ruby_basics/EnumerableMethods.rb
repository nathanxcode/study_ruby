#Enumerable methods
    #select
        friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

        friends.select{|friend| friend != 'Brian' }
        #=> ["Sharon", "Leo", "Leila", "Arun"]

    #reject
        friends.reject { |friend| friend == 'Brian' }
        #=> ["Sharon", "Leo", "Leila", "Arun"]

    #each
        # Calling each on an array will iterate through that array and will yield each element to a code block, where a task can be performed:
        
        friends.each { |friend| puts "Hello, " + friend }
        
        #=> Hello, Sharon
        #=> Hello, Leo
        #=> Hello, Leila
        #=> Hello, Brian
        #=> Hello, Arun

        #For multi-line blocks, the commonly accepted best practice is to change up the syntax to use do...end instead of {...}:

        my_array = [1, 2]

        my_array.each do |number|
            number *= 2
            puts "The new number is: #{number}"
        end

            
        #=> The new number is 2.
        #=> The new number is 4.

        #=> [1, 2] the original array don't change

    #each_with_index
        #now array as his value and index
        fruits = ["apple", "banana", "strawberry", "pineapple"]

        fruits.each_with_index { |fruit, index| puts fruit if index.even? }

        #=> apple
        #=> strawberry
        #=> ["apple", "banana", "strawberry", "pineapple"]

    #map
        #transforms each element from an array according to whatever block you pass to it and returns the transformed elements in a new array.
        
        friends.map { |friend| friend.upcase }
        #=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

        my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

        my_order.map { |item| item.gsub('medium', 'extra large') }
        #=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]
    
    #select(filter)
        #passes every item in an array to a block and returns a new array with only the items for which the condition you set in the block evaluated to true.
        #using "friends" from line 3
        invited_list = []

        friends.select{ |friend| friend != 'Brian'}
           

        #invited_list
        #=> ["Sharon", "Leo", "Leila", "Arun"]

    #reduce
        #it reduces an array or hash down to a single object. 
        my_numbers = [5, 6, 7, 8]
        my_numbers.reduce { |sum, number| sum + number }
        #=> 26
