# Challenge: Animal Kingdom
# Story: As a developer, I can make an Animal. -done
#
# Story: As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true. - done
#
# Story: As a developer, I can give my Animal an age of 0 upon creation. - done
#
# Story: As a developer, I can age my Animal up one year at a time. - done


# Story: As a developer, I can return my Animal's age, as well as if they're alive. Hint: Use attr_accessor as well as an initialize method. - done
#
# Story: As a developer, I can create a Fish that inherits from Animal.
#

class Animal
  attr_accessor :alive, :age
  def initialize(alive, age)
    @alive = 'alive'
    @age = 0
  end

  def age_up
    @age += 1
  end

  def change_alive
    @alive = 'peacefully dead'
  end
end


class Fish < Animal
  attr_accessor :cold_blooded, :type
  def initialize(alive, age, type)
    super(alive, age)
    @cold_blooded = true
    @type = type
  end

  def get_info
    puts "My salmon is #{@alive}, is age #{@age} and is #{@type}"
  end

  def age_four 
    if @age == 4 
      @alive= 'dead'
    else
      @alive = 'alive'
    end
  end
end

salmon = Fish.new(true, 0, 'Atlantic')
p salmon
salmon.age_up
p salmon.age
salmon.get_info
p salmon.age_up
p salmon.age_up
p salmon.age_up
p salmon.age_four
p salmon


# animal = Animal.new
# p animal.age
# p animal.age_up
# p animal



# Story: As a developer, I can initialize all of my fish to be cold_blooded (yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that).
#
# Story: As a developer, I can create a Salmon that inherits from Fish.
#
# Story: As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).
#
# Story: As a developer, I can see that my Salmon is cold-blooded.
#
# Story: As a developer, I can age my Salmon up.
#
# Story: As a developer, I can see a message that tells me all of my Salmon's information.
#
# Story: As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.
#
# Story: As a developer, I can create a Mammal that inherits from Animal.
#
# Story: As a developer, I can initialize all of my Mammals to be warm_blooded.
#
# Story: As a developer, I can create a Bear that inherits from Mammal.
#
# Story: As a developer, I can age my Bear up.
#
# Story: As a developer, I can see a message that tells me all of my Bear's information.
#
# Story: As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.
#
# Story: As a developer, I can create a Mammal of my choice.
#
# Story: As a developer, I can interact with the new Mammal via various methods.
#
# Story: As a developer, I can see a message that tells me all of my new Mammal's information.
#
# Stretch Challenges
# Story: As a developer, I can keep a collection of two of each Animal. Hint: You'll want to add your Animals into an array.
#
# Story: As a developer, I can sort my collection of Animals based on age. Hint: Find out how the spaceship operator can help you with an array.
#
# Super Stretch Challenge
# Story: As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.
