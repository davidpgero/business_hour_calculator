require 'rubygems'
require 'active_support'
require 'business_time'

require './lib/configuration'
require './lib/time_format'
require './lib/client'

module BusinessHourCalculator
    VERSION = '1.0.0'
    Config.initialize!
end # BusinessHourCalculator