$LOAD_PATH << '.'

require 'capybara/cucumber'
require 'capybara'

When /^Open "(.*?)"/ do |url|
  visit url
  Page.open_url
end

When /^I want to search with "(.*?)"/ do |text|
  fill_in "kw", :with => text
  # find('.s_ipt').send_keys("promise")
  # execute_script("return $('.s_ipt')[0]").send_keys("promise")
end



