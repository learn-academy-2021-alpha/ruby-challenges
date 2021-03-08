class Task
    attr_accessor :title, :description, :status

    def initialize status='in progress'
        @status = status
    end
end