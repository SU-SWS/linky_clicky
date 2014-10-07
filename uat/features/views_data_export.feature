Feature: Views Data Export
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Views Data Export module is working properly

  @api
  Scenario: Views Data Export
    Given the "views_data_export" module is enabled
    And the "admin_views" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/view/admin_views_node/edit"
    And I press the "Add Data export" button
    Then I should see "Data Export details"
    And I should see "CSV file"
    When I click "No path is set"
    And I enter "data-export" for "edit-path"
    And I press the "Apply" button
    When I press the "Save" button
    Then I should see "The view Administration: Nodes has been saved"
    When I click "revert view"
    And I press the "Revert" button
    Then I should see "The view has been reverted"
