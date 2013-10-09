require 'rubygems'
require 'active_support'
require 'business_time'

require './lib/configuration'
require './lib/time_format'
require './lib/client'

module BusinessDayCalculator
    VERSION = '1.0.0'
    Config.initialize!
end # BusinessDayCalculator