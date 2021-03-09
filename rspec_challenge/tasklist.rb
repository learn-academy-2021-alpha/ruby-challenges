class Tasklist
    attr_accessor :tasks, 
    # :task_list

    def initialize tasks
        @tasks = []
        @task_list = task_list
    end

    # def task_complete 
    #     @tasks = 'task complete'
    # end

    # def task_incomplete 
    #     @tasks = 'task incomplete'
    # end

end

# p housecleaning.task_incomplete
# p housecleaning.task_complete