puts "type either rock, paper, or scissors"
user1 = gets.chomp
user2 = gets.chomp

p "User 1 is: " + user1
p "User 2 is: " + user2

if user1 == "rock" && user2 == "scissors"
  puts "user1 wins"
elsif user1 == "scissors" && user2 == "rock"
  puts "user2 wins"
elsif user1 =="rock" && user2 == "paper"
  puts "user2 wins"
elsif user1 == "paper" && user2 == "rock"
  puts "user1 wins"
elsif user1 == "paper" && user2 == "scissors"
  puts "user2 wins"
elsif user1 == "scissors" && user2 == "paper"
  puts "user1 wins"
elsif user1 == "rock" && user2 == "scissors"
  puts "user1 wins"
else user1 == "scissors" && user2 == "rock"
  puts "user2 wins"
end

