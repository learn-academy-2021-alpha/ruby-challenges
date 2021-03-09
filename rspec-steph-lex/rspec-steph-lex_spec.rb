# Story: As a developer, I can create a Task.
require 'rspec'
require_relative 'rspec-steph-lex'

describe Task do
  it 'does not raise an error' do
    expect{ Task.new }.to_not raise_error
  end


# Story: As a developer, I can give a Task a title and retrieve it.

  it 'can have a title' do
    my_task = Task.new
    my_task.title = 'trash'
    expect(my_task.title).to be_a String
    expect(my_task.title).to eq 'trash'
  end

# Story: As a developer, I can give a Task a description and retrieve it.

  it 'can have a description' do
    my_task = Task.new
    my_task.describe = 'take it out!'
    expect(my_task.describe).to be_a String
    expect(my_task.describe).to eq 'take it out!'

  end

# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.

  it 'can be marked done' do
    my_task = Task.new
    my_task.is_done = 'in progress'
    expect(my_task.is_done).to be_a String
    expect(my_task.is_done).to eq 'in progress'
  end

# Story: As a developer, when I print a Task that is done, its status is shown.

  it 'can show the completion status' do
    my_task = Task.new
    my_task.status = 'done'
    expect(my_task.status).to be_a String
    expect(my_task.status).to eq 'done'
  end
end

# Stretch: Due Date
# Story: As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.
#
# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
#
# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
