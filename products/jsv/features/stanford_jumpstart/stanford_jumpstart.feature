Feature: Stanford Jumpstart Feature
  In order to ensure that the Stanford Jumpstart feature is configured correctly
  As an administrator
  I want to check for the existence of configuration

  @api @safe
  Scenario: Verify menu items
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart"
    Then I should see "Jumpstart User Guide"
    Then I am on "admin/stanford-jumpstart/features"
    Then I should see "Add Blocks or Change Block Layouts"
    Then I am on "admin/stanford-jumpstart/launch-checklist"
    Then I should see "Content Cleanup"
    Then I am on "admin/stanford-jumpstart/settings"
    Then I should see "Settings"
    Then I should see "Help text"
    Then I should see "Request assistance url"
    Then I should see "Browse available tokens"

  @api @dev
  Scenario: Verify help text and request assistance url changes
    Given I am logged in as a user with the "administrator" role
    Then I track variable "stanford_jumpstart_help_settings"
    And I am on "admin/stanford-jumpstart/settings"
    And I fill in "edit-jumpstart-help-text" with "This is my new help text."
    And I fill in "edit-jumpstart-request-help-url" with "http://www.google.com"
    Then I press the "Save" button
    Then I should see "Your settings have been saved."
    Then I am on "admin/stanford-jumpstart"
    Then I should see "This is my new help text"
    Then I click "Request Assistance"
    Then I should be on "http://www.google.com"

  @api @safe
  Scenario: Verify custom permissions are available
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/people/permissions"
    Then I should see "Administer Jumpstart Help"
    Then I should see "Access Jumpstart Help"
    Then I should see "Access Jumpstart Features"
    Then I should see "Assign Administrator Role"
    Then I should see "Use Full Block Interface"

  @api @safe
  Scenario: Verify items are hidden from non-admin users
    Given I am logged in as a user with the "site owner" role
    And I am on "block/jumpstart-info-text-block/edit"
    Then I should not see "Create new revision"
    Then I should not see "Set Revision as default"
    Then I should not see "Log message"
    Then I should not see "View Mode"
    Then I should not see "URL REDIRECTS"
    Then I should not see an "#edit-delete" element
    And I am on "a node edit page"
    Then I should not see "promote"
    Then I should not see "sticky"
    Then I am on "admin/people"
    Then I check "views_bulk_operations[0]"
    Then I select "Change user roles" from "edit-operation"
    Then I press the "Execute" button
    Then I should not see "administrator" in the "#edit-add-roles" element
    Then I should not see "administrator" in the "#edit-remove-roles" element
    Then I am on "admin/structure/services"
    Then I should not see "Services"

