# Number 10 Part A 
class String
  def palindrome?
    Object.send(:palindrome?, self) #send object to palindrome method
  end
end
 
# Number 10 Part B
 module Enumerable
  def palindrome?
    self.collect{|x| x} == self.collect{|x| x}.reverse #checks the palindrome with its self by reversing
  end
end


 def palindrome?(string) #Method from Number 2
        if string.downcase.gsub(/\W/, '') == string.downcase.gsub(/\W/, '').reverse 
        return true
        else
        return false
        end
    
end
puts "A man, a plan, a canal -- Panama".palindrome?  # => true
 puts "Madam, I'm Adam!".palindrome?              # => true
puts "Abracadabra".palindrome?                      # => false (nil is also ok)
 puts "Jenna".palindrome?
 puts [1,2,3,2,1].palindrome? # => true
 
#Sources: https://gist.github.com/tomtung/1973534