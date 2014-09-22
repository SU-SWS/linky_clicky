Feature: Page not Found - 404
 In order to ensure that the Jumpstart Academic website Page not found content is visible
 As an end user
 I want to check for the existence of the page

Scenario: Viewing a featured image on the About page
 Given I am on "purple-monkey-dishwasher"
 Then I should see "Oops" in the "Content Body" region
