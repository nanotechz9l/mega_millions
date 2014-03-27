#!/usr/bin/env ruby
# Written by Rick Flores (nanotechz9l)

require 'securerandom';require 'rainbow.rb'

=begin

  Mega Millions drawings are held Tuesday and Friday at 7:59 p.m PST. 
  Five balls are drawn from a set of balls numbered 1 through 75; 
  one ball is drawn from a set of balls numbered 1 through 15. 
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


### Long way to do it

## TO-DO:
# implement the most effective level of randomness. Testing could be done with Burp, and other methods. 

first  = SecureRandom.random_number(75) + 1 # <= needed to start the integer return value at 1 vs 0.
second = SecureRandom.random_number(75) + 1
third  = SecureRandom.random_number(75) + 1
fourth = SecureRandom.random_number(75) + 1
fifth  = SecureRandom.random_number(75) + 1
mega   = SecureRandom.random_number(15) + 1
puts "\n Mega millions numbers (updated to reflect the new number scheme of 5 numbers from 1..75, and mega 1..15)\n\n".foreground(:yellow).bright + " #{first}".foreground(:white).bright + ", ".foreground(:cyan).bright + " #{second}".foreground(:white).bright + ", ".foreground(:cyan).bright + " #{third}".foreground(:white).bright + ", ".foreground(:cyan).bright + " #{fourth}".foreground(:white).bright + ", ".foreground(:cyan).bright + " #{fifth}".foreground(:white).bright + ", ".foreground(:cyan).bright + "MEGA ".foreground(:white).bright + "#{mega}\n".foreground(:red).bright.underline


# Both the two-liner, and one-liner methods were provided to me via the awesome community on Stack Overflow.
# By: Darshan Computing, Julien Langlois, and pjs.
# http://stackoverflow.com/questions/16206010/trying-to-use-an-inclusive-range-with-securerandom-random-number-ruby-2-0-0

=begin
### 2 liner
five = 5.times.collect { SecureRandom.random_number(quick_pick - 1) + 1 }
six  = 1.times.collect { SecureRandom.random_number(mega_num   - 1) + 1 }
puts "YOUR NUMBERS ARE: ".foreground(:cyan).bright + five.join(', ') + " MEGA = #{six}".foreground(:red).bright
=end

### True 1 liner
#puts "\nMEGA MILLIONS QUICK PICKS NUMBERS GENERATOR".foreground(:white).bright; puts 5.times.collect{SecureRandom.random_number(75) + 1}.push(SecureRandom.random_number(1clear5) + 1).join(', '); puts "Good luck!".foreground(:red).bright.blink
