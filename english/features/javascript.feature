Feature: Javascript
  In order to ensure that the English website progressive enhancement is functional
  As an end user
  I want to interact with dynamic Javascript elements on the page

@javascript
Scenario: Homepage carousel
  Given I am on the homepage
  When I click "next" in the "Main Top" region
  And I wait 2 seconds
  Then I should see "New online course in English" in the "Main Top" region
