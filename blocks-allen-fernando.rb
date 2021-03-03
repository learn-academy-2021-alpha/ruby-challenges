# Write a loop that prints the numbers 1 to 20.
# num = 1
# 20.times do
#     puts num
#     num = num + 1
# end

# Write a loop that prints the numbers 1 to 20 using a different approach than previously used.
# range = 1..20
# range.each do |value|
#     p value
# end

# Write a loop that prints only even numbers from 20 to 0.

# i = 20
# while i >= 0
#     if i.even?
#         puts i
#     end
#   i -= 1
# end

# Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.
# nums = [*1..5]

# nums.each do |value|
#     puts value * 5
# end

# Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.

# words = ["one", "two", "three", "four"]

# puts words

# def capitalize_array array
#     array.map! do |value|
#         value.capitalize
#     end
# end

# capitalize_array(words)

# puts words

# Create a method that takes in an array of numbers and returns the largest number in the array.

# def largest_num array
#     array.sort.last
# end

# nums = [1, 6, 5, 2]

# puts largest_num(nums)

# Create a method that takes in an array of numbers and returns the smallest number in the array.

# def smallest_num array
#     array.sort.first
# end

# nums = [4, 6, 5, 2]

# puts smallest_num(nums)

# Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.

def odd_sorted array
    odd_nums = array.select do |value|
        value.odd?
    end
    odd_nums.sort
end

nums = [1, 9, 11, 12, 6, 5, 2]

puts odd_sorted(nums)

# Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.
# Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].