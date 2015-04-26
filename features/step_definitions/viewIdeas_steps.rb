s = Capybara::Session.new(:selenium)

user_first = "Christian"
user_last  = "Buzombo"
user_p_name = user_first + '_' + user_last
user_email = "chrisbuz@tamu.edu"

Given(/^that Ih have logged in and am on the home page$/) do
	window_max(s)
	s.visit path_to(host)
	log_in(s)
end

When(/^I click on "(.*?)"$/) do |arg1|
	s.click_link("All Ideas")
end

Then(/^I should see a list of all Ideas$/) do
	s.within("div.container.bodyContainer.wrapper") do
		s.find("div.page_info.center", text: "Displaying")
		
		(s.find("div.page_info.center", text: "idea") ||
		s.find("div.page_info.center", text: "ideas"))
  	end
end
