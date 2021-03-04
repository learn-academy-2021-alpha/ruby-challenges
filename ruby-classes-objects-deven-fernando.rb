# Challenge: Tasklist
# Use both setter and getter methods for this challenge.

# Story: As a developer, I can create a Task.
# Story: As a developer, I can give a Task a title and retrieve it.
# Story: As a developer, I can give a Task a description and retrieve it.
# Story: As a developer, I can mark a Task done.
class Task
    def set_task_list description, done
        @description = description
        @done =  done
    end

    def get_done
        @done
    end

    def get_task_list
        @description
    end
end


task_list = Task.new 

task_list.set_task_list('portfolio', 'done')

p task_list


# Story: As a developer, I can mark a Task done.
# Story: As a developer, when I print a Task that is done, its status is shown.

# Challenge: Color Palette
# Use attr_accessor for this challenge.

# Story: As a developer, I can create a ColorPalette.
# Story: As a developer, I can initialize my color palette to contain 3 colors.
# Story: As a developer, I can print the values of each individual color.
# Story: As a developer, I can print a sentence that tells me all of the colors in my palette.
# Story: As a developer, I can change one or more of the colors in my palette.