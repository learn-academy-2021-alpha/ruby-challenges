require 'rspec'
require_relative 'tasklist'
require_relative 'housecleaning'

describe 'when tasklist is initalized ' do
    it 'can be instantiated without error' do 
        expect { Tasklist.new }.to_not raise_error
    end

    it 'can hold tasks like housecleaning' do
        task_list = Tasklist.new
        task_list.tasks << Housecleaning.new
        expect(task_list.tasks).to be_a Array
    end

end