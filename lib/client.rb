module BusinessDayCalculator
    class Client
    	include TimeFormat

    	def initialize(submit_date, turnaround)
    		@submit_date = submit_date
    		@turnaround = turnaround
    	end

    	def CalculateDueDate
    		time_format(calculate_due_date)
    	end

    	def calculate_due_date
    		@turnaround.business_hour.after(@submit_date)
    	end
    end
end # BusinessDayCalculator