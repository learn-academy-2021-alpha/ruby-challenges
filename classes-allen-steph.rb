# Story: As a developer, I can create a Task.
class Task
# Story: As a developer, I can give a Task a title and retrieve it.
    def initialize title, description
        @title = title
        @description = description
        @done = 'Not Done'
    end

    def get_title
        @title
    end
# Story: As a developer, I can give a Task a description and retrieve it.
    def get_description
        @description
    end
# Story: As a developer, I can mark a Task done.
    def get_done
        @done
    end

    def done
        @done = 'Done'
    end
# Story: As a developer, when I print a Task that is done, its status is shown.
end

# Create new task object from Task class
task1 = Task.new('Trash', 'Put trash in bin')
# Print title to the terminal
p task1.get_title
# Print description to the terminal
p task1.get_description
# Print initial "done" status
p task1.get_done
# Mark task as done
task1.done
# Print final "done" status
p task1.get_done
p task1

# Color Palette------------------------
# Story: As a developer, I can create a ColorPalette.
class ColorPalette
# Story: As a developer, I can initialize my color palette to contain 3 colors.
    attr_accessor :color1, :color2, :color3
# Story: As a developer, I can print the values of each individual color.
    def initialize (color1, color2, color3)
        @color1 = color1
        @color2 = color2
        @color3 = color3
    end

    def sentence
        puts "The colors in your palette are #@color1, #@color2, #@color3"
    end
# Story: As a developer, I can print a sentence that tells me all of the colors in my palette.
# Story: As a developer, I can change one or more of the colors in my palette.
end

object = ColorPalette.new('red', 'green', 'blue')
p object.color1
p object.color2
p object.color3

object.sentence

object.color1 = 'magenta'
p object.color1