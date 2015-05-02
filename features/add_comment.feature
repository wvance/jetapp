Feature: Add Comments to Ideas
	As a 3DS mentor or participant
	So I can share my opinion about a student's idea and give feedback
	I want to be able to comment about their startup idea.

	Scenario: Adding Comments
		Given that I have logged in
		And I have clicked "All Ideas"
		And then I click on "Some Idea"
		When I enter "Some Comment" in the comment body
		And click "Add Comment" and go back to that Idea
		Then I should see my comment under that Idea