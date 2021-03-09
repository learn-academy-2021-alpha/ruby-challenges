class Housecleaning
  attr_accessor :title, :description, :in_progress, :done, 

  def initialize in_progress='in progress', done= 'done'
    @in_progress = in_progress
    @done = done
  end

  def task_complete amount
    if @task_complete = true
    else
      @task_incomplete = false
    end
  end
    
end


