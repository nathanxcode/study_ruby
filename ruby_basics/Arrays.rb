
#Arrays


    str_array = ["This", "is", "a", "small", "array"]

    str_array.first         #=> "This"
    str_array.first(2)      #=> ["This", "is"]
    str_array.last(2)       #=> ["small", "array"]

    #adding and removing elements
    num_array = [1, 2]

    num_array.push(3, 4)      #=> [1, 2, 3, 4] add elements at the end
    num_array << 5            #=> [1, 2, 3, 4, 5]
    num_array.pop             #=> 5 remove from the end
    num_array                 #=> [1, 2, 3, 4]

    #shift and unshift
    #add and remove elements at the beggining
    num_array.unshift(1)      #=> [1, 2, 3, 4]
    num_array.shift           #=> 1
    num_array                 #=> [2, 3, 4]

    #Adding and Subtracting Arrays
    a = [1, 2, 3]
    b = [3, 4, 5]

    a + b         #=> [1, 2, 3, 3, 4, 5]
    a.concat(b)   #=> [1, 2, 3, 3, 4, 5]

    #This method returns a copy of the first array, removing any elements that appear in the second array.
    [1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]

    #basic methods
    [].empty?               #=> true
    [[]].empty?             #=> false
    [1, 2].empty?           #=> false

    [1, 2, 3].length        #=> 3

    [1, 2, 3].reverse       #=> [3, 2, 1]

    [1, 2, 3].include?(3)   #=> true
    [1, 2, 3].include?("3") #=> false

    [1, 2, 3].join          #=> "123"
    [1, 2, 3].join("-")     #=> "1-2-3"
