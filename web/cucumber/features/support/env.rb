require 'capybara/cucumber'
require 'faker'
require 'site_prism'
require 'capybara-screenshot/cucumber'
require 'capybara'
require "selenium-webdriver"
require "rspec"
require 'capybara/rspec'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60

# Capybara.app_host = "http://www.inmetrics.com.br/"
