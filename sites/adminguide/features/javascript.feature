Feature: Javascript
  In order to ensure that the Administrative Guide website progressive enhancement is functional
  As an end user
  I want to interact with dynamic Javascript elements on the page

  @safe @live @site @javascript
  Scenario: Homepage carousel
    Given I am on the homepage
    When I click "›" in the "Content 2 column stacked (2)" region
    And I wait 2 seconds
    Then I should see "Sick Time" in the "Content 2 column stacked (2)" region
    And I should see "Changes to sick time policies" in the "Content 2 column stacked (2)" region
    When I click "›" in the "Content 2 column stacked (2)" region
    And I wait 2 seconds
    Then I should see "Financial Administration" in the "Content 2 column stacked (2)" region
    And I should see "Stay informed of financial policies and procedures." in the "Content 2 column stacked (2)" region
