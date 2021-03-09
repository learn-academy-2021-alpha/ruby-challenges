# Story: As a developer, I can create a Task.(done)
#
# Story: As a developer, I can give a Task a title and retrieve it.(done)
#
# Story: As a developer, I can give a Task a description and retrieve it.(done)
#
# Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.(done)
#
# Story: As a developer, when I print a Task that is done, its status is shown. (done)
#
# Story: As a developer, I can add all of my Tasks to a TaskList.
#
# Story: As a developer with a TaskList, I can print the completed items.
#
# Story: As a developer with a TaskList, I can print the incomplete items.

require 'rspec'
require_relative 'housecleaning'

describe 'when Housecleaning is initialized' do
  it 'can be instantiated without error' do
    expect { Housecleaning.new }.to_not raise_error
  end

  it 'can have a title' do
    my_house = Housecleaning.new
    my_house.title = 'sweeping'
    expect(my_house.title).to be_a String
    expect(my_house.title).to eq 'sweeping'
  end

  it 'can have a description' do
    my_house = Housecleaning.new
    my_house.description = 'services'
    expect(my_house.description).to be_a String
    expect(my_house.description).to eq 'services'
  end

  it 'has an initial value of in progress' do
    my_house = Housecleaning.new
    expect(my_house.in_progress).to eq 'in progress'
    expect(my_house.in_progress).to be_a String
  end

  it 'marks task is done' do
    my_house = Housecleaning.new
    expect(my_house.done).to eq 'done'
    expect(my_house.done).to be_a String
  end

end
