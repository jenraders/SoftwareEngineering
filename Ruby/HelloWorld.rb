# Number 1 
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello @name!"
    end
end
hello = HelloWorldClass.new("Jenna Raderstrong")
hello.sayHi