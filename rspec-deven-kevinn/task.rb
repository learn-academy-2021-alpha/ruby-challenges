class Task
  attr_accessor :task, :description, :progress

  def initialize task=''
    @task = task
    @task = ''
    @progress = "in progress"
  end
  def mark_done
    @progress = "done"
  end
  def get_status 
    p "#{@progress}"
  end

end

# p my_list = Tasklist.new 
# my_list.mark_done
# my_list.get_status
# p my_list.task = 'Do laundry'
# p my_list.task