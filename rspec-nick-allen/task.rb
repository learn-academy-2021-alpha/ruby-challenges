class Task
    attr_accessor :title, :description, :status

    def initialize status='in progress'
        @status = status
    end

    def get_info
        "Title: #@title, Description: #@description, Status: #@status"
    end
end