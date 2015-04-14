# features/home_page.feature
Feature: View idea

Scenario: Viewing an idea
    Given there's an idea named "Mel's idea" with "Hello, BDD world!" description 
    When I am on the homepage
    Then I should see the "Mel's idea" post