
#Loops
    #loop
    i = 0
    loop do 
        puts "i is #{i}"
        i+= 1;
        break if i == 5
    end
    
    #while
    while i < 10 do
        puts "i is #{i}"
        i+=1;
    end

    #until
    until i >= 10 do
    puts "i is #{i}"
    i += 1
    end

    #for
    for i in 0..5
        puts "#{i} zombies incoming!"
    end

    #times
    5.times do |number|
        puts "Alternative fact number #{number}"
    end

    #Upto and Downto
    5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

    10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5