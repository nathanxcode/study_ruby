dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)

    n_hash = Hash.new(0)
    text.downcase!
    text = text.split(/[\s,'\,""\,'!'\,'?']/)
    
    text.each do |word|
        n_hash[word] += 1 if dictionary.include?(word)
    end
    p n_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
