# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
# def sum_these_numbers (num1, num2)
#     num1 + num2
# end
# p sum_these_numbers 3, 7

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
# def is_even num
#     num%2 ==0 
# end
#     p is_even 7

# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
# def num_validation num
#     if num.between?(1,10)
#         "valid"
#     else
#         "invalid"
#     end
# end
# p num_validation 4
# p num_validation 20

# Create a method that takes in a string and determines if the string is a palindrome.

# def is_palindrome string
#     string == string.reverse
# end
# p is_palindrome "hello"
# p is_palindrome "mom"
# p is_palindrome "racecar"


# Password Checker
# User Stories
# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:
puts "enter username"
username = gets.chomp
puts "enter password"
password = gets.chomp

# As a developer, I can create a method that checks for the following rules for a user ID and password:
def name_validation (username, password)
    if username == password 
    "User ID and password cannot be the same."
    elsif username.length < 6 || password.length < 6
        "User ID and password must be at least six characters long."
    elsif username.include?('!') || username.include?('#') || username.include?('$') || username.include?(' ')
        "User ID cannot contain the following characters '!' '#' '$' or spaces"
    elsif !password.include?('!') && !password.include?('#') && !password.include?('$')  
        "Password must contain at least one of '!' '#' '$'"
    elsif password == "password"
    "Password cannot be the word 'password'."
    else
        "Your name and password are approved"
    end
end
p name_validation(username, password)