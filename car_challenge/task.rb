
# ser Stories
# Story: As a developer, I can create a Task.

# Story: As a developer, I can give a Task a title and retrieve it.

# Story: As a developer, I can give a Task a description and retrieve it.

# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.

# Story: As a developer, when I print a Task that is done, its status is shown.

# Story: As a developer, I can add all of my Tasks to a TaskList.

# Story: As a developer with a TaskList, I can print the completed items.

# Story: As a developer with a TaskList, I can print the incomplete items.

# Stretch: Due Date
# Story: As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.

# Story: As a developer with a TaskList, I can list all the not completed items that are due today.

# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.

# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.


class Task 
    # attr_accessor :title, :status
    def initialize title
         @title = title
         @status = 'inprogress'
    end

    def status
        @status = 'done'
    end

end

# living_room.clean_the_house 
# clean_the_house = Task.new clean_the_house 

# p clean_the_house

# living_room.clean_the_house 
# p task1
# class Task 
#     def initialize clean_the_house
#         @clean_the_house = 'inprogress'
#     end

#     def living_room l
#         @living_room = @living_room
#     end

# end


