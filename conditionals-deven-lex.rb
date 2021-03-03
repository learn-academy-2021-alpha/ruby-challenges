# Challenge: Rock, Paper, Scissors
# Story: As user 1, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
#
# Story: As user 2, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".
#
# Story: As a user, I can see a message in the terminal saying if user 1 or user 2 won the round.
#
# Story: As a user, I can see a message in the terminal saying if there was a tie.


puts "Player 1: Rock, Paper, or Scissors?"
player_1 = gets.chomp
puts "Player 2: Rock, Paper, or Scissors?"
player_2 = gets.chomp

if player_1 == "Rock" && player_2 == "Scissors"
  puts "Player 1 wins!"
elsif player_1 == "Rock" && player_2 == "Paper"
  puts "Player 2 wins!"
elsif player_1 == "Rock" && player_2 == "Rock"
  puts "Draw, no one wins."

elsif player_1 == "Scissors" && player_2 == "Paper"
  puts "Player 1 wins!"
elsif player_1 == "Scissors" && player_2 == "Rock"
  puts "Player 2 wins!"
elsif player_1 == "Scissors" && player_2 == "Scissors"
  puts "Draw, no one wins."

elsif player_1 == "Paper" && player_2 == "Rock"
  puts "Player 1 wins!"
elsif player_1 == "Paper" && player_2 == "Scissors"
  puts "Player 2 wins!"
elsif player_1 == "Paper" && player_2 == "Paper"
  puts "Draw, no one wins."
end
