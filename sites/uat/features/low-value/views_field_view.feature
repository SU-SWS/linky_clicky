@contrib
Feature: Views Field View
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Views Field Viewmodule is working properly

  @api @javascript @dev @destructive
  Scenario: Views Field View
    Given the "views_field_view" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/add"
    And I enter "VFV Test" for "View name"
    And I select "fields" from "edit-page-style-row-plugin"
    And I wait for AJAX to finish
    And I enter "views-field-view-test" for "edit-page-path"
    And I press the "Continue & edit" button
    And I click "views-add-field"
    And I wait for AJAX to finish
    And I check the box "Global: View"
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    And I press the "Save" button
    And I wait for AJAX to finish
    Then I should see "The view VFV Test has been saved"
    When I go to "admin/structure/views/view/vfv_test/delete"
    And I press the "Delete" button
    Then I should see "The view has been deleted"
