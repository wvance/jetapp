Feature: Upload Documents
	In order to express my idea more clearly
	As a 3DS member
	I want to be able to upload my documents as a file

	Scenario: Upload a pdf
		Given I have logged in and I am on the "home page"
		And I click "Create Idea"
		Then I should be able to press "Choose File" and upload my documents