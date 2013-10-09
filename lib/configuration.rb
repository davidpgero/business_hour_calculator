module BusinessDayCalculator
	class Config
		def self.initialize!
			BusinessTime::Config.beginning_of_workday = "9:00 am"
			BusinessTime::Config.end_of_workday = "5:00 pm"
			BusinessTime::Config.work_week = [:mon, :tue, :wed, :thu, :fri]
		end
	end
end # BusinessDayCalculator