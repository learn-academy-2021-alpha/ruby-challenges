# Arithmetic Challenges
# Remember that floats are numbers with a decimal point whereas integers have no fractional part so in Ruby, 1 and 1.0 are different types of things with slightly different behaviors.

# Add, subtract, multiply and divide some numbers and floats.
# p 2 + 2
# p 3.4 - 2
# p 5 / 3
# p 6 * 4
# Find the remainder of dividing two numbers using the modulo operator (%).
# p 6 % 2
# Divide a number by 0.
# p 7 / 0
# Divide 0 by 0.
# p 0.0 / 0

# Variables Challenges
# Set a variable called my_favorite_number equal to your favorite number
my_favorite_number = 7.0
# Calculate your favorite number divided by 2
p my_favorite_number / 2
# Set another variable called someones_favorite equal to 13
someones_favorite = 13
p someones_favorite
# Change the value of someones_favorite to 7
someones_favorite = 7
p someones_favorite

# Subtract my_favorite_number from someones_favorite
p my_favorite_number - someones_favorite
# Change the value of my favorite number to be 26 times its current value
p my_favorite_number **= 26
p my_favorite_number = my_favorite_number ** 26
p my_favorite_number


# Strings Challenges
# Create a variable and return it in a sentence string interpolation
name = "Kevinn"
p "My name is #{name}!"
# Create a variable that contains a string and test some of the Ruby string methods
p name.upcase
p name.reverse.downcase
p name.include? "K"
# .upcase
# .reverse
# .include?
# .capitalize
p "hello world. my name is #{name}".capitalize


# Arrays Challenges
# Create an array with five of your favorite TV shows
tv_shows = ["Heros", "Lost", "Wandavision", "How I Met Your Mother", "The Office"]
p tv_shows
# Find the length of the array
p tv_shows.length
# From the full TV show array, extract your top 3 TV shows in a new array
top_three = [tv_shows[0], tv_shows[1], tv_shows[2]]
p top_three
# Reverse the array
p tv_shows.reverse
# Return one element from the array
puts tv_shows[4]
