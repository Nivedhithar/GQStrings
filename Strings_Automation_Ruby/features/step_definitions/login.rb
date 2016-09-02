Given(/^I have Signed in as admin user with TeamName as "([^"]*)",Emailaddress as "([^"]*)",ownerName as "([^"]*)" and loginPassword as "([^"]*)"$/) do |teamname,emailaddress,ownername,password|
 ##visit("http://52.77.108.187:8000/login.html")
#Calling the log in function with team,email,password parameters from env.rb
  puts teamname
  puts emailaddress
  puts ownername
  puts password
  signup(teamname,emailaddress,ownername,password)
  page.driver.browser.switch_to.alert.accept
end

Given(/^I have logged in as admin user with loginTeamName as "([^"]*)",loginEmail as "([^"]*)" and loginPassword as "([^"]*)"$/) do |team,email,password|
 ##visit("http://52.77.108.187:8000/login.html")
#Calling the log in function with team,email,password parameters from env.rb
  puts team
  puts email
  puts password
  login(team,email,password)
end

#Now Log in with the credentials using Background details from login.feature file
Given(/^I have entered valid credentials$/) do
 #click_on "Log in"
  	puts "I have logged in"
end

#Modules 
Given(/^I click on Modulestab$/) do
    within ('.panel-default') do
	find(:xpath,"/html/body/div/div/div[5]/div/div[1]").click
	sleep 5  
  end
end

#Within the modules to run aws instances add module as "aws"
Given(/^I add newModules as "([^"]*)"$/) do |mod|
  	click_button "New module(s) from master"
	m=page.driver.browser.switch_to.alert
	m.text == 'mod'
	m.accept
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
end

#Now navigated to Home page to perform other actions
Given(/^I navigate to Dashboard page$/) do
    within ('.container-fluid') do
	click_on 'strings'
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
  end
end

#Credentials
Given(/^now I navigated to credentials page$/) do
	find(:xpath,"/html/body/div/div/div[4]/div/div[1]").click
	click_button 'Upload Credentials'
end

#Workflows 
Given(/^I redirected to workflows page$/) do
	find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	click_button 'New workflow(s) from master'
	sleep 2	
	w=page.driver.browser.switch_to.alert
	w.text == 'describeEC2'
	w.accept
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
end
#Executing workflows
Given(/^I select describeEC workflow$/) do
	find(:xpath,"/html/body/div[2]/div/div[1]/div/div[1]").click
	sleep 10
end 
Given(/^I select Execute$/)do
	within('.btn-group')do
	click_button 'Execute'
	page.driver.browser.switch_to.alert.text == 'str'
	page.driver.browser.switch_to.alert.accept	
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError	
	end
end
Given(/^I select addModules$/)do
	within('.btn-group')do
	click_button 'Edit'
	find(:xpath,"/html/body/div/div/div/div/div[1]/div/div/ul/li[1]/a").click
	m=page.driver.browser.switch_to.alert
	m.text == 'tes'
	m.accept
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError	
	end
end
Given(/^I select removeModuless$/)do
	find(:xpath,"/html/body/div[2]/div/div[1]/div/div[1]").click
	within('.btn-group')do
	click_button 'Edit'
	find(:xpath,"/html/body/div/div/div/div/div[1]/div/div/ul/li[2]/a").click
	m=page.driver.browser.switch_to.alert
	m.text == 'tes'
	m.accept
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError	
	end
end
Given(/^I click on delete button$/)do
	find(:xpath,"/html/body/div[2]/div/div[1]/div/div[1]").click
	sleep 2
	click_button 'Delete'
end
Given(/^I select deleteOne workflow$/) do
	page.find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	find(:xpath,"/html/body/div[2]/div/div[1]/div/div[1]").click
	within('.btn-group')do
	click_button 'Execute'
	page.driver.browser.switch_to.alert.text == ' '
	page.driver.browser.switch_to.alert.accept	
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError		
	end
end
Given(/^I select getChefUsers workflow$/) do
	page.find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	find(:xpath,"/html/body/div[2]/div/div[2]/div/div[1]").click
	within('.btn-group')do
	click_button 'Execute'
	page.driver.browser.switch_to.alert.text == ' '
	page.driver.browser.switch_to.alert.accept	
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError		
	end
end
Given(/^I select dropdb workflow$/) do
	page.find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	find(:xpath,"/html/body/div[2]/div/div[3]/div/div[1]").click
	within('.btn-group')do
	click_button 'Execute'
	page.driver.browser.switch_to.alert.text == ' '
	page.driver.browser.switch_to.alert.accept	
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError		
	end
end
Given(/^I select listRecord workflow$/) do
	page.find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	find(:xpath,"/html/body/div[2]/div/div[4]/div/div[1]").click
	within('.btn-group')do
	click_button 'Execute'
	page.driver.browser.switch_to.alert.text == ' '
	page.driver.browser.switch_to.alert.accept	
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError		
	end
end
Given(/^I select readTable workflow$/) do
	page.find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	find(:xpath,"/html/body/div[2]/div/div[5]/div/div[1]").click
	within('.btn-group')do
	click_button 'Execute'
	page.driver.browser.switch_to.alert.text == ' '
	page.driver.browser.switch_to.alert.accept	
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError		
	end
