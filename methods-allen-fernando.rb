# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

# def sum_these_numbers(num1, num2)
#     num1 + num2
# end

# # p sum_these_numbers 1, 1

# # Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

# def is_even number
#     if number % 2 == 0
#         true
#     else
#         false
#     end
# end

# # p is_even 1
# # p is_even 4

# # Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

# def between_one_and_ten number
#     if number <= 10 && number >= 1
#         "Valid"
#     else
#         "Invalid"
#     end
# end

# # p between_one_and_ten 5
# # p between_one_and_ten 12
# # p between_one_and_ten 0

# # Create a method that takes in a string and determines if the string is a palindrome.

# def is_palindrome string
#     if string == string.reverse
#         "#{string} is a palindrome"
#     else
#         "#{string} is NOT a palindrome"
#     end
# end

# p is_palindrome "racecar"
# p is_palindrome "mom"
# p is_palindrome "father"

# Challenge: Password Checker
# User Stories
# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

# set up the method 2 arguments user_name and password
#prompt user to input username 
#prompt user to input password


def password_checker user_name, password
    if user_name == password 
        "Username and Password can not be the same"
    elsif password.include?('!')
        'Password must incude !#$'
    elsif user_name.length < 6 || password.length < 6 
        "Username and Password must be at least 6 characters long"
    elsif user_name.include?('!') || user_name.include?('#') || user_name.include?('$') || user_name.include?(" ")
        'Username can not incude !#$ or spaces'
    end
end

puts "Enter Username"
username = gets.chomp

puts "Enter Password"
pw = gets.chomp

puts password_checker(username, pw)

#user_name 
# User ID and password cannot be the same.
# User ID and password must be at least six characters long.
# User ID cannot contain the following characters: !#$ or spaces


#password
# Password must contain at least one of: !#$
# Password cannot be the word password.
# password must be at least six characters long.
# password cannot be the same as ID







# As a developer, I can create a method that checks for the following rules for a user ID and password:
# User ID and password cannot be the same.
# User ID and password must be at least six characters long.
# Password must contain at least one of: !#$
# User ID cannot contain the following characters: !#$ or spaces
# Password cannot be the word "password".
# User Stories: Stretch
# As a user, I can enter my user ID and password into the terminal after being prompted to find out if the they are acceptable.
# User Stories: Super Stretch
# As a developer, my method ensures that the user's password must contain at least one number.

