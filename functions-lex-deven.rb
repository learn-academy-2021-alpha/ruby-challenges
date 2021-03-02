# Challenges
# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

# def sum_these_numbers num1 , num2 
#     puts num1 + num2
# end

# puts sum_these_numbers 15 , 12

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

# def is_even num
#     if num%2 == 0
#         true
#     else
#         false
#     end
# end

# puts is_even 2
# puts is_even 1
# puts is_even 7


# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

# def low_numbers num
#     if num <= 10 && num >=1
#         "valid"
#     else
#         "invalid"
#     end
# end

# puts low_numbers 10.0
# puts low_numbers 5.25
# puts low_numbers 0.99.round(0)
# puts low_numbers 25




# # Create a method that takes in a string and determines if the string is a palindrome.

# def palindrome string
#     if string == string.reverse
#         "This is a palindrome"
#     else
#         "This is a fake palindrome"
#     end
# end

# puts palindrome "racecar"
# puts palindrome "anna"
# puts palindrome "amoreroma"
# puts palindrome "beef"
# puts palindrome "poop"





# Challenge: Password Checker
# User Stories



# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

user_name = gets.chomp

password = get.chomp

def password_check user_name , password
    if user_name.downcase == password.downcase
        "Password cannot be the same as the username"
    elsif user_name.length < 6 || password.length <6
        "Username and or Password needs to be atleast 6 characters long"

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