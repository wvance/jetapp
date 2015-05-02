Feature: Edit Idea
	As a user that added an idea,
	So that I can update my ideas as they change or if I make a mistake,
	I would like to be able to edit my ideas.

	Scenario: Idea Edit
		Given that I am logged into the JetPack application
		And I click on "All Ideas" link
		And I click on "Some Idea" I want
		And click on the "Edit" button
		When I enter a new name such as, "Some Idea Edited"
		And I click on the "Save Changes" button
		Then I should see an Idea with the name "Some Idea Edited"