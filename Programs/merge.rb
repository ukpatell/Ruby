#!/usr/bin/env ruby

=begin
    Map1 : {:a => 1, :b => 2, :c => 3}
    Map2 : {:a => 9, :b => 2, :d => 3}
    Map1.merge(Map2)
        Map1 : {:a => 9, :b => 2, :c => 3, :d => 3}
        NOTE: a replaced with new value, b value was same
    To specify this:
        Map1.merge(Map2) |Key,OldVal,NewVal| OldVal
        have function like this to handle different conflicts
=end

h1 = {:a => 2, :b => 4, :c => 6}
h2 = {:a => 3, :b =>4, :d => 4}

h1.merge(h2)
# => {:a=>3, :b=>4, :c=>6, :d=>4}

h2.merge(h1)
# => {:a=>2, :b=>4, :d=>4, :c=>6}

h1.merge(h2) {|key,oldVal,newVal| oldVal}
# => {:a=>2, :b=>4, :c=>6, :d=>4}

h1.merge(h2) {|key,oldVal,newVal| oldVal * 100}
# => {:a=>200, :b=>400, :c=>6, :d=>4}

