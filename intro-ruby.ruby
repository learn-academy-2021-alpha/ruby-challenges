
# Remember that floats are numbers with a decimal point whereas integers have no fractional part so in Ruby, 1 and 1.0 are different types of things with slightly different behaviors.

# Add, subtract, multiply and divide some numbers and floats.
# p 1-3 
# p 4+ 4
# p 3 * 4
# p 3.0 / 2
# p 4/ 2

# Find the remainder of dividing two numbers using the modulo operator (%).

# p 7 % 3
# Divide a number by 0.

# p 6/0
# Divide 0 by 0.
# p 0/0
# Variables Challenges
# # Set a variable called my_favorite_number equal to your favorite number
# puts my_favorite_number = 8
# # Calculate your favorite number divided by 2
# p my_favorite_number / 2
# # Set another variable called someones_favorite equal to 13

# puts someones_favorite = 13
# # Change the value of someones_favorite to 7
# puts someones_favorite = 7
# # Subtract my_favorite_number from someones_favorite

# p someones_favorite - my_favorite_number 
# # Change the value of my favorite number to be 26 times its current value
# # p my_favorite_number * 26
# Strings Challenges
# Create a variable and return it in a sentence string interpolation
puts string = "hello"
# p "#{string} world"
# Create a variable that contains a string and test some of the Ruby string methods
# .upcase
p string.upcase
# .reverse
p string.reverse
# .include?
p string.include?"f"
# .capitalize
p string.capitalize
# Arrays Challenges
# Create an array with five of your favorite TV shows

puts tv_shows = ["breakingbad", "mandalorian", "marvel", "power ", "steal"]
p tv_shows
# Find the length of the array
p tv_shows.length
# From the full TV show array, extract your top 3 TV shows in a new array
p tv_shows.values_at(0, 2, 4)
# Reverse the array
p tv_shows.reverse
# Return one element from the array
p tv_shows[3]