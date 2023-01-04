#Enumerable methods
    #select
    friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

    friends.select{|friend| friend != 'Brian' }
     #=> ["Sharon", "Leo", "Leila", "Arun"]

    #reject
    friends.reject { |friend| friend == 'Brian' }
    #=> ["Sharon", "Leo", "Leila", "Arun"]