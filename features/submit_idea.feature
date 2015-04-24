Feature: Submit Idea
	As a 3DS participant
	So that I can share my startup idea digitally and get feedback from others
	I want to be able to submit an idea online

	Scenario: Submit an Idea
		Given that I am on the home page and have logged in
		And I click on "Create Idea"
		When I enter the idea "Name" with "Some Idea"
		And I click the button "Add Idea"
		Then I should see "Some Idea" on the "All Ideas" page
		