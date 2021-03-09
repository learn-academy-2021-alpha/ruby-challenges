class TaskList
  attr_accessor :tasks

  def initialize 
    @tasks = []
  end

  def completed
    @tasks.filter do |value| 
      value.is_done == 'done'
    end
  end

  def not_complete
    @tasks.filter do |value| 
      value.is_done == 'in progress'
    end
  end

# Story: As a developer, I can add all of my Tasks to a TaskList.
#
# Story: As a developer with a TaskList, I can print the completed items.
#
# Story: As a developer with a TaskList, I can print the incomplete items.


# Stretch: Due Date
# Story: As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.
#
# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
# 
# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
end
