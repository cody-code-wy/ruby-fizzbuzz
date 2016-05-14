puts (1..100).to_a.map #Turn a map of 1 to 100 into an array and map that to VVV that 
  { |x| x.to_s }.each_with_index 
    { |x,i| #We dont actually need the index in this one, but its for code reuse!
      x.concat("Fizz").sub!(/[0-9]*/,"") if ((i+1) % 3).zero?
      # If the number is divisibly by 3, add fizz to the end (eg "3fizz") then remove all numbers ("fizz")
    }.each_with_index #Now we need the code, the X could be a number or "fizz"
      { |x,i|
        x.concat("Buzz").sub!(/[0-9]*/,"") if ((i+1) % 5).zero?
        #Like before but now you could add 'buzz' to 'fizz'
      }
