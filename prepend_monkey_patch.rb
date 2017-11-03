#This is probably the best to use if monkey patching, as it allows you to actually use inheritance!

module FizzBuzzFixnum #The name is basically unimportant, you will use it once more.
  def to_s #the method to change
    if (self % 15).zero?
      "FizzBuzz"
    elsif (self % 3).zero?
      "Fizz"
    elsif (self % 5).zero?
      "Buzz"
    else
      super #Call the original
    end
  end
end

# Now for the magic!
class Fixnum
  prepend FizzBuzzFixnum #Just put our stuff into it
end

puts (1..100).to_a
