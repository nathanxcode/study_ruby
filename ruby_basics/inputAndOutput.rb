

#Output
    #print command
        #the print command show something in the command line or irb
        print "Learning code is DAORA!" # => Learning code is DAORA!
        #always return nil in the end
        
    #puts command   
        #the print command show something in the command line or irb and append to the next line
        puts "Leaning code is DAORA! with puts" # => Leaning code is DAORA! with puts
        #return nil too

#Input
    #gets command
    #in command line, show a blank line and wait for a input.
    #return what is typed in prompt
    gets # => type "Hello world!. Only close if something is typed or close the prompt. Return =>  Hello world! 
    #the input can be assigned to a virable

    my_input = gets.chomp # => "Nathan"
    puts my_input # => "Nathan"