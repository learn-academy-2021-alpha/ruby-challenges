require 'rspec'
require_relative 'task'

# For each story:
# Copy the story into your RSpec file as a comment
# Write the test(s) that class/method tests must pass
# Then run the test(s) and see that they fail
# Then implement the class/method, with comments, so that it passes the tests one at a time

# User Stories
# Story: As a developer, I can create a Task.
describe 'Task' do
    it 'has to be real' do 
        expect { Task.new }.to_not raise_error
    end

    # Story: As a developer, I can give a Task a title and retrieve it.
    it 'has a title' do
        my_task = Task.new
        my_task.title = 'laundry'
        expect(my_task.title).to be_a String
        expect(my_task.title).to eq 'laundry'
    end

    # Story: As a developer, I can give a Task a description and retrieve it.
    it 'has a description' do
        my_task = Task.new
        my_task.description = 'wash clothes'
        expect(my_task.description).to be_a String
        expect(my_task.description).to eq 'wash clothes'
    end

    # Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
    it 'has a status or a defualt status of in progress' do 
        my_task = Task.new
        expect(my_task.status).to be_a String
        expect(my_task.status).to eq 'in progress'
    end

    # Story: As a developer, when I print a Task that is done, its status is shown.
    it 'shows a status of done if the printed Task is complete' do
        my_task = Task.new
        my_task.title = 'laundry'
        my_task.description = 'wash clothes'
        my_task.status = 'done'
        expect(my_task.get_info).to be_a String
        expect(my_task.get_info).to eq 'Title: laundry, Description: wash clothes, Status: done'
    end
end