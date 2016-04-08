require 'rubygems'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
#require 'chromedriver'

Before do |scenario|
	page.driver.browser.manage.window.maximize
	sleep 20
	module Capybara
	end
end

Capybara.register_driver :chrome do |app_host|
  Selenium::WebDriver::Chrome::Service.executable_path = "/home/devops/chromedriver"
  Capybara::Selenium::Driver.new(app_host, :browser => :chrome)
end

module SessionSteps
	def Signup(team,email,user,password,confirm)
		visit "/"
		fill_in 'signupTeamName', :with =>team
		fill_in 'signupEmail', :with =>email
		fill_in 'signupName', :with =>user
		fill_in 'signupPassword', :with =>password
		fill_in 'signupConfirmPassword', :with =>confirm

		click_on "Sign up"
		sleep 30
		visit(current_path)
	end
end
Capybara.default_driver = :chrome
Capybara.app_host = "http://192.168.8.146:8000"
