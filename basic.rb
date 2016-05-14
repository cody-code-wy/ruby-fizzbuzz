#Basic FizzBuzz, almost as simple as possible.
puts (1..100).map { |x|
  if (x % 15).zero?
    "FizzBuzz"
  elsif (x % 3).zero?
    "Fizz"
  elsif (x % 5).zero?
    "Buzz"
  else
    x
  end
}
