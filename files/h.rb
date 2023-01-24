require 'open-uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"

file = URI.open(url)

new_file = File.open("./files/hamletOnly.txt", "w+")

file.each do |line|

    if line.include?("Ham.")
        new_file.puts line
    end

end