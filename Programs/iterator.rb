=begin
  Multiple Ways for Iterations

  5.times     { puts "Hello" }
  1.upto(5)   { puts "Hello" }
  5.downto(1) { puts "Hello" }
  (1..5).each { puts "Hello" }

  All of this would print 5 times
    but they are not the same as you can
    make use of different value each iteration
=end

# Block Variable Example - Much neater and intention is clear
5.downto(1) do |i|
  puts "Countdown: #{i}"
end
puts "Blast Off",""

# One Line code using {} as block w.out do
5.downto(1) {|i| puts "Countdown: #{i}"}
puts "Blast Off",""

fruit = ['apple','banana','carrot']

fruit.each do |fruit|
  puts "#{fruit.upcase}"
end

# Simple Iteration Exercise
#   Remove First Char and Add in the end
#   Repeat the pattern for 20 times

WORDS = "RRGGBBYYKK"
word_array = WORDS.split("")
count = 20

count.times do |i|
  first  = word_array.shift     # First Char is Retrieved
  word_array << first           # First Char is added in the end
  puts word_array.join
end
