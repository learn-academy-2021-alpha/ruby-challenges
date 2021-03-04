# Challenge: Tasklist
# Use both setter and getter methods for this challenge.

# Story: As a developer, I can create a Task.
# Story: As a developer, I can give a Task a title and retrieve it.
# Story: As a developer, I can give a Task a description and retrieve it.
# Story: As a developer, I can mark a Task done.
class Task
    attr_accessor :item1, :item2
  
    def initialize(item1, item2)
      @item1 = item1
      @item2 = item2
    end
  end
  
  new_task = Task.new("portfolio", "not done")
  puts new_task.item1
  puts new_task.item2
  
  new_task.item2 = "Done"
  puts new_task.item1
  puts new_task.item2
  



# Story: As a developer, I can mark a Task done.

# Story: As a developer, when I print a Task that is done, its status is shown.

# Challenge: Color Palette
# Use attr_accessor for this challenge.

# Story: As a developer, I can create a ColorPalette.
# Story: As a developer, I can initialize my color palette to contain 3 colors.
# Story: As a developer, I can print the values of each individual color.
# Story: As a developer, I can print a sentence that tells me all of the colors in my palette.
# Story: As a developer, I can change one or more of the colors in my palette.