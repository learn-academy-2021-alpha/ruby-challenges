# Challenge: Animal Kingdom
# Story: As a developer, I can make an Animal.
# Story: As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.
# Story: As a developer, I can give my Animal an age of 0 upon creation.
# Story: As a developer, I can age my Animal up one year at a time.
# Story: As a developer, I can return my Animal's age, as well as if they're alive. Hint: Use attr_accessor as well as an initialize method.
# Story: As a developer, I can create a Mammal that inherits from Animal.


class Animal 
    attr_accessor :alive, :age

    def initialize (alive, age)
        @alive = alive
        @age = age
    end


    def age_animal 
        @age += 1
    end

    def get_info
        puts "My animal is #{alive} #{age}"
    end

end


animal1 = Animal.new("true", 0)
# p animal1.age_animal
# p animal1.age_animal

# Story: As a developer, I can create a Fish that inherits from Animal.
# Story: As a developer, I can initialize all of my fish to be cold_blooded (yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that).
# Story: As a developer, I can create a Salmon that inherits from Fish.
# Story: As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).
# Story: As a developer, I can see that my Salmon is cold-blooded.
# Story: As a developer, I can age my Salmon up.

# Story: As a developer, I can see a message that tells me all of my Salmon's information.
# Story: As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.

class Fish < Animal
    attr_accessor :cold_blooded, :species

    def initialize(alive, age, cold_blooded, species)
        super(alive, age)
        @cold_blooded = "cold_blooded"
        @species = species
    end
    def get_info
        super
        puts "My salmon is #{cold_blooded} #{species}"
    end

    def old_age
        if @age > 3
        @alive = "dead"
        end
    end
end
# Story: As a developer, I can initialize all of my Mammals to be warm_blooded.
# Story: As a developer, I can create a Bear that inherits from Mammal.
# Story: As a developer, I can create a Bear that inherits from Mammal.
# Story: As a developer, I can age my Bear up.
# Story: As a developer, I can see a message that tells me all of my Bear's information.
# Story: As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.

class Mammal < Animal

    attr_accessor :warm_blooded

    def initialize (alive, age, warm_blooded)
        super(alive, age)
        @warm_blooded = "warm blooded"
    end

    def get_info
        super
        puts "My mammal is #{warm_blooded}"
    end

    def age_mammal
        if @age > 19
        @alive = "died peacefully"
        end
    end
end


salmon = Fish.new("alive", 3, "cold_blooded", "Atlantic")
# # p salmon
# # p salmon.cold_blooded
# p salmon.age_animal
# p salmon.age_animal
# p salmon.age_animal
# p salmon.age_animal
# p salmon.old_age
# p salmon.get_info

bear = Mammal.new("alive", 19, "warm blooded")
# bear.age_animal
# bear.age_mammal
# p bear.get_info

# Story: As a developer, I can create a Mammal of my choice.
# Story: As a developer, I can interact with the new Mammal via various methods.
# Story: As a developer, I can see a message that tells me all of my new Mammal's information.

class Otter < Mammal
    attr_accessor :playful, :tricks

    def initialize (alive, age, warm_blooded, playful, tricks)
        super(alive, age, warm_blooded)
        @playful = playful
        @tricks = tricks
    end

    def get_info
        super
        puts "My otter is #{playful} and does #{tricks}"
    end

    def age_otter
        if @age > 19
        @alive = "died peacefully"
        end
    end
end

river_rat = Otter.new("alive", 15, "warm blooded", "playful", "flips")
# p river_rat.get_info


# Stretch Challenges
# Story: As a developer, I can keep a collection of two of each Animal. Hint: You'll want to add your Animals into an array.
    #want collection of two salmons, and two bears
   
#    salmon.collection

#     salmon.collection << "salmon"
#     salmon.collection << "salmon"
#     bear.collection << "bear"
#     bear.collection << "bear"

#    animal1.collection = salmon.collection + bear.collection

    collection = []

    collection << salmon.age
    collection << salmon.age
    collection << bear.age
    collection << bear.age
    collection << river_rat.age
    collection << river_rat.age

    p collection

    
# Story: As a developer, I can sort my collection of Animals based on age. Hint: Find out how the spaceship operator can help you with an array.

# Super Stretch Challenge
# Story: As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.