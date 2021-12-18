# => Name: Umang Patel
# => Date: December 18, 2021
# => Description: Map Roman Numerals
# =>              from 1 to 10

#Hash.new { |hash, key| hash[key] =  }
number_map = {
  1=>"I",
  2=>"II",
  3=>"III",
  4=>"IV",
  5=>"V",
  6=>"VI",
  7=>"VII",
  8=>"VIII",
  9=>"IX",
  10=>"X"
}

puts number_map[5]
#outputs => V

puts number_map[9] == 'IX'
#outputs => true
