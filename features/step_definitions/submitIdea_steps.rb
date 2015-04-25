s = Capybara::Session.new(:selenium)

user_first = "Christian"
user_last  = "Buzombo"
user_p_name = user_first + '_' + user_last

Given(/^that I am on the home page and have logged in$/) do
	s.visit path_to(host)	
	sign_up(s, user_first, user_last)
	#log_in(s)

	#if page.has_content?('Invalid login or password.')
	#	s.find('a.dropdown-button').click # assuming you only have one a.dropdown-toggle
  	#	s.click_on("Sign up")
	#	sign_up(s, user_first, user_last)
	#end
 	#log_in(s)
end

Given(/^I click on my username$/) do
  s.click_link(user_p_name)
end

Given(/^I click on "(.*?)" button$/) do |arg1|
  s.within("div.card-action") do
  	s.click_link(arg1)
  end
end

When(/^I enter a "(.*?)" for "(.*?)"$/) do |arg1, arg2|
  s.fill_in(arg1, with: arg2)
end

When(/^I click on the button "(.*?)"$/) do |arg1|
  s.click_button(arg1)
end

 Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_xpath?('//button[contains(text(), arg1)]')
end
