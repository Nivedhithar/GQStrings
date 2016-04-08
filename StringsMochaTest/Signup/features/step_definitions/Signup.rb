
Given(/^the "([^"]*)" as "([^"]*)"$/) do |arg1, arg2|
  visit("http://192.168.8.146:8000")

find(:xpath,".//*[@id='bodyButtons']/div[1]/button[2]").click
sleep 20
 fill_in(arg1,:with=>arg2)
 sleep 15
end
Then(/^give the "([^"]*)" as "([^"]*)"$/) do |email, text|

 fill_in(email ,:with=>text)
 sleep 15
end
Then(/^give the password as "([^"]*)"$/) do |arg3|
fill_in "Password" , :with=>arg3
end


Then(/^I click on Sign up button$/) do
 
click_button('Sign up')
page.driver.browser.switch_to.alert.accept    

end


