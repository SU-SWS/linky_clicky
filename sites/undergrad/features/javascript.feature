Feature: Javascript
  In order to ensure that the Undergrad website progressive enhancement is functional
  As an end user
  I want to interact with dynamic Javascript elements on the page

  @javascript @safe @live @site
  Scenario: Homepage carousel
    Given I am on the homepage
    When I click "›" in the "Main Upper" region
    And I wait 2 seconds
    When I click "‹" in the "Main Upper" region
    And I wait 2 seconds
