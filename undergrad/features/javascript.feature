Feature: Javascript
  In order to ensure that the Undergrad website progressive enhancement is functional
  As an end user
  I want to interact with dynamic Javascript elements on the page

@javascript
Scenario: Homepage carousel
  Given I am on the homepage
  When I click "›" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "Introductory Seminars" in the "Main Upper" region
  When I click "›" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "Getting Started in Earth Sciences" in the "Main Upper" region
  When I click "›" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "What Is Love?" in the "Main Upper" region
  When I click "›" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "Ethical Reasoning" in the "Main Upper" region
  When I click "‹" in the "Main Upper" region
    And I wait 2 seconds
  Then I should see "What Is Love?" in the "Main Upper" region
