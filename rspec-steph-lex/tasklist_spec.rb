require 'rspec'
require_relative 'rspec-steph-lex'
require_relative 'tasklist'

# Story: As a developer, I can add all of my Tasks to a TaskList.

describe 'When Tasklist is initialized' do
  it 'can be instantiated without error'
    expect{ Tasklist.new }.to_not raise_error
  end
  it 'can contain tasks' do
    my_tasklist = Tasklist.new
    my_tasklist.tasks << Task.new
    expect(my_tasklist.tasks).to be_a Array
    expect(my_tasklist.tasks.length).to eq 1
    end

# Story: As a developer with a TaskList, I can print the completed items.

  it 'can print the completed items' do
    my_tasklist = Tasklist.new
    my_tasklist.tasks << Task.new
    my_tasklist.completed = my_task
  end

# Story: As a developer with a TaskList, I can print the incomplete items.
#
end
