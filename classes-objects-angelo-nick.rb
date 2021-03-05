# Challenge: Tasklist
# Use both setter and getter methods for this challenge.

# DONE -  Story: As a developer, I can create a Task.
# DONE - Story: As a developer, I can give a Task a title and retrieve it.
# DONE - Story: As a developer, I can give a Task a description and retrieve it.
# DONE - Story: As a developer, I can mark a Task done.
# Story: As a developer, when I print a Task that is done, its status is shown.

# class Task
#     def initialize title, status
#     @title = title
#     @status = status
#     end
#
#     def get_title title
#         @title = title
#     end
#
#     def status
#         @status
#     end
# end
# clean_room = Task.new "clean room", []
# # p clean_room.get_title
# # clean_room.get_title << "done"
# # p clean_room
# clean_room.status << "done"
# p clean_room.status
# clean_room.get_title "take out trash"
# p clean_room.get_title




# Challenge: Color Palette
# Use attr_accessor for this challenge.

# Story: As a developer, I can create a ColorPalette.(done)
# Story: As a developer, I can initialize my color palette to contain 3 colors.(done)
# Story: As a developer, I can print the values of each individual color.(done)
# Story: As a developer, I can print a sentence that tells me all of the colors in my palette.
# Story: As a developer, I can change one or more of the colors in my palette.

class ColorPalette
  attr_accessor :color1, :color2, :color3

  def initialize color1, color2, color3
    @color1 = color1
    @color2 = color2
    @color3 = color3
  end

  def sentence
  "hi there, here are your colors: #{@color1}, #{@color2}, #{@color3}"
  end

  def change_color
    @color1
  end

end
colors = ColorPalette.new "red", "green", "blue"
p colors.sentence
# colors.sentence << "terquoist"
colors.color1 = "terquoist"
p colors
colors.color2 = "purple"
p colors.sentence
