my_phone = Hash.new

my_phone = {spotify:"Music App", app_store:"App Library", gratitude:"gratitude app", email:"holds emails", instagram:"social media app"}

p my_phone[:spotify]

my_phone[:maps] = "directions"
my_phone[:camera] = "pictures"

my_phone[:maps] = "Directions"
my_phone[:gratitude] = "Gratitude"

my_phone.delete(:maps)

[:spotify, :app_store].each { |k| my_phone.delete(k) }
# way of deleting multiple key/values
p my_phone


my_phone.each do |key, value|
    puts "#{key} is an app for #{value}!"
end

def cap hash
    hash.map do |key, value|
        p "#{key.capitalize} is an app for #{value}."
    end
end
cap my_phone