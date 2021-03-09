class Tasklist 
  attr_accessor :task

  def initialize task=''
    @task = task
  end

  def give_task 
    @task = task
  end
end

p my_list = Tasklist.new 
p my_list.task = 'Do laundry'
p my_list.task