class Fixnum

  alias_method :orig_to_s, :to_s #We need this later

  def to_s() #Now when we puts Fixed nums we get fizz buzz
    if (self % 15).zero? #Boring old FizzBuzz Simple version
      "FizzBuzz"
    elsif (self % 5).zero?
      "Buzz"
    elsif (self % 3).zero?
      "Fizz"
    else
      self.orig_to_s #Heres where we needed the origin string method
    end
  end
end

puts (1..100).to_a #Tada
