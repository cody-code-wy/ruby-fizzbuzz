# This is based on the work from http://threeifbywhiskey.github.io/2014/03/05/non-alphanumeric-ruby-for-fun-and-not-much-else/
#
# I hope to make a unique spin on it!
#
# I will have comments, they do not count as alphanumeric code!

# I will start by getting some numbers to work with, I plan to get the first 4 powers of 2 (including 0)

# Get one! $$ is the PID, a non 0 positive number. x/x = 1
_ = $$ / $$       #2^0 = 1
$_ = _ + _        #2^1 = 2
$__ = $_ * $_     #2^2 = 4
$___ = $__ * $_   #2^3 = 8
$____ = $___ * $_ #2^4 = 16

# Now I will get the numbers I needed, 3, 5, 15, and 100

__ = $____ - ($_ + $__) #10

$- = _ + $_     #3
$-_ = _ + $__   #5
@__ = $- * $-_ #15
@___ = __ ** $_ #100

# Get 0, anything - itself = 0
@_ = $_ - $_

# building Fizz and Buzz

# This part taken from the post!
____ = '' << @___ + ($_ * (__ + _)) #thats 122, tha numeric literal for Z
___ = '' << __ * ($___ - _) << @___ + $__ + _ << ____ << ____ # thats 70 << 105 << z << z or Fizz (it is 3 _ because this goes with 3!)
_____ = '' << (__ + _) * ($__ + $_) << @___ + ($____ + _) << ____ << ____ # thats 66<<117<<z<<z or Buzz (it is 5 _ because this goes with 5!)
______ = '' << __ #thats 10, or a newline \n character

# Cheaty recursive function
# this will use $. as a iterator, this is meant to keep track of the current line in stdin, but we dont need it.
#
# Also this will use $> which is an alias for stdout, you can shovel into it like $> << "string", or in our case $> << ___ << _____ for FizzBuzz

# This is fundamentally the same as on the blog, theres not much room for variation here.


@____ = -> {
  __ = @_ # We won't need 10 again, reusing this short name
  $. += _
  $> << ($. % $- == @_ ?  (__=_;___)   : '')
  $> << ($. % $-_ == @_ ? (__=_;_____) : '')
  $> << (__ != _ ? $. : '') 
  $. < @___ ? ($> << ______; @____[]) : @_ # Minor improvement over blog code, mine only puts newlines when needed, blog code puts an extra one at the end.
}

@____[]

#Take a look at additive-non-alphanumeric.nocomment.rb for this without comments!
