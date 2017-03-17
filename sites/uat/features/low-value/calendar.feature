@contrib
Feature: Calendar
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Calendar module is working properly

  @api @javascript @content @dev @destructive
  Scenario: Calendar
    Given the "calendar" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    When I go to "admin/structure/views"
    And I click "Add view from template"
    And I click "add" in the "A calendar view of the 'created' field in the 'node' base table." row
    And I enter "Calendar Test" for "View name"
    And I press the "Continue" button
    Then I should be on "admin/structure/views/view/calendar_test/edit"
    When I wait for AJAX to finish
    And I press the "Save" button
    Then I should see "The view Calendar Test has been saved." in the "Console" region
    When I wait for AJAX to finish
    And I go to "admin/structure/views/view/calendar_test/delete"
    Then I should see "This action will permanently remove the view from your database."
    When I press the "Delete" button
    Then I should see "The view has been deleted" in the "Console" region
