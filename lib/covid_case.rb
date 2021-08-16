require_relative "covid_case/version"
require_relative "covid_case/cli"
require_relative "covid_case/scraper"
require_relative "covid_case/states"

require 'nokogiri'
require 'pry'
require 'open-uri'

module CovidCase
  class Error < StandardError; end
  # Your code goes here...
end
