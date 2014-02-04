# Number 3
def count_words(string)
        hash = {}
        string.downcase.gsub(/[^a-z\s]/, "").split().each { # "^a-z\s" any character EXCEPT a-z or a space
        |word| hash[word] = hash[word] ? hash[word] + 1 : 1
        }
        return hash
end

puts count_words("A man, a plan, a canal -- Panama")
print "\n"
puts count_words("Doo bee doo bee doo")