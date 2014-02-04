# Number 7 Part A
class Dessert
  attr_accessor :name
  attr_accessor :calories
  
  def initialize(name, calories)
    @name=name
    @calories=calories
  end
  
  def healthy?
     @calories<200 
  end
 
  def delicious?
    true
  end
end

# Number 7 Part B
class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(name, calories, flavor)
    @name=name 
    @calories=calories
    @flavor=flavor
  end
  
  def delicious?
    if @flavor== "black licorice"
      false
    else
      true
    end
  end
end
 
a=JellyBean.new("a",232,"asd")
puts a.delicious?
puts a.healthy?
b=Dessert.new("b",190)
puts b.delicious?
puts b.healthy?
c=JellyBean.new("c",100,"black licorice")
puts c.delicious?
puts c.healthy?

#Sources: https://gist.github.com/feiskyer/1964748