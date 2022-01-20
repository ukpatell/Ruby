#!/usr/bin/env ruby

# Should be on each ruby file of UNIX for best practices
# known as SHIBANG LINE .. path for ruby version of the OS to use for script

# Prints the line and adds a new line after
# System.out.println
# cout << endl

puts "Hello World from Ruby"

=begin
    This begin and end block is for multiple comment section.

    In the next line of code:
        print => outputs the line in the current line

=end
print "Hello World - 2nd Line"
print "Hello World - 3rd Line"

puts "Hello World - 4th Line"
puts "Hello World - 5th Line"

=begin

    Output:

    Hello World from Ruby
    Hello World - 2nd LineHello World - 3rd LineHello World - 4th Line
    Hello World - 5th Line

=end

#Input & outputs

print "","What is your name?  "
name = gets.chomp

puts "Hello, #{name}!"