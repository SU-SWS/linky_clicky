@stanford
Feature: Stanford Date Timepicker
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Date Timepicker module is working properly

  @api @javascript @destructive
  Scenario: Stanford Date Timepicker
    Given the "stanford_events_importer" module is enabled
    And the "stanford_date_timepicker" module is disabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-event"
    When I click on the element with css selector "#edit-field-stanford-event-datetime-und-0-value-timeEntry-popup-1"
    And I wait for AJAX to finish
    Then I should not see "Choose time"
    Given the "stanford_events_importer" module is enabled
    And the "stanford_date_timepicker" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-event"
    And I enter "Stanford Date Timepicker Test Event" for "Title"
    And I enter "2016-09-01" for "Date"
    When I click on the element with css selector "#edit-field-stanford-event-datetime-und-0-value-timeEntry-popup-1"
    And I wait for AJAX to finish
    Then I should see "Choose time"
    And I should see "Time"
    And I should see "Hour"
    And I should see "Minute"
