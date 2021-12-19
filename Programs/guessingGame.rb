#!/usr/bin/env ruby

puts "--------------------------------"
puts "|       Guessing Game          |"
puts "--------------------------------"
puts "Instructions:"
puts "      Computer will generate random "
puts "      number User will have 5  "
puts "      chances to guess number"
puts "      correctly (1-100)"
puts "---  ----  -----  -----  ---  ---",""

# User Name Input
print "What is your name: "
name = gets.chomp

# Generate random number from 1 to 100
number = rand(100) + 1

# Counter with Limit of CONSTANT = MAX_COUNT
count = 0
MAX_COUNT  = 5

# 1st Guess
print "Mr. #{name}, Enter Guess: "
guess = gets.chomp.to_i
count += 1                      # Increment Counter by 1
                                # NOTE: In Ruby, count++ is not valid!

                                # Validation of Input with Counter
while guess >= 1 and guess <= 100 and count < MAX_COUNT
    if guess == number
        puts "Congratulations, you guessed it in #{count} attempts!"
        exit
    elsif guess < number
        puts "Too Low"
        print "Mr. #{name}, Enter Guess: "
        guess = gets.chomp.to_i
        count += 1
    else
        puts "Too High"
        print "Mr. #{name}, Enter Guess: "
        guess = gets.chomp.to_i
        count += 1
    end
end

# Output: If player runs out of attempts and display correct number
if count == MAX_COUNT
    puts "Sorry, you've ran out of attempts!"
    puts "--Correct Number was: #{number} --"
    exit
end

# Generic Case, if entry was invalid etc.
puts "Invalid Entry. Program Terminated."



