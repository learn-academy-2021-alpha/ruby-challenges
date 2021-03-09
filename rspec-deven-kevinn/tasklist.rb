class Tasklist 
  attr_accessor :task, :description, :progress

  def initialize task=''
    @task = task
    @task = ''
    @progress = "in progress"
  end
  def mark_done
    @progress = "done"
  end
end

p my_list = Tasklist.new 
p my_list.task = 'Do laundry'
p my_list.task