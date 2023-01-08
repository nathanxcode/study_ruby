

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(text, dictionary)

    new_hash = Hash.new
    delimiters = [',', ' ', "'"]
    handled_t = text.split(Regexp.union(delimiters))
    
    handled_t.each_with_index do |word,index|
        word.downcase!
        if word.include?(dictionary[index])
            handled_t << dictionary[index]
        end

        dictionary.each do |d_word|
            unless new_hash.empty?    
                if(word == d_word)
                    new_hash[word] = 1
                end
            else
                new_hash.each { |k, v| new_hash[k] = +1 }
            end
        end
            
    end

    p new_hash


end

substrings("Howdy partner, sit down! How's it going?", dictionary)
