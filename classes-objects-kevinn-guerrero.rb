# Use both setter and getter methods for this challenge.

# Story: As a developer, I can create a Task.
class Task
    def initialize title
    @title = title
    @description = ""
    @done = false
    end 
# Story: As a developer, I can give a Task a title and retrieve it.
    def get_title
        @title
    end
# Story: As a developer, I can give a Task a description and retrieve it.
    def give_description description
        @description = description
    end

    def get_description
        @description
    end
# Story: As a developer, I can mark a Task done.
    def is_done 
        @done = true
        p "#{@title} is done"
    end
end

homework = Task.new "math homework"
# p homework.get_title
# p homework
# p homework.give_description "fractions"
# p homework
#  homework.is_done


# Story: As a developer, when I print a Task that is done, its status is shown.


# Use attr_accessor for this challenge.

# Story: As a developer, I can create a ColorPalette.

class ColorPalette
    attr_accessor :palette
    def initialize 
        # Story: As a developer, I can initialize my color palette to contain 3 colors.
        @palette = []
    end

    # Story: As a developer, I can print the values of each individual color.
    def print_color 
        @palette.map do |value|
            puts "You have chosen #{value}"
        end   
        # Story: As a developer, I can print a sentence that tells me all of the colors in my palette.
    end


end

colors = ColorPalette.new 
colors.palette << 'blue'
colors.palette << 'red'
colors.palette << 'yellow'
p colors
colors.palette[0] = 'green'
colors.print_color
p colors


# Story: As a developer, I can change one or more of the colors in my palette.