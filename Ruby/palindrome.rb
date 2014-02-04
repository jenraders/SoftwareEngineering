# Number 2
 def palindrome?(string)
        if string.downcase.gsub(/\W/, '') == string.downcase.gsub(/\W/, '').reverse # \W any nonword character
        puts "#{ string } is a palindrome."
        else
         puts "#{ string } is not a palindrome."
        end
    
end
 palindrome?("A man, a plan, a canal -- Panama")  # => true
 palindrome?("Madam, I'm Adam!")                  # => true
 palindrome?("Abracadabra")                       # => false (nil is also ok)
 palindrome?("Jenna")
 
 
 

