# Story: As a developer, I can make an Animal.
# Story: As a developer, upon initialization, I can give my Animal a status of alive, which will be set to true.
# Story: As a developer, I can give my Animal an age of 0 upon creation.
# Story: As a developer, I can age my Animal up one year at a time.
# Story: As a developer, I can return my Animal's age, as well as if they're alive. Hint: Use attr_accessor as well as an initialize method.
# Story: As a developer, I can create a Fish that inherits from Animal.
# Story: As a developer, I can initialize all of my fish to be cold_blooded (yes, there is one fish who is technically fully warm-blooded but we aren't going to talk about that).
# Story: As a developer, I can create a Salmon that inherits from Fish.
# Story: As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).
# Story: As a developer, I can see that my Salmon is cold-blooded.
# Story: As a developer, I can age my Salmon up.
# Story: As a developer, I can see a message that tells me all of my Salmon's information.
# Story: As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.
# Story: As a developer, I can create a Mammal that inherits from Animal.
# Story: As a developer, I can initialize all of my Mammals to be warm_blooded.
# Story: As a developer, I can create a Bear that inherits from Mammal.
# Story: As a developer, I can age my Bear up.
# Story: As a developer, I can see a message that tells me all of my Bear's information.
# Story: As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life. Hint: You will need a method that changes the status of alive in the initialize method of Animal.
# Story: As a developer, I can create a Mammal of my choice.
# Story: As a developer, I can interact with the new Mammal via various methods.
# Story: As a developer, I can see a message that tells me all of my new Mammal's information.
# Super Stretch Challenge
# Story: As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.


module Noahs

    def swim 
        "I can swim!"
    end
end

class Animal
    attr_accessor :livin_or_dead , :age 
    def initialize(livin_or_dead, age)
        @livin_or_dead = true
        @age = age
    end

    def age_up
        @age = @age + 1
    end
end

class Mammal < Animal
    def initialize(livin_or_dead, age)
        super(livin_or_dead, age)
        @warm_blooded = true
    end
end

class Bear < Mammal
    attr_accessor :warm_blooded
    def initialize(livin_or_dead, age)
        super(livin_or_dead, age)
    end
    def info
        " It's #{@livin_or_dead} this Bear is Alive! It's #{@age} this years old!"
    end
    def old_age 
        if @age <= 20
            @livin_or_dead = true
        elsif @age >= 21
            @livin_or_dead = false
        end
    end
end

class Tiger < Mammal
    attr_accessor :stripes
    def initialize(livin_or_dead, age, stripes)
        super(livin_or_dead, age)
        @stripes = stripes
    end
    def info
        " It's #{@livin_or_dead} this Tiger lives in the jungle! It's #{@age} this years old and has this color #{@stripes} stripes!"
    end

    def random_stripe
        colors = ["red", "blue", "pink", "forest green", "yellow"]
        @stripes = colors.sample
    end
end

class Fish < Animal 
    include Noahs
    def initialize(livin_or_dead, age)
        super(livin_or_dead, age)
        @cold_blooded= true
    end
end

class Salmon < Fish
    attr_accessor :cold_blooded
    def initialize(livin_or_dead, age, species)
        super(livin_or_dead, age)
        @species = species        
    end
    def info
        " It's #{@livin_or_dead} this Salmon is Alive! It's #{@age} this years old and is an #{@species} species!"
    end

    def old_age 
        if @age <= 4
            @livin_or_dead = true
        elsif @age >= 5
            @livin_or_dead = false
        end
    end
end 


# p tiger = Animal.new(true, 0)

# tiger.age_up

# p tiger.age

salmon = Fish.new(true, 1)

p salmon.swim

# salmon1 = Salmon.new(true, 1, "Atlantic")


# salmon1.age_up
# salmon1.age_up
# salmon1.age_up
# salmon1.age_up
# salmon1.old_age
# p salmon1.info
# salmon1.age_up
# salmon1.old_age
# p salmon1.info

# bear1 = Bear.new(true, 18)
# p bear1

# bear1.age_up
# bear1.age_up
# bear1.old_age
# p bear1.info
# bear1.age_up
# bear1.old_age
# p bear1.info

tiger1 = Tiger.new(true, 5, "Black")
tiger1.random_stripe

# p tiger1.info


# Stretch Challenges
# Story: As a developer, I can keep a collection of two of each Animal. Hint: You'll want to add your Animals into an array.
# Story: As a developer, I can sort my collection of Animals based on age. Hint: Find out how the spaceship operator can help you with an array.

 animal_array = [Tiger.new(true, 2, "Black"), Tiger.new(true, 6, "Yellow"), Bear.new(true, 3),Bear.new(true, 10), Salmon.new(true, 8, "Alaskin"),Salmon.new(true, 5, "Sokeye")] 

#  newArray = animal_array.map do |value|
#     value.age 
#         end
#  p newArray.sort

# p animal_array.sort_by(&:age)


