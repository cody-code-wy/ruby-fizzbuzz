# While this is titled 'clean' monkey patch its only called that as unlike the dirty monkey patch, this one does not create a new method. Instead it creates a UnboundMethod object in the class.
# In consequence, you cannot call 5.orig_to_s like you can on dirty monkey patch. This effecively makes it impossible to access the original method without modifying the class (or in this case passing a number not divisible by 3 or 5)


class Fixnum

# VV this MUST be a class variable, or it will not work.
  @@orig_to_s = instance_method(:to_s) #Save the old method, we need it later (This is unbound, so we cannot directly call it, we will fix this later)

  def to_s() #Now when we puts Fixed nums we get fizz buzz
    if (self % 15).zero? #Boring old FizzBuzz Simple version
      "FizzBuzz"
    elsif (self % 5).zero?
      "Buzz"
    elsif (self % 3).zero?
      "Fizz"
    else
      #Now we need to call the old method, so we bind it to ourselves and call it.
      #.() is RB9 syntatic sugar for .call, if using older than 9 replace .() with .class
      @@orig_to_s.bind(self).() #That should do it!
    end
  end
end

puts (1..100).to_a #Tada
