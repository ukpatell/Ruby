#!/usr/bin/env ruby
=begin
        Pig Latin
    Words beginning with a consonant cluster, the 
    whole cluster moves to the end, followed by "ay"

    "glove" => "oveglay"
    "where" => "erewhay"

    Algorithm:
        1. Convert word to array
        2. find first vowel position
        3. if position > 0 then
        4. Remove character upto the position
        5. Return Main + Front + 'ay'
=end

VOWELS = ['a','e','i','o','u']

def pig_latin(word)
    word_array = word.split('')
    word_array.find_index do |index|
        
# In-Complete as of Now