# Part 11: Cartesian Product 

class CartesianProduct
  include Enumerable
  
  def initialize(a1, a2)
    @a1 = a1
    @a2 = a2
  end
 
  def each(&block)
	prod = []
    @a1.each do |i|
      @a2.each do |j|
        prod << [i, j]
      end
    end
    prod.each(&block)
  end
end

#Example test cases:

c = CartesianProduct.new([:a,:b], [4,5])

c.each { |elt| puts elt.inspect }

# [:a, 4]

# [:a, 5]

# [:b, 4]

# [:b, 5]

 

c = CartesianProduct.new([:a,:b], [])

c.each { |elt| puts elt.inspect }


#Sources: https://gist.github.com/tomtung/1973534