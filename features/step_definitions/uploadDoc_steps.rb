session = Capybara::Session.new(:selenium)
s = session

Given(/^I have logged in and I am on the "(.*?)"$/) do |arg1|
	window_max(s)
	s.visit path_to(host)
	s.click_link("login")
	log_in(session)
end

Given(/^I click "(.*?)"$/) do |arg1|
  	s.click_link("Create Idea")
end

Then(/^I should be able to press "(.*?)" and upload my documents$/) do |arg1|

end

