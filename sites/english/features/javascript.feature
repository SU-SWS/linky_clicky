Feature: Javascript
  In order to ensure that the English website progressive enhancement is functional
  As an end user
  I want to interact with dynamic Javascript elements on the page

  @javascript @safe @live
  Scenario: Homepage carousel
    Given I am on the homepage
    When I click "next" in the "Main Top" region
    And I wait 2 seconds
    Then I should see "Digital Humanities Minor" in the "Main Top" region
    When I click "next" in the "Main Top" region
    And I wait 2 seconds
    Then I should see "Current or prospective student in English?" in the "Main Top" region
