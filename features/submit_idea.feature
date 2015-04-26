Feature: Submit Idea
	As a participant
	So that I can share my startup idea digitally and get feedback from others
	I want to be able to submit an idea online

	Scenario: Submit an Idea
		Given that I am on the home page and have logged in
		And I click on my username
		And I click on "Create Idea" button
		When I enter a "Name" for "Some Idea"
		And I click on the button "Add Idea"
		Then I should see "Idea Added!"