Feature: Javascript
  In order to ensure that the Undergrad website progressive enhancement is functional
  As an end user
  I want to interact with dynamic Javascript elements on the page

@javascript
Scenario: Homepage carousel
  Given I am on the homepage
  When I click "›" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "Bio-Cultural Diversity" in the "Main Upper" region
  When I click "›" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "Major Options" in the "Main Upper" region
  When I click "›" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "Student Projects Gallery" in the "Main Upper" region
  When I click "›" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "Ask AI Faculty" in the "Main Upper" region
  When I click "‹" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "Student Projects Gallery" in the "Main Upper" region
