class Task
  attr_accessor :title, :description, :progress
  def initialize progress="in progress"
    @progress = progress
  end

  def find_progress
    @progress = progress
  end

  def change_progress 
    @progress = "done"
  end
  
end
