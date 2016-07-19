require "Capybara"
require "Capybara/cucumber"
require "rspec"
require "require_all"
require 'selenium-webdriver'
require 'cucumber'


Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  case ENV['DRIVER']
    when 'firefox'
      driver = Capybara::Selenium::Driver.new(app, :browser => :firefox)
    when 'chrome'
      driver = Capybara::Selenium::Driver.new(app, :browser => :chrome)
    when 'ie'
      driver = Capybara::Selenium::Driver.new(app, :browser => :ie)
    when 'edge'
      driver = Capybara::Selenium::Driver.new(app, :browser => :edge)
    when 'safari'
      driver = Capybara::Selenium::Driver.new(app, :browser => :safari)
    else
      driver = Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
  driver
end


