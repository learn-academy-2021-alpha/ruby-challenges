# Story: As user 1, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

# rock = "rock"
# paper = "paper"
# scissors = "scissors"
puts "Select your weapon. Rock, paper or scissors?"
player_one = gets.chomp.downcase

player_two = gets.chomp.downcase

if (player_one == "rock" && player_two == "scissors") || (player_one == "scissors" && player_two == "paper") || (player_one == "paper" && player_two == "rock")
    puts "#{player_one} beats #{player_two}"

elsif (player_two == "rock" && player_one == "scissors") || (player_two == "scissors" && player_one == "paper") || (player_two == "paper" && player_one == "rock")
    puts "#{player_two} beats #{player_one}"
elsif (player_two == "rock" && player_one == "rock") || (player_two == "scissors" && player_one == "scissors") || (player_two == "paper" && player_one == "paper")
    puts "draw"
end





# Story: As user 2, I can see a prompt in the terminal asking me to type either "rock", "paper", or "scissors".

# Story: As a user, I can see a message in the terminal saying if user 1 or user 2 won the round.

# Story: As a user, I can see a message in the terminal saying if there was a tie.