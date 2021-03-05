# As a developer, I can make an Animal.(done)
#
# Story: As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.(done)
#
# Story: As a developer, I can give my Animal an age of 0 upon creation.(done)
#
# Story: As a developer, I can age my Animal up one year at a time.(done)
#
# Story: As a developer, I can return my Animal's age, as well as if they're alive. Hint: Use attr_accessor as well as an initialize method.(done)
#
# Story: As a developer, I can create a Fish that inherits from Animal.(done)
#
# Story: As a developer, I can initialize all of my fish to be cold_blooded (yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that).(done)
#
# Story: As a developer, I can create a Salmon that inherits from Fish.(done)
#
# Story: As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc)(done).
#
# Story: As a developer, I can see that my Salmon is cold-blooded.(done)
#
# Story: As a developer, I can age my Salmon up.(done)
#
# Story: As a developer, I can see a message that tells me all of my Salmon's information.(done)
#
# Story: As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.(done)
#
# Story: As a developer, I can create a Mammal that inherits from Animal.(done)
#
# Story: As a developer, I can initialize all of my Mammals to be warm_blooded.(done)
#
# Story: As a developer, I can create a Bear that inherits from Mammal.(done)
#
# Story: As a developer, I can age my Bear up.(done)
#
# Story: As a developer, I can see a message that tells me all of my Bear's information.(done)
#
# Story: As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.(done)
#
# Story: As a developer, I can create a Mammal of my choice.(done)
#
# Story: As a developer, I can interact with the new Mammal via various methods.(done)
#
# Story: As a developer, I can see a message that tells me all of my new Mammal's information.(done)

# Stretch Challenges
# Story: As a developer, I can keep a collection of two of each Animal. Hint: You'll want to add your Animals into an array.(done)
#
# Story: As a developer, I can sort my collection of Animals based on age. Hint: Find out how the spaceship operator can help you with an array.(done)

# Super Stretch Challenge
# Story: As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"(done)
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.(done)

module Swimmer
  def swim
    "I can swim"
  end
end

class Animals
  attr_accessor :age, :alive

  def initialize
  @alive = true
  @age = 0
  end

  def age_counter
  @age = @age + 1
  end
end

dog = Animals.new

# dog.age_counter
# p dog.age
# p dog.alive

class Fish < Animals
  include Swimmer
  def initialize
    super()
    @blood_type = "cold blooded"
  end
end

fish = Fish.new
# p fish

class Salmon < Fish
  def initialize species
    super()
    @species = species
  end

  def ripe_age
    if @age >= 4
    @alive = false
    end
  end

  def message
    "Here is your salmon info: #{@species}, #{@blood_type}, #{@age}, #{@alive}."
  end
end

salmon = Salmon.new "atlantic"

class Mammal < Animals
  def initialize
    super()
    @blood_type = "warm blooded"
  end


end



class Bear < Mammal
  def initialize
    super()
  end

  def message
     "Here is your Bear info: #{@blood_type}, #{@age}, #{@alive}."
  end

  def ripe_age
    if @age >= 20
    @alive = false
    end
  end
end

bear = Bear.new

class Dolphin < Mammal
  include Swimmer
  def initialize
    super()
  end

  def ripe_age
      if @age >= 60
      @alive = false
      end
  end

  def message
       "Here is your Dolphin info: #{@blood_type}, #{@age}, #{@alive}."
  end
end

dolphin = Dolphin.new

animals = ['dog','cat','tiger', 'bunny', 'duck', 'pig', 'bird']
puts animals.sort! do | animal1, animal2 |
  animal1 <=> animal2
end

salmon.age_counter
salmon.ripe_age
# p salmon
p salmon.message
salmon.age_counter
salmon.age_counter
salmon.age_counter
salmon.age_counter
salmon.ripe_age
p salmon.message
20.times do
  bear.age_counter
  end
p bear.message
bear.ripe_age
p bear
60.times do
  dolphin.age_counter
  end
p dolphin.message
p dolphin.ripe_age
p dolphin
p salmon.swim
p dolphin.swim
