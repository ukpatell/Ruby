

# IF - Conditional
x = 15

if x <= 10
  puts "10 or below"
elsif x >= 20
  puts "20 or above"
else
  puts "Betweem 10 and 20"
end


# unless condition
cart = ['apple','banana','carrot']

#IF NOT
unless cart.empty?
  puts "First Item: #{cart[0]}"
else
  puts "Cart is Empty"
end


# Case Conditional w. Booleans / Comparisons
count = 1

case
when count == 0
  puts "No one"
when count == 1
  puts "1 Person"
when (2..5).include?(count)
  puts "Several People"
else
  puts "Many People"
end

# Different Method but this would remove the
# flexibility
case count
when 0
  puts "No one"
when 1
  puts "1 Person"
when 2..5
  puts "Several People"
else
  puts "Many People"
end

# Short-Hand Conditional
puts count == 1 ? "#{count} person " : "#{count} people"
DEFAULT_LIMIT = 100
limit = nil

max = limit || DEFAULT_LIMIT
puts max

limit ||= DEFAULT_LIMIT
puts limit

limit = DEFAULT_LIMIT unless limit
puts "Are you lonely?" if count == 1
