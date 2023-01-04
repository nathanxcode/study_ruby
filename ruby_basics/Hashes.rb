#Hashes, {key => value}
my_hash = {
    "a random word" => "ahoy",
    "Dorothy's math test score" => 94,
    "an array" => [1, 2, 3],
    "an empty hash within a hash" => {}
  }

    #accessing values
    shoes = {
        "summer" => "sandals",
        "winter" => "boots"
    }
  
    shoes["summer"]   #=> "sandals"
    #If you try to access a key that doesn’t exist in the hash, it will return nil:

    #Adding and Changing Data
    shoes["fall"] = "Sneakers"
    shoes # => {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

    shoes["summer"] = "flip-flops"
    shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}
  
    #removing data
    shoes.delete("summer")    #=> "flip-flops"
    shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}

    #Methods
    books = {
        "Infinite Jest" => "David Foster Wallace",
        "Into the Wild" => "Jon Krakauer"
    }
      
    books.keys      #=> ["Infinite Jest", "Into the Wild"]
    books.values    #=> ["David Foster Wallace", "Jon Krakauer"]

    #Merging two hashes
    hash1 = { "a" => 100, "b" => 200 }
    hash2 = { "b" => 254, "c" => 300 }
    hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }
    #the second hash always overwrite the first one if they have the same key

    #Symbols as Hash Keys
    'Rocket' syntax
    american_cars = {
        :chevrolet => "Corvette",
        :ford => "Mustang",
        :dodge => "Ram"
    }
    # 'Symbols' syntax
    japanese_cars = {
        honda: "Accord",
        toyota: "Corolla",
        nissan: "Altima"
    }
    
    american_cars[:ford]    #=> "Mustang"
    japanese_cars[:honda]   #=> "Accord"