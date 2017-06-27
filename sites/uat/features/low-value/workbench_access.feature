@contrib
Feature: Workbench Access
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Workbench Access module is working properly

  @api @javascript @dev @destructive
  Scenario: Workbench Access
    Given the "workbench_access" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/workbench/access"
    Then I should see "You must configure Workbench Access settings before editorial access control will be enforced."
    When I click "configure Workbench Access settings"
    Then I should be on "admin/config/workbench/access/settings"
    When I click "test configuration for Workbench"
    Then I should be on "admin/config/workbench/access/install"
    When I press the "Confirm" button
    Then I should be on "admin/config/workbench/access/settings"
    And the checkbox "Museum" should be checked
    When I go to "admin/config/workbench/access/sections"
    Then I should see "Museum"
    And the checkbox "All of Museum" should be checked
    When I go to "admin/config/workbench/access/roles"
    And I click "0 roles" in the "Museum" row
    Then I should be on "admin/config/workbench/access/roles/taxonomy/workbench_access"
    When I check the box "administrator"
    And I press the "Update roles" button
    Then I should see "administrator" in the "admin" row
    When I go to "admin/config/workbench/access"
    Then I should see "1 editor" in the "Museum" row
    # Disable when finished.
    Given the "workbench_access" module is disabled