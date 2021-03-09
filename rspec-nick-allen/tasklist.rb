class Tasklist
    attr_accessor :tasks, :done, :in_progress

    def initialize
        @tasks = []
        @done = []
        @in_progress = []
    end

    def check_status input
        # Iterate through the @tasks array
        # Check the status of each task
        # If the task is done, add it to the @done array
        if input == 'done'
            @done = @tasks.filter do |task|
                task.status == input
            end
        else
            @in_progress = @tasks.filter do |task|
                task.status == input
            end
        end
    end
end