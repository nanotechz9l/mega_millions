#!/usr/bin/env ruby
# Written by Rick Flores (nanotechz9l)
# Both the two-liner, and one-liner methods were provided to me via the awesome community on Stack Overflow.
# By: Darshan Computing, Julien Langlois, and pjs.
# http://stackoverflow.com/questions/16206010/trying-to-use-an-inclusive-range-with-securerandom-random-number-ruby-2-0-0

require 'rainbow.rb'
require 'securerandom'

=begin

Mega Millions drawings are held Tuesday and Friday at 11:00 p.m. 
Five balls are drawn from a set of balls numbered 1 through 56; 
one ball is drawn from a set of balls numbered 1 through 46. 
You win if the numbers on one row of your ticket match the numbers of the balls drawn on that date. 
There are nine ways to win a prize, from $2 to the jackpot. 
If no one wins the jackpot, the money is added to the jackpot for the next drawing. 
Overall chances of winning a prize are 1 in 40.

Ref: http://www.megamillions.com/
___________________________________________
| Match 5 + Mega  | Estimated Jackpot = ? |
-------------------------------------------
| 5      +      0 | $250,000              |
-------------------------------------------
| 4      +      1 | $10,000               |
-------------------------------------------
| 4      +      0 | $150                  |
-------------------------------------------
| 3      +      1 | $150                  |
-------------------------------------------
| 2      +      1 | $10                   |
-------------------------------------------
| 3      +      0 | $7                    |
-------------------------------------------
| 1      +      1 | $3                    |
-------------------------------------------
| 0      +      1 | $2                    |
-------------------------------------------
=end

=begin
### Long way to do it
quick_pick = 56
mega_num   = 46

first  = rand(1..56)
second = rand(1..56)
third  = rand(1..56)
fourth = rand(1..56)
fifth  = rand(1..56)
mega   = rand(1..46)
puts "\nYour MEGA MILLIONS numbers are".foreground(:cyan).bright + " #{first}".foreground(:white).bright + ",".foreground(:cyan).bright + " #{second}".foreground(:white).bright + ",".foreground(:cyan).bright + " #{third}".foreground(:white).bright + ",".foreground(:cyan).bright + " #{fourth}".foreground(:white).bright + ",".foreground(:cyan).bright + " and".foreground(:cyan).bright + " #{fifth}".foreground(:white).bright + " with a mega number of".foreground(:cyan).bright + " #{mega}\n".foreground(:red).bright
=end

=begin
### 2 liner
five = 5.times.collect { SecureRandom.random_number(quick_pick - 1) + 1 }
six  = 1.times.collect { SecureRandom.random_number(mega_num   - 1) + 1 }
puts "YOUR NUMBERS ARE: ".foreground(:cyan).bright + five.join(', ') + " MEGA = #{six}".foreground(:red).bright
=end

### 1 liner | Best method...!
puts "\nMEGA MILLIONS QUICK PICKS NUMBERS GENERATOR".foreground(:white).bright
puts 5.times.collect{SecureRandom.random_number(55) + 1}.push(SecureRandom.random_number(45) + 1).join(', ')
puts "Good luck!".foreground(:red).bright.blink
