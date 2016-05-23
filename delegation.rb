require 'delegate' #This is part of the standard lib

class FizzBuzz < DelegateClass(Fixnum) #When overriding a def, the super keyword can access the original.
  def initialize(wrap)
    super
  end

  def to_s
    if (self % 15).zero?
      "FizzBuzz"
    elsif (self % 3).zero?
      "Fizz"
    elsif (self % 5).zero?
      "Buzz"
    else
      super # Get normal int string value!
    end
  end
end

puts (1..100).to_a.map{|x| FizzBuzz.new(x)}
