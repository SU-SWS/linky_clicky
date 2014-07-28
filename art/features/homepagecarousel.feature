Feature: Homepage carousel Javascript
 In order to ensure that the Art and Art History website homepage carousel is navigable
 As an end user
 I want to interact with dynamic Javascript of the homepage carousel

@javascript
Scenario: Homepage carousel
 Given I am on the homepage
 When I click "danceroom Spectroscopy" in the "Content Top" region
 And I wait 2 seconds
 Then I should see "Come play in this interactive, multi-award winning installation that allows you to influence both sound and image using your movement." in the "Content Top" region
