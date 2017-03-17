@contrib
Feature: Views
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Views module is working properly

  @api @javascript @dev @destructive
  Scenario: Views
    Given the "views" module is enabled
    And the "views_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views"
    And I click "Add new view"
    And I enter "Test View" for "View name"
    And I press the "Continue & edit" button
    Then I should be on "admin/structure/views/view/test_view"
    And I should see "All changes are stored temporarily. Click Save to make your changes permanent. Click Cancel to discard the view."
    When I press the "Save" button
    Then I should be on "admin/structure/views/view/test_view"
    And I should see "The view Test View has been saved"
    When I go to "admin/structure/views/view/test_view/delete"
    Then I should see "This action will permanently remove the view from your database."
    When I press the "Delete" button
    Then I should see "The view has been deleted"
    And I should be on "admin/structure/views"
