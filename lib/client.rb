module BusinessHourCalculator
    class Client
    	include TimeFormat

      attr_reader :submit_date, :turnaround

    	def initialize(submit_date, turnaround)
    		@submit_date = submit_date
    		@turnaround = turnaround
    	end

    	def CalculateDueDate
    		time_format(calculate_due_date)
    	end

    	def calculate_due_date
    		turnaround.business_hour.after(submit_date)
    	end
    end
end # BusinessHourCalculator