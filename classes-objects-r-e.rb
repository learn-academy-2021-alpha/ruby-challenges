# Use both setter and getter methods for this challenge.

# Story: As a developer, I can create a Task.

# class Task
#     def initialize 
#     end

# Story: As a developer, I can give a Task a title and retrieve it.

# class Task 
#     def initialize title
#     @title = title
# end

# Story: As a developer, I can give a Task a description and retrieve it.

class Task 
    def initialize title, description,done
    @title = title
    @description  =  description
    @done = done
end

def description
    @description

end
def done
    @done
end
end

cleaning= Task.new "cleaning", "clean the room","task is done"

p cleaning

# Story: As a developer, I can mark a Task done.
# Story: As a developer, when I print a Task that is done, its status is shown.

# Challenge: Color Palette
# Use attr_accessor for this challenge.

# Story: As a developer, I can create a ColorPalette.
# Story: As a developer, I can initialize my color palette to contain 3 colors.
# Story: As a developer, I can print the values of each individual color.
# Story: As a developer, I can print a sentence that tells me all of the colors in my palette.
# Story: As a developer, I can change one or more of the colors in my palette.