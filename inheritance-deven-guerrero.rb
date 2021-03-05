# Story: As a developer, I can make an Animal.
class Animal 
    attr_accessor :alive, :age

    def initialize age
        @alive = true
        @age = age
    end

    def give_age
        @age += 1
    end

    def get_info
        puts "alive =#{@alive}\nage = #{@age}\n"
    end
end

class Fish < Animal
    attr_accessor :cold_blooded

    def initialize(age)
        super(age)
        @cold_blooded = "cold blooded"
    end

    def get_info
        super
            puts "blood type = #{@cold_blooded}"
    end
end

class Salmon < Fish
    attr_accessor :species

    def initialize(age, species)
        super(age)
        @species = species
    end

    while @age <= 4
        @alive = false
    end
    def get_info
        super
            puts "species = #{species}"
    end
end

salmon = Salmon.new 0, "Atlantic"
# salmon.get_info
salmon.give_age
salmon.give_age
salmon.give_age
salmon.give_age
salmon.get_info









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