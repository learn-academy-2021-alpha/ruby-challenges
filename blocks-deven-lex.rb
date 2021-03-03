# Challenges
# Write a loop that prints the numbers 1 to 20.
num =1
while num <= 20
    puts num
    num+=1
end

# Write a loop that prints the numbers 1 to 20 using a different approach than previously used.

num_range = 1..20
num_range.each do |value|
  puts value
end

# Write a loop that prints only even numbers from 20 to 0.

# num_range.each do |value|
#   if value.even?
#     puts value
#   end
# end

num = 20
while num >= 1
    if num.even?
      puts num
    end
  num-=1
end


# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.
arr1 = [*1..10]

def five_multiplier array
  array.map do |value|
   value*5
  end
end

p five_multiplier arr1

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

arr2 = ["bottle", "phone", "carrot", "pen"]

def capitalize_words array
  array.map do |string|
    string.capitalize
  end
end

p capitalize_words arr2

# Create a method that takes in an array of numbers and returns the largest number in the array.
# Create a method that takes in an array of numbers and returns the smallest number in the array.
# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.
# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.
# Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].
# FIZZBUZZ
# Write a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.
