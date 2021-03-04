# As a developer, I can create a hash called my_phone using the Ruby method .new.

my_phone = Hash.new

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.

my_phone = {spotify:"music streaming", facebook:"social media", slack:"education", discord:"communication", audible:"listening to books"}
# p my_phone
# As a developer, I can return a value from my_phone by passing in the name of a key.
# p my_phone [:audible]

# As a developer, I can update two keys in my_phone.

my_phone [:instagram] = my_phone.delete :facebook
p my_phone
# As a developer, I can update two values in my_phone.


# As a developer, I can delete two key:value pairs from my_phone.
# As a developer, I can use an enumerable method to return information about all of my_phone's applications.
