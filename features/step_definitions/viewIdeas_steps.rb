s = Capybara::Session.new(:selenium)

Given(/^that I have logged in and am on the home page$/) do
	window_max(s)
	s.visit path_to(host)
	s.click_link("login")
	log_in(s)
end


When(/^I click on "(.*?)"$/) do |arg1|
	s.click_link("All Ideas")
end

Then(/^I should see a list of all Ideas$/) do
	s.within("div.bodyContainer.wrapper") do
		s.find("div.page_info.center", text: "Displaying")

		(s.find("div.page_info.center", text: "idea") ||
		s.find("div.page_info.center", text: "ideas"))
  	end
end
