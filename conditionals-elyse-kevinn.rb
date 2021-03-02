# Story: As user 1, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

# Story: As user 2, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

# Story: As a user, I can see a message in the terminal saying if user 1 or user 2 won the round.

# Story: As a user, I can see a message in the terminal saying if there was a tie.

puts 'User 1 please type "rock", "paper", or "scissors"'
user_1 = gets.chomp

puts 'User 2 please type "rock", "paper", or "scissors"'
user_2 = gets.chomp

p user_1
p user_2

if user_1 == "rock" && user_2 == "paper"
  puts "user_2 wins!"
elsif user_1 == "rock" && user_2 == "scissors"
  puts "user_1 wins!"
elsif user_1 == "paper" && user_2 == "scissors"
  puts "user_2 wins!"
elsif user_1 == "paper" && user_2 == "rock"
  puts "user_1 wins!"
elsif user_1 == "scissors" && user_2 == "rock"
  puts "user_2 wins!"
elsif user_1 == "scissors" && user_2 == "paper"
  puts "user_1 wins!"
else
  puts "Everyone is a winner!"
end
