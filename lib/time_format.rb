module BusinessDayCalculator
	module TimeFormat
		def time_format(time)
    	time.strftime("%Y-%m-%d %I:%M %p")
    end
  end # TimeFormat
end # BusinessDayCalculator