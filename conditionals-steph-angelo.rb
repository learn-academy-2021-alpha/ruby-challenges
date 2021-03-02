puts "type either rock, paper, or scissors"
user1 = gets
user2 = gets

# p user1
# p user2

# hands = [user1, user2]
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
end
