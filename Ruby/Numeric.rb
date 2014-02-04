#Number 9
class Numeric

 @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}

 def method_missing(method_id) #capture all args in case have to call super

   singular_currency = method_id.to_s.gsub( /s$/, '')

   if @@currencies.has_key?(singular_currency) #Multiplies amount by the currency is it initially in

     self * @@currencies[singular_currency]

   else

     super

   end

 end

  def in(currency)
    singular_currency = to_singular(currency)
    if @@currencies.has_key?(singular_currency) #Divides initial currency amount by the currency conversion of the desired currency
      self / @@currencies[singular_currency]
    else
      super
    end
  end
 
  private
 
  def to_singular(word)
    word.to_s.gsub( /s$/, '')
  end
end

puts 1.dollar.in(:rupees) 
puts 10.rupees.in(:euro) #Will 10*0.019, then divide (10*0.019)/1.292
puts 25.yen.in(:rupees) 

#Sources: https://gist.github.com/tomtung/1973534
#Notes: 
# method_missing: Invoked by Ruby when obj is sent a message it cannot 
# handle. symbol is the symbol for the method called, and args are any 
# arguments that were passed to it. By default, the interpreter raises an 
# error when this method is called. However, it is possible to override 
# the method to provide more dynamic behavior. If it is decided that a 
#particular method should not be handled, then super should be called, 
# so that ancestors can pick up the missing method. The example below 
# creates a class Roman, which responds to methods with names consisting 
# of roman numerals, returning the corresponding integer values.