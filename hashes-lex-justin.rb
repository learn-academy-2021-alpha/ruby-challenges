# As a developer, I can create a hash called my_phone using the Ruby method .new.

my_phone = Hash.new


# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.

my_phone[:phone] = 'phone calls'
my_phone[:facetime] = 'video calls'
my_phone[:messages] = 'send texts'
my_phone[:weather] = 'check the weather'
my_phone[:itunes] = 'listen to music'
p my_phone

# As a developer, I can return a value from my_phone by passing in the name of a key.

# p my_phone[:weather]


# As a developer, I can update two keys in my_phone.

# hash[:new_key] = hash.delete :old_key

my_phone[:apple_music] = my_phone.delete :itunes

p my_phone[:apple_music]

# As a developer, I can update two values in my_phone.

# p my_phone[:messages] = 'send imessages'
# p my_phone[:weather] = 'check when it will rain'

# As a developer, I can delete two key:value pairs from my_phone.

my_phone.delete(:messages)
my_phone.delete(:weather)

p my_phone

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.

# def my_apps hash
#     hash.map do |key, value|
#         "my phone has #{key} and it does #{value}!"
#     end
# end

# p my_apps my_phone


# Stretch Challenges
# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.

def my_apps hash
    hash.map do |key, value|
        "my phone has #{key.capitalize} and it does #{value}!"
    end
end

p my_apps my_phone