# Summary
# Use < to create an inheritance relationship between a parent and child class.
# The super() method is used in the child class. It calls the method of the same name in the parent class. After invoking super(), the child class will have access to the instance variables within that method.
# Instance variables are not inherited since instance variables are local to a specific instance of a class. Via super(), you are allowed to borrow instance variables from the parent.
# Challenge: Animal Kingdom
# Story: As a developer, I can make an Animal.

class Animal
    attr_accessor :type, :is_alive, :age
    def  initialize type
        @type =type
        @is_alive = true
        @age = 0
    end

    def age_grower 
        @age = @age +1
        if @age >= 4
            @is_alive = false
            "died and lived a happy life"
        end
            
    end 

    def bear_grower 
        @age = @age +1
        if @age >= 7
            @is_alive = false
            " bear died and lived a happy life"
        end
            
    end 


end
# monkey =Animal.new "monkey"
# p monkey

class Fish < Animal
    def initialize(type,species)
        super(type,age)
        @cold_blooded = true
        @species = species
    end
  

  def fish_info
    puts "This type is a #@species fish. Its is #@cold_blooded that is coldblooded and its #@age old !"
  end

end

  
# salmon =Fish.new "salmon", "atlantic"
# puts salmon.age_grower
# p salmon.age
# puts salmon.age_grower
# p salmon.age

#   p salmon.is_alive

class Mammal < Animal
    def initialize(type,species)
        super(type)
        @warm_blooded = true
        @species = species
    end
    def bear_info
        puts "This type is a #@species bear. Its is #@warm_blooded that is warmblooded and its #@age old !"
      end
    
end

bear = Mammal.new "bear", "grizzly"
p bear
bear.bear_grower
bear.bear_grower
bear.bear_grower
bear.bear_grower
bear.bear_grower
bear.bear_grower
bear.bear_grower
p bear.age 
p bear.is_alive

p bear.bear_info



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

# Stretch Challenges
# Story: As a developer, I can keep a collection of two of each Animal. Hint: You'll want to add your Animals into an array.

# Story: As a developer, I can sort my collection of Animals based on age. Hint: Find out how the spaceship operator can help you with an array.

# Super Stretch Challenge
# Story: As a developer, I can utilize a Ruby module to help DRY up my code. I can create a swim method inside of my module that will apply to Animals who can swim. This method should return "I can swim!"
# Hint: Look into module mix ins. Since not all animals can swim, only certain Animals will have access to this module.

