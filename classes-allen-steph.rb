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