@contrib
Feature: Date iCal
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Date iCal module is working properly

  @api @dev @destructive
  Scenario: Date iCal README
    Given the "date_ical" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "help/date_ical/README.txt"
    Then I should see "This module allows users to create iCal feeds in Views, and import iCal feeds from other sites using the Feeds module"

  @api @dev @destructive
  Scenario: Date iCal README
    Given the "date_ical" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/reports/status"
    Then I should see "iCalcreator library is installed"
    And I should not see "iCalcreator library could not be found"

  @api @javascript @dev @destructive
  Scenario: Date iCal Node Display
    Given the "date_ical" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/page/display"
    And I click "Custom display settings"
    # Testing to see if Travis will comply
    And I wait 1 second
    And I wait for AJAX to finish
    And I check the box "iCal"
    And I press the "Save" button
    Then I should see "Your settings have been saved."

  @api @javascript @dev @destructive
  Scenario: Date iCal Views Display
    Given the "date_ical" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/add"
    When I enter "date_ical_views_test" for "View name"
    And I check the box "Include an RSS feed"
    And I select "iCal Entity" from "Feed row style"
    And I press the "Continue & edit" button
    Then I should be on "admin/structure/views/view/date_ical_views_test"
    Given the "date_ical" module is disabled


