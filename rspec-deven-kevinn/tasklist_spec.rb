require 'rspec'
require_relative 'tasklist'
require_relative 'task'

describe "When tasklist is initialized" do
  it 'can instantiated without error' do
    expect{Tasklist.new}.to_not raise_error
  end
  it 'can hold a list of tasks' do
    my_list = Task.new
    my_task.task
    #not done yet 
  end

end