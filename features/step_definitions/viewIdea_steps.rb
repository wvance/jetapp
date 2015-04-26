# features/step_definitions/home_page_steps.rb
Given(/^there's an idea named "(.*?)" with "(.*?)" description$/) do |name, description|
  @idea = FactoryGirl.create(:idea, name: name, description: description)
end

When(/^I am on the homepage$/) do
  visit 'ideas#showAll'
end

Then(/^I should see the "(.*?)" post$/) do |title|
  @idea = Idea.find_by_namee(name)

  page.should have_content(@idea.name)
  page.should have_content(@idea.description)
end