# As a developer, I can create a hash called my_phone using the Ruby method .new.

my_phone = Hash.new

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.

my_phone = {spotify:"music streaming", facebook:"social media", slack:"education", discord:"communication", audible:"listening to books"}
# p my_phone
# As a developer, I can return a value from my_phone by passing in the name of a key.
# p my_phone [:audible]

# As a developer, I can update two keys in my_phone.

my_phone [:instagram] = my_phone.delete :facebook
# p my_phone
# As a developer, I can update two values in my_phone.
my_phone [:spotify] = 'podcast streaming'
my_phone [:slack] = 'networking'
# p my_phone

# As a developer, I can delete two key:value pairs from my_phone.
# my_phone.delete (:instagram)
# my_phone.delete (:spotify)
# p my_phone

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.
# my_phone.map do |key, value|
#   puts "This #{key} app does #{value} in my phone."
# end
# p my_phone


# Stretch Challenges
# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.
def my_upcase_apps hash
  hash.map do |key, value|
  #key.capitalize && value.capitalize
  "#{key.capitalize}: #{value.capitalize}"
  end
end
p my_upcase_apps my_phone
