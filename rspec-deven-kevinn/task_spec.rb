require 'rspec'
require_relative 'task' 

# Story: As a developer, I can create a Task.
describe Task do
  it 'does not raise an error when initialized' do
    expect{ Task.new }.to_not raise_error
  end
  
  # Story: As a developer, I can give a Task a title and retrieve it.
  it 'can give a task and retrieve it' do
    my_list = Task.new 
    my_list.task = 'Do laundry'
    expect(my_list.task).to eq 'Do laundry'
    expect(my_list.task).to be_a String
  end
  it 'can give a description and retrieve it' do
    my_list = Task.new
    my_list.description = "whites first"
    expect(my_list.description).to eq 'whites first'
    expect(my_list.description).to be_a String
  end
  it "can change the task's progress" do
    my_list = Task.new
    expect{ my_list.mark_done }.to change { my_list.progress }.from("in progress").to ("done")
  end
  it 'shows a status when a task is done' do
    my_list = Task.new
    my_list.mark_done
    my_list.get_status
    expect( my_list.get_status).to eq "done"
    expect(my_list.get_status).to be_a String
  end
end




# Challenge: Tasklist with TDD
# For each story:
# Copy the story into your RSpec file as a comment
# Write the test(s) that class/method tests must pass
# Then run the test(s) and see that they fail
# Then implement the class/method, with comments, so that it passes the tests one at a time
# User Stories


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