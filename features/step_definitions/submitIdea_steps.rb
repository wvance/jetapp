s = Capybara::Session.new(:selenium)

Given(/^that I am on the home page and have logged in$/) do
  log_in(s)
end

Given(/^I click on "(.*?)"$/) do |arg1|
  s.click_link(arg1)
end

When(/^I enter the idea "(.*?)" with "(.*?)"$/) do |field, idea_name|
  s.fill_in(field, with: idea_name)
end

When(/^I click the button "(.*?)"$/) do |add_idea_button|
  s.click_button(add_idea_button)
end

Then(/^I should see "(.*?)" on the "(.*?)" page$/) do |arg1, arg2|
  s.click_link(arg2)	
end
