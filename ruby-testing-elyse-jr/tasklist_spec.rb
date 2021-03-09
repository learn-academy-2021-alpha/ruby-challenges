require 'rspec'
require_relative 'tasklist'

# Story: As a developer, I can add all of my Tasks to a TaskList.

describe 'Tasklist' do
  it 'does not raise an error' do
    expect {Tasklist.new}.to_not raise_error
  end
end
#
# Story: As a developer with a TaskList, I can print the completed items.
#
# Story: As a developer with a TaskList, I can print the incomplete items.
#
# Stretch: Due Date
# Story: As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.
#
# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
#
# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
