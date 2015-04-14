Feature: Upload Documents
	In order to express my idea more clearly
	As a 3DS member
	I want to be able to upload my documents as a file

	Scenario: Upload a pdf
		Given I have created a pdf file to upload
		And have saved it to my computer
		When I add the path to the upload file button
		Then the file should be downloaded to the page

# #-------------------------------------------------------------------


# Feature:Submit idea
# 	In order to improve my startup idea digitally 
# 	As a 3DS member
# 	I want to be able to recieve feedback on my idea

# 	Scenario: Recieve feeback
# 		Given I have created an idea
# 		And have posted it to the site
# 		When another user enters a comment about my idea
# 		Then the comment will show up below my idea

# #-------------------------------------------------------------------

# Feature:View all ideas
# 	In order to review ideas 
# 	As a 3DS member
# 	I want to be able to view the entire collection of 3ds ideas

# 	Scenario: login to 3DS
# 		Given I have created an account
# 		And have logged in
# 		When I view the page of ideas
# 		Then all the entire collection of ideas will be visible 

# #-------------------------------------------------------------------

# Feature:Mentor provide feedback
# 	In order to share opinions about feedback 
# 	As a 3DS mentor
# 	I want to be able to comment and converse with students about their startup idea

# 	Scenario: Mentor privilidges 
# 		Given I am a 3DS mentor
# 		And have logged in
# 		When I press comment and enter a message
# 		Then the users who created that idea will be able to see it

# #-------------------------------------------------------------------

# Feature:Show alumni ideas
# 	In order to build off old ideas or avoid repitition
# 	As a 3DS student
# 	I want to be able to view previous years ideas

# 	Scenario: viewing old ideas 
# 		Given I am a 3DS student
# 		And have logged in
# 		When I press 'view old ideas'
# 		Then the the list of old ideas along with comments will be shown

# #-------------------------------------------------------------------

# Feature:Share ideas with social media
# 	In order to build current ideas
# 	As a 3DS student
# 	I want to be able post to social media to recieve more feedback

# 	Scenario: Posting idea to social media
# 		Given I am a 3DS student
# 		And have logged in
# 		When I press 'share idea'
# 		Then my idea will be posted to social media


# #-------------------------------------------------------------------

# Feature:Add resouces to ideas
# 	In order to build current ideas
# 	As a 3DS student
# 	I want to be able to add resources that are relevant to my idea

# 	Scenario: Adding a resource to my idea
# 		Given I am a 3DS student
# 		And have logged in
# 		When I press 'add resources' and attach a link or file
# 		Then I will be able to access these resources from my idea 