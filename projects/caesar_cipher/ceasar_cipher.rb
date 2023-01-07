#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string

#caesar cipher is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.


def caesarEncrypt(string, shift)
    
    alphabet = ('a'..'z').to_a
    
    new_array = (string.split(''))
    new_string = " "
    
    new_array.each_with_index do |letter, index|

        if(letter == alphabet[index])
            alphabet.each_with_index do |a_letter, index|
                #puts "#{index}: #{letter}"
                n_index = index + shift
                new_string += alphabet[n_index]
            end
            puts new_string

        end
    end


end
caesarEncrypt("hello world", 5)