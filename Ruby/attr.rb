# Number 8
class Class
  
  def attr_accessor_with_history(attr_name) 
    attr_name = attr_name.to_s         # make sure it's a string
    attr_reader attr_name              # create the attribute's getter
    attr_reader attr_name + "_history" #create history getter
    # Allows me to evaluate arbitrary code in the context of a particular class or object. 
    #class_eval is a method of the Module class, meaning that the receiver will be a module
    # or a class. The block you pass to class_eval is evaluated in the context of that class.
    class_eval %Q{ 
      def #{attr_name}=(val)
        @#{attr_name} = val 
        @#{attr_name}_history = [nil] if @#{attr_name}_history.nil? 
        @#{attr_name}_history.push(val)
      end
    }
    #initialize history array 
    #adding value to history array if history array already exists
  end
  
end

class Foo
  
  attr_accessor_with_history :bar
 
end 
 
puts f = Foo.new     # => #<Foo:0x127e678>

puts f.bar = 3       # => 3

puts f.bar = :wowzo  # => :wowzo

puts f.bar = 'boo!'  # => 'boo!'

puts f.bar_history   # => [nil, 3, :wowzo, 'boo!']


f = Foo.new

f.bar = 1

f.bar = 2

puts f.bar_history # => if your code works, should be [nil, 1, 2]

#Sources:  https://gist.github.com/andrewdavidcostello/1996238

#Notes:
#@ means instance variable
 #class_eval is a method of the Module class, meaning that the receiver will be a module
	# or a class. The block you pass to class_eval is evaluated in the context of that class.
#A Module is a collection of methods and constants. The methods
	# in a module may be instance methods or module methods. Instance 
	#methods appear as methods in a class when the module is included,
	# module methods do not. Conversely, module methods may be called 
	#without creating an encapsulating object, while instance methods may not. 