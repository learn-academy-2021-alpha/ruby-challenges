# Challenges
# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
# num1 =2
# num2 =3
# def sum_these_numbers num1,num2
#     num1 + num2
# end

# p sum_these_numbers 


# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

# def is_even num1
#     if num1 % 2 == 0
# return  "its even"
#     else 
#         return "false"
#     end
# end

#     p is_even 4
# Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
# def inside_num num1
#     if num1 >= 1 &&  num1 <=10
#         return "valid"
#     else 
#       return  "invalid"
#     end
# end

# p inside_num 8
# Create a method that takes in a string and determines if the string is a palindrome.

# def palindrome_word word
#     if word == word.reverse
#         return "it is a palindrom"
#     else return "its not a palindrome"
#     end
# end

# p palindrome_word "civic"

# Challenge: Password Checker
# User Stories
# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

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
puts "what is your id?"
puts "what is your password?"
id = gets.chomp.downcase
password = gets.chomp.downcase


def password_checker user_id, user_password
    if user_id.match?(/[$!#+]/) == true || user_id == user_password || user_password == "password"
        "invalid"
    elsif user_id.length <= 6 && user_password.length <= 6 && user_password.match?(/[$!#]/) == true
        "good one"
    else
        "try again"
    end
end

p password_checker id, password

