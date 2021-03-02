# Story: As user 1, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

# Story: As user 2, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

# Story: As a user, I can see a message in the terminal saying if user 1 or user 2 won the round.

# Story: As a user, I can see a message in the terminal saying if there was a tie.

puts "Player1 choose: rock, paper, or scissors"
require 'io/console'
player1 = STDIN.noecho(&:gets).chomp
puts "Player2 choose: rock, paper, or scissors"
require 'io/console'
player2 = STDIN.noecho(&:gets).chomp

if player1 == "rock" && player2 == "scissors"
    puts "player 1 wins"
elsif player1 == "paper" && player2 == "rock"
    puts "player 1 wins"
elsif player1 == "scissors" && player2 == "paper"
    puts "player 1 wins"
elsif player2 == "rock" && player1 == "scissors"
    puts "player 2 wins"
elsif player2 == "paper" && player1 == "rock"
    puts "player 2 wins"
elsif player2 == "scissors" && player1 == "paper"
    puts "player 2 wins"
else
    puts "tie game"
end
