# Rock Paper Scissors

puts "Please type in rock paper or scissors"
player1 = gets.chomp

puts "Please type in rock paper or scissors"
player2 = gets.chomp


if player1 == "rock" && player2 == "scissors"
    puts "#{player1} is the winner!!" 
elsif player1 == "rock" && player2 == "paper"
    puts "#{player2} is the winner!!" 
elsif player1 == "rock" && player2 == "rock"
    puts "TIE!!" 
elsif player1 == "scissors" && player2 == "scissors"
    puts "TIE!!" 
elsif player1 == "scissors" && player2 == "paper"
    puts "#{player1} is the winner!!" 
elsif player1 == "scissors" && player2 == "rock"
    puts "#{player2} is the winner!!" 
elsif player1 == "paper" && player2 == "scissors"
    puts "#{player2} is the winner!!" 
elsif player1 == "paper"  && player2 == "paper"
    puts "TIE!!" 
elsif player1 == "paper"  && player2 == "rock"
    puts "#{player1} is the winner!!" 
end

