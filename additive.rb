puts (1..100).map{ |x| out = ""
  out += "Fizz" if (x % 3).zero?
  out += "Buzz" if (x % 5).zero?
  out += x.to_s if out.empty?
  out }
