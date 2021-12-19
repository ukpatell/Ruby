#!/usr/bin/env ruby

# memo has initial value of the first index, assigned
[1,2,3,4,5].inject {|memo, n| memo + n }
# => 15

=begin
    1st round = memo value : 1
    2nd round = memo value : 2 + memo(1)  = 3
    3rd round = memo value : 3 + memo(3)  = 6
    4th round = memo value : 4 + memo(6)  = 10
    5th round = memo value : 5 + memo(10) = 15
=end

# Memo can be used for Strings as well as arrays

fruits = ['apple','banana','carrot']
longest = fruits.inject do |memo,fruit|
    if fruit.length > memo.length
        fruit           # Remembers new fruit of memo value if length is greater than memo
    else
        memo            # Memo value is unchanged
    end
end
# => "banana"