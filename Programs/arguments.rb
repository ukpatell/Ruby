#!/usr/bin/env ruby

=begin
    NOTE: 
        1. Local Variables of Methods can't be used outside method
        2. Global Variables can't be used inside method (DIFFERENT)
        3. To use Global Variables, use as Arguments/Instance Variables
        4. Method can be re-defined as well (DIFFERENT)
        5. Order is important and with Customer Args, use Options Hash
=end

def volume(x,y,z)
    x * y * z
end

volume(2,3,4)
# In Ruby, Paranthesis is also not required 
# volume 2,3,4 would also work.


# Arguments in Methods 
def welcome(greet,name,punc)
    greet + ' ' + name + punc
end

welcome('Hello','Umang','!')
# => "Hello Umang!"


# Optional Arguments in Methods 
# Customize Default Value or Use the Default as well
def welcome(greet,name,punc='!')
    greet + ' ' + name + punc
end

welcome('Hello','Umang')
# => "Hello Umang!"


# Very Useful to change/modify using Hash Options
def welcome(greet,options={})
    name = options[:name] || 'friend'
    punc = options[:punc] || '!'
    greet + ' ' + name + ' ' + punc
end
puts welcome('Hello',{:punc=>'!!!'})
# => Hello friend !!!
# => nil                                        Last Operation is nil therefore, nil


#Multiple Lines Return Values
def add_and_subtract(num1,num2)
    add = num1 + num2
    subtract = num1 - num2
    [add,subtract]
end


=begin
    --      Long way to do this     ---
    result = add_and_subtract(8,3)
    a = result[0] # result[:add] for hash values return
    s = result[1]
=end
a,s = add_and_subtract(8,3)
# => [11, 5]
puts a
puts s
