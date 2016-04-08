
Given(/^the "([^"]*)" as "([^"]*)"$/) do |field, name|
visit("http://192.168.8.146:8000")

find(:xpath,".//*[@id='bodyButtons']/div[1]/button[1]").click
sleep 20
 fill_in(field,:with=>name)
 sleep 15
end
Then(/^give the "([^"]*)" as "([^"]*)"$/) do |email, text|

 fill_in(email ,:with=>text)
 sleep 15
end
Then(/^give the password as "([^"]*)"$/) do |arg3|
fill_in "Password" , :with=>arg3
end

Then(/^I click on Log in button$/) do
click_button('Log in')
end


