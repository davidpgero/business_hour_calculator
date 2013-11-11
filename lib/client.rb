module BusinessHourCalculator
  class Client
    include TimeFormat

    attr_reader :date, :estimate_hour

    def initialize(estimate_hour, date = Time.now())
    	@date = date
    	@estimate_hour = estimate_hour
    end

    def calculated_due_date
    	time_format(calculate_due_date)
    end

    def calculate_due_date
    	estimate_hour.business_hour.after(date)
    end
  end
end # BusinessHourCalculator
