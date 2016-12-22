Feature: Ensure Site Users can view, select, and reset the filter by related content section on the news and events page
  In order to ensure that any site user can view, select, and reset the filter by related content section on the news and events page
  As a Site User
  I want to be able to view, select, and reset the filter by related content section on the news and events page

  Background:
     Given I am on "News & Events"

  @safe @javascript
  Scenario: Verify users can view the filter by related content section on the news and events page
    Then I should see "Filter by related content" in the "First sidebar" region
    And I should see "Go"
    And I should see "op" 

  @safe @javascript
  Scenario: Verify site users can select and reset a filter by related content option
    When I click on the element with css selector "#edit-term-node-tid-depth"
    And I press the "Go" button
    Then I wait for AJAX to finish
    When I press the "Reset" button
    Then I wait for AJAX to finish
