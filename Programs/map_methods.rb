#!/usr/bin/env ruby

x = [1,2,3,4,5]
y = x.map { |x| x * 50}
# y = [50, 100, 150, 200, 25
# x = [1, 2, 3, 4, 5]

x.map! { |x| x *50}
# x = [50, 100, 150, 200, 250]

fruits = ['apple','banana','carrot']

cap_fruits = fruits.map do |fruit|
        fruit.capitalize if fruit == 'apple'
end
# ["Apple", nil, nil]
# Becase we haven;t told what to do for the else block


cap_fruits = fruits.map do |fruit|
    fruit == 'apple' ? fruit.capitalize : fruit
end
# ["Apple", "banana", "carrot"]