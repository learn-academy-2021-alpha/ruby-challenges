require 'rspec'
require_relative 'task'

describe 'Task' do 

    it 'has to be real' do
    expect{ Task.new }.to_not raise_error
    end

    it 'has a title' do 
        title = Task.new 
        title = String
        expect(title.title).to be_a String
        expect(title.title).to eq 'name'
    end

    
    # it 'can change from inprogress to finished' do 
    #     living_room = Task.new
    #     living_room.clean_the_house = 'inprogress'
    #     expect(living_room.clean_the_house).to be_a String
    #     expect(living_room.clean_the_house).to eq 'done'
    # end
end 