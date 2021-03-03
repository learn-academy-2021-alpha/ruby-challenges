# # Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

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

def password_checker(user_name, password)
    if user_name == password
        "Username and password cannot be the same"
    elsif user_name.length < 6 || password.length < 6
        "Username and password must be at least 6 characters"
    elsif user_name.include?('!') || user_name.include?('#') || user_name.include?('$') || user_name.include?(' ')
        'Username cannot include !#$ or spaces'
    elsif !password.include?('!') && !password.include?('$') && !password.include?('#')
        'Password must include !, #, or $'
    end
end

puts password_checker('admin1', 'password#')