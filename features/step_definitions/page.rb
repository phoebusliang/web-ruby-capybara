require 'capybara'
require 'capybara/cucumber'

module Page
  extend Capybara::DSL

  def Page.open_url
    visit "http://www.taobao.com"
  end
end