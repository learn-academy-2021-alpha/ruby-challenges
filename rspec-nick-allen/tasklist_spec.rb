require 'rspec'
require_relative 'task'
require_relative 'tasklist'

# Story: As a developer, I can add all of my Tasks to a TaskList.
describe Tasklist do
    it 'has to be real' do
        expect{ Tasklist.new }.to_not raise_error
    end

    it 'can hold a lists of tasks' do
        my_task = Task.new
        my_task.title = 'laundry'
        my_task.description = 'wash clothes'
        my_task.status = 'done'
        my_tasklist = Tasklist.new
        my_tasklist.tasks << my_task
        expect( my_tasklist.tasks ).to be_a Array
        expect( my_tasklist.tasks.length ).to eq 1
    end
    
    # Story: As a developer with a TaskList, I can print the completed items.
    it 'can print list of completed items' do
        my_task = Task.new
        my_task.title = 'laundry'
        my_task.description = 'wash clothes'
        my_task.status = 'done'
        my_task2 = Task.new
        my_task2.title = 'dishes'
        my_task2.description = 'wash dishes'
        my_task2.status = 'done'
        my_tasklist = Tasklist.new
        my_tasklist.tasks << my_task
        my_tasklist.tasks << my_task2
        expect{ my_tasklist.check_status 'done' }.to change{ my_tasklist.done.length }.from(0).to(2)
    end

    # Story: As a developer with a TaskList, I can print the incomplete items.
    it 'can print list of incompleted items' do
        my_task = Task.new
        my_task.title = 'laundry'
        my_task.description = 'wash clothes'
        my_task2 = Task.new
        my_task2.title = 'dishes'
        my_task2.description = 'wash dishes'
        my_tasklist = Tasklist.new
        my_tasklist.tasks << my_task
        my_tasklist.tasks << my_task2
        expect{ my_tasklist.check_status 'in progress' }.to change{ my_tasklist.in_progress.length }.from(0).to(2)
    end
end