end
Given(/^I select showDB workflow$/) do
	page.find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	find(:xpath,"/html/body/div[2]/div/div[6]/div/div[1]").click
	within('.btn-group')do
	click_button 'Execute'
	page.driver.browser.switch_to.alert.text == ' '
	page.driver.browser.switch_to.alert.accept	
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError		
	end
end
Given(/^I select updateRecord workflow$/) do
	page.find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	find(:xpath,"/html/body/div[2]/div/div[7]/div/div[1]").click
	within('.btn-group')do
	click_button 'Execute'
	page.driver.browser.switch_to.alert.text == ' '
	page.driver.browser.switch_to.alert.accept	
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError		
	end
end
Given(/^I select uptime workflow$/) do
	page.find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	find(:xpath,"/html/body/div[2]/div/div[8]/div/div[1]").click
	within('.btn-group')do
	click_button 'Execute'
	page.driver.browser.switch_to.alert.text == ' '
	page.driver.browser.switch_to.alert.accept	
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError		
	end
end


Given(/^I select Upload new workflow and give Workflow Name as "([^"]*)" and Workflow Code as "([^"]*)"$/)do |name,code|
	page.find(:xpath,"/html/body/div/div/div[3]/div/div[1]").click
	page.find(:xpath,"/html/body/div[1]/button[2]").click
	sleep 10
	within('.modal-content')do
	page.find(:xpath,"/html/body/div[3]/div/div/div[2]/form/div[1]/input").set 'getChefUsers'
	page.find(:xpath,"/html/body/div[3]/div/div/div[2]/form/div[2]/textarea").set 'main code'
	click_button 'Upload Workflow'
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
	end
end
#Users
Given(/^I click on Userstab$/) do
   within ('.panel-default')do
	page.find('.panel-heading').click
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
  end
end

#Selecting the new users to add
Given(/^I click on newUsers$/) do
	find(:xpath,"/html/body/div[1]/button").click
end

#Enter valid email address "testteam@gquotient.com" for the users
Given(/^I enter "([^"]*)" in browser dialog box$/) do |arg1|
   	a=page.driver.browser.switch_to.alert
	a.text == 'arg1'
	a.accept
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
	sleep 10
end

#To edit the user details click on the user tab
Given(/^I click on user$/) do
	page.find(:xpath,"/html/body/div[2]/div/div[2]/div/div[1]").click
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
end

#when you redirected to user page click Edit button
Given(/^I click on Edit button$/) do
	click_button "Edit"
	sleep 2
end

#To execute workflow addWorkflows describeEC2 for the user

#Edit options in user page
Given(/^I select addWorkflows and I give describeEC2$/)do 
#To select the list element
	page.find(:xpath,"/html/body/div/div/div/div/div[1]/div/div/ul/li[1]/a").click 
	sleep 20
	w=page.driver.browser.switch_to.alert
	w.text == 'arg1'
	w.accept
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
	##This will click OK on the alert if one is present, else it will fail gracefully (silently).
	#page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
end
Given(/^I select addToGroups and group name as Strings$/)do
	page.find(:xpath,"/html/body/div[2]/div/div[2]/div/div[1]").click
	click_button "Edit"
	page.find(:xpath,"/html/body/div/div/div/div/div[1]/div/div/ul/li[2]/a").click 
	sleep 2
	g=page.driver.browser.switch_to.alert
	g.text == 'Strings'
	g.accept
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
end

Given(/^I select deleteWorkflows and enter describeEC2$/)do
	page.find(:xpath,"/html/body/div[2]/div/div[2]/div/div[1]").click
	click_button "Edit"
	page.find(:xpath,"/html/body/div/div/div/div/div[1]/div/div/ul/li[3]/a").click
	g=page.driver.browser.switch_to.alert
	g.text == 'describeEC2'
	g.accept
end

Given(/^I select removeFromGroups$/)do
	page.find(:xpath,"/html/body/div[2]/div/div[2]/div/div[1]").click
	click_button "Edit"
	page.find(:xpath,"/html/body/div/div/div/div/div[1]/div/div/ul/li[4]/a").click 
	g=page.driver.browser.switch_to.alert
	g.text == 'Strings'
	g.accept
end

Given(/^I select isAdmin as true$/)do
	page.find(:xpath,"/html/body/div[2]/div/div[2]/div/div[1]").click
	click_button "Edit"
	page.find(:xpath,"/html/body/div/div/div/div/div[1]/div/div/ul/li[5]/a").click 
	g=page.driver.browser.switch_to.alert
	g.text == 'true'
	g.accept
end
Given(/^I select Delete button for users$/)do
	page.find(:xpath,"/html/body/div[2]/div/div[2]/div/div[1]").click
	click_button 'Delete'
end
#Groups
Given(/^I click on Groupstab$/) do
   within ('.panel-default')do
	page.find(:xpath,"/html/body/div/div/div[2]/div/div[1]").click  
	sleep 25
	#click_button 'New group(s)'
	page.find(:xpath,"/html/body/div[1]/button").click
	sleep 5
	t=page.driver.browser.switch_to.alert
	t.text == 'Strings'			
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
  end
end
#Me
Given(/^I click on Me$/) do
   within ('.panel-default')do
	page.find(:xpath,"/html/body/div/div/div[6]/div/div[1]").click
	page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
  end
end
#Logout
Then(/^I click on Log Out$/) do
within('.container-fluid')do
	click_on "Log Out"
  end
end

