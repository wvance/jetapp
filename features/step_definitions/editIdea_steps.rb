s = Capybara::Session.new(:selenium)

Given(/^that I am logged into the JetPack application$/) do
  	window_max(s)
	s.visit path_to(host)
	log_in(s)
end

Given(/^I click on "(.*?)" link$/) do |arg1|
  s.click_link("All Ideas")
end

Given(/^I click on "(.*?)" I want$/) do |arg1|
  s.first('a', text: "Some Idea").click
end

Given(/^click on the "(.*?)" button$/) do |arg1|
  s.click_link("Edit")
end

When(/^I enter a new name such as, "(.*?)"$/) do |arg1|
  s.fill_in("Name", with: arg1)
end

When(/^I click on the "(.*?)" button$/) do |arg1|
  s.click_button("Save Changes")
end

When(/^I return to the "(.*?)" page$/) do |arg1|
  s.click_link("All Ideas")
end

Then(/^I should see an Idea with the name "(.*?)"$/) do |arg1|
  s.find('div.showHide', text: arg1)
end
