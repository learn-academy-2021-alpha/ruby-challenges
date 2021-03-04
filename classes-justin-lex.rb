# Challenge: Tasklist
# Use both setter and getter methods for this challenge.
#
# class Task
#   def initialize title, description, status
#     @title = title
#     @description = description
#     @status = status
#   end

#   def get_title
#     @title
#   end

#   def set_title title
#     @title = title
#   end

#   def get_description
#     @description
#   end

#   def set_description description
#     @description = description
#   end

#   def set_status status
#     @status = status
#   end

#   def get_status
#     @status
#   end

# end

# task1 = Task.new "mowing", "mowing the lawn", "not done"
# p task1
# task1.set_title "homework"
# p task1
# p task1.get_title
# p task1.set_status "done"
# p task1
# Story: As a developer, I can create a Task.
# Story: As a developer, I can give a Task a title and retrieve it.
# Story: As a developer, I can give a Task a description and retrieve it.
# Story: As a developer, I can mark a Task done.
# Story: As a developer, when I print a Task that is done, its status is shown.
#
# Challenge: Color Palette
# Use attr_accessor for this challenge.
#
# Story: As a developer, I can create a ColorPalette.
class ColorPalette

  attr_accessor :color1, :color2, :color3

  def initialize color1,color2,color3
    @color1 = color1
    @color2 = color2
    @color3 = color3
  end

  def sentence
    "I have three colors. They are #{color1}, #{color2}, #{color3}"
  end

end

colors = ColorPalette.new "red", "blue", "green"

p colors.color1
p colors.color2
p colors.color3

colors.color1 = "brown"

p colors.color1

p colors

p colors.sentence

# Story: As a developer, I can initialize my color palette to contain 3 colors.
# Story: As a developer, I can print the values of each individual color.
# Story: As a developer, I can print a sentence that tells me all of the colors in my palette.
# Story: As a developer, I can change one or more of the colors in my palette.
