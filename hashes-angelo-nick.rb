
my_apps = Hash.new

my_apps = {music: 'apple music', fitness: 'peloton', games: 'rollercoaster tycoon', social_media:'facebook', maps: 'google maps'}

p my_apps[:music]

# my_apps[:social_media] = ['instagram', 'snapchat']

# p my_apps

my_apps[:exercise] = my_apps.delete :fitness

# p my_apps[:exercise][0,7]

# my_apps.map do |key, value|
#   p "open #{key} to play #{value}"
# end
# output: "My music app is Apple Music"

def my_phone hash
  hash.map do |key, value|
    app_name = key.to_s.split("_").map do |word|
      word.capitalize
    end
      "#{app_name.join(' ')} #{value}"
    end
end


new_object = {app_name: 'app info', apple_music: 'listen to over 70 million songs'}




p my_phone new_object

# puts "hello this is a test please enter you name"
# gets.chomp
