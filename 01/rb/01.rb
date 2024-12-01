#!/usr/bin/env ruby

a,b = File.readlines('input').map{|line| line.split.map &:to_i }.transpose

# part 1
p a.sort.zip(b.sort).sum{|x,y| (x-y).abs }

# part 2
p a.sum{|x| b.count(x) * x }
