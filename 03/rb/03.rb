#!/usr/bin/env ruby

on = true
puts File.read('input').scan(/don't\(\)|do\(\)|mul\(\d+,\d+\)/).map{|x|
    val = 0
    case x
    when "don't()" then on = false
    when "do()"    then on = true
    else val = x.scan(/\d+/).map(&:to_i).reduce :*
    end
    on ? [val, val] : [val, 0]
}.transpose.map &:sum
