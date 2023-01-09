#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string

#caesar cipher is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.


def caesarEncrypt(string, shift)

    
    result = ""
    string.each_char do |char|

        #lowercase = 97..122
        #uppercase = 65..90
        if char.between?('a', 'z')
            char = char.ord + shift
            #atual char position - final char(z), sum with the first char(a)
            char = (char - 122) + 96 until char < 123
            char = char.chr
        elsif char.between?('A', 'Z')
            char = char.ord + shift
            #atual char position - final char(Z), sum with the first char(A)
            char = (char - 90) + 64 until char < 91
            char = char.chr
        else char
        end
        result += char
    end
    return p result
end
caesarEncrypt("What a string!", 5)