# Challenges: Practice with Hashes
# As a developer, I can create a hash called my_phone using the Ruby method .new.
my_phone = Hash.new 
# p my_phone


# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:instagram] = "pictures of people"
my_phone[:facebook] = "story feeds and comunication with friends"
my_phone[:pintrest] = "pictures of things I want to do or see"
my_phone[:amazon] = "things I want to buy"
my_phone[:netflix] = "movies and shows I want to waych"
my_phone[:forest] = 'focus app'
my_phone[:memrise] = 'language app'
my_phone[:chrome] = 'browser'
my_phone[:iCal] = 'planning app'
my_phone[:waterlogged] ='water reminder'


# p my_phone

# As a developer, I can return a value from my_phone by passing in the name of a key.

# p my_phone[:pintrest]



# As a developer, I can update two keys in my_phone.

my_phone[:myspace] = my_phone.delete :facebook

# p my_phone

# As a developer, I can update two values in my_phone.

my_phone[:myspace] = 'where is Myspace Tom?'
my_phone[:Chrome] = 'we really know what incognito is for'

# p my_phone

# As a developer, I can delete two key:value pairs from my_phone.

my_phone.delete :facebook
my_phone.delete :waterlogged

# p my_phone


# As a developer, I can use an enumerable method to return information about all of my_phone's applications.

# my_phone.each do |key, value|
#     p value
# end

# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.

def apps_capped array
    array.map do |key, value|
        puts "#{key.capitalize} is an app that's good for #{value.capitalize}"
    end
end 

apps_capped my_phone