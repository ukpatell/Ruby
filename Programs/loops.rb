#!/usr/bin/env ruby

# One of the methods for loop
i = 5

loop do
  break if i <= 0
  puts "Countdown: #{i}"
  i -= 1
end
puts "Blast Off Method 1",""

# Loops : while, until (much better than given above method)
k = 5
while k > 0         # built-in break statement
  puts "Countdown: #{k}"
  k -= 1
end
puts "Blast Off Method 2",""

cart = ['apple','banana','carrot']

until cart.empty?       # loop will continue until the cart become empty
  first = cart.shift    # remove the first item(shift) from the front and updates it
  puts first.upcase     # turns upcase
end
