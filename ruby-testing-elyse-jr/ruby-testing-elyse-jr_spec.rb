require 'rspec'
require_relative 'ruby-testing-elyse-jr'


# Challenge: Tasklist with TDD
# For each story:
# Copy the story into your RSpec file as a comment
# Write the test(s) that class/method tests must pass
# Then run the test(s) and see that they fail
# Then implement the class/method, with comments, so that it passes the tests one at a time
# User Stories
# Story: As a developer, I can create a Task.

describe 'When a Task is instantiated' do
  it 'does not raise an error' do
    expect {Task.new}.to_not raise_error
  end
# Story: As a developer, I can give a Task a title and retrieve it.
  it 'Task has a title' do
    my_task = Task.new
    my_task.title = 'Homework'
    expect(my_task.title).to be_a String
    expect(my_task.title).to eq 'Homework'
  end
# Story: As a developer, I can give a Task a description and retrieve it.
  it 'task has a description' do
    my_task = Task.new
    my_task.description = 'code challenges'
    expect(my_task.description).to be_a String
    expect(my_task.description).to eq 'code challenges'
  end
# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
#
  it 'task is marked as done' do
    my_task = Task.new
    my_task.change_progress
    expect(my_task.change_progress).to eq 'done'
    expect(my_task.change_progress).to be_a String
  end
# Story: As a developer, when I print a Task that is done, its status is shown.
#
it 'task is marked as done' do
  my_task = Task.new 
 expect{my_task.change_progress}.to change{my_task.progress}.from("in progress").to('done')

  end
end


# Story: As a developer, I can add all of my Tasks to a TaskList.
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
