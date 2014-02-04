
# Number 5
    def anagrams?(w1, w2)
  w1.downcase.split('').sort == w2.downcase.split('').sort #Compares word 1 with word 2, sorts them alphabetically so they can be compared
end
 
def combine_anagrams(words)
  ret=[]
  while words.length>0 do
    i=0
    temp=[words[i]]
    j=i+1
    #iterate through while loop to see which words are anagrams of one another
    while j<words.length do
      if anagrams?(words[i],words[j]) 
      temp << words[j]  #Input word into temp if it is an anagram 
      words.delete_at(j) #delete that word from the word array
      else
      j=j+1 # increase j's count to move onto the next word
      end
    end
    ret<< temp #Copy temp over to ret. 
    words.delete_at(i) #delete the word at i, this will move the next word to the beginning of the array to be tested next
  end
  ret
end
 



test1 = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
puts combine_anagrams(test1)
#Example test case:

# input: ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']

# output: [ ["cars", "racs", "scar"],

#           ["four"],

#           ["for"],

#           ["potatoes"],

#           ["creams", "scream"] ]