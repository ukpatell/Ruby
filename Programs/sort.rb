#!/usr/bin/env ruby

=begin
    Sort Results:  Value 1  <=>  Value 2
         1           5      <=>    1
         0           5      <=>    5
         -1          1      <=>    5
=end

array = [5,8,2,7,3]
array.sort
# => [2, 3, 5, 7, 8]

array.sort {|v1,v2| v2 <=> v1}
# => [8, 7, 5, 3, 2]

fruits = ['banana','pear','apple','carrot']
fruits.sort
# => ["apple", "banana", "carrot", "pear"]

fruits.sort do |fruit1,fruit2|              # Shorter goes Left
    fruit1.length <=> fruit2.length         # Longer  goes Right
end
# => ["pear", "apple", "banana", "carrot"]
