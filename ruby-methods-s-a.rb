# def sum_these_numbers (num1, num2)
#   num1 + num2
# end
# p sum_these_numbers 1, 2

# def is_even num
#   if num % 2 == 0
#     puts "is true"
#   else
#     puts "is false"
#   end
# end
# p is_even 5

# def below_ten number
#   if number >= 1 && number <= 10
#     puts "is valid"
#   else
#     puts "is invalid"
#   end
# end
#
# p below_ten 12

# def palindrome word
#   if word.reverse == word
#     puts "THATS A PALINDROME"
#   else
#     puts "NOT A PALINDROME"
#   end
# end
# p palindrome "racecar"
# p palindrome "hello"

# Password checker
number_arr = 

def password_checker username, password
    if password == username
        puts "you cannot have the same password as your user id"
    elsif password.length < 6
        puts "make it longer than 6 characters for your security"
    elsif password.include? "$" || "!" || "#" || " "
        puts "please do not iclude these special characters: ! , # , $"
    elsif password == "password"
        puts "that's weak"
    elsif password.count("0-9") == 0
        puts "please add integers to your password" 
    else
        puts "You are good to go!"
    end
end
# we thought this worked but it still seems to be evaluating wrong hehe 

p "Enter username"
username = gets.chomp
p "Enter password"
password = gets.chomp

p password_checker username, password

