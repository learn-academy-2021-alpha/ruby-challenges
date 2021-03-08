class Housecleaning
  attr_accessor :title, :description, :in_progress

  def initialize in_progress='in progress'
    @in_progress = in_progress
  end

end
