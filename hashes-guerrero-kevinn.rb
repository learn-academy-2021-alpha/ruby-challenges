# As a developer, I can create a hash called my_phone using the Ruby method .new.

my_phone = Hash.new

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.

my_phone[:instagram] = 'social media photo app'
my_phone[:google_chrome] = 'web browser app'
my_phone[:spotify] = 'music streaming app'
my_phone[:maps] = 'navigation app'
my_phone[:slack] = 'communication app'
p my_phone

# As a developer, I can return a value from my_phone by passing in the name of a key.

p my_phone[:instagram] 

# As a developer, I can update two keys in my_phone.

my_phone[:snapchat] = my_phone.delete :instagram
my_phone[:safari] = my_phone.delete :google_chrome
p my_phone

# As a developer, I can update two values in my_phone.

my_phone[:safari] = 'browser app for apple'
p my_phone

# As a developer, I can delete two key:value pairs from my_phone.

# my_phone.delete(:safari)
# my_phone.delete(:snapchat)
# p my_phone

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.

# my_phone.each do |key, value|
#   puts "#{key} is a #{value}"
# end


# Stretch Challenges
# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.

def array_caps hash 
  hash.map do |key, value|
    "#{key.capitalize} is a #{value}"
  end
end

p array_caps my_phone
    
