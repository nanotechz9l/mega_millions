#!/usr/bin/env ruby
# Written by Rick Flores (nanotechz9l)
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

quick_pick = 56
mega_num   = 46

five = 5.times.collect { SecureRandom.random_number(quick_pick - 1) + 1 }
six  = 1.times.collect { SecureRandom.random_number(mega_num   - 1) + 1 }

puts "\nMEGA MILLIONS QUICK PICKS NUMBERS GENERATOR".foreground(:white).bright
puts "YOUR NUMBERS ARE: ".foreground(:cyan).bright + five.join(', ') + " MEGA = #{six}".foreground(:red).bright
puts "Good luck!".foreground(:white).bright
