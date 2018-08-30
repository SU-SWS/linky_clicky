Feature: Always Visible
  In order to verify functionality of the always_visible module.
  For all types of users
  I want to verify expected functionality

  @safe @api
  Scenario: Test that the Always Visible module is enabled
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/modules"
    Then I should see 1 "#edit-modules-other-always-visible-enable" element
    And the "modules[Other][always_visible][enable]" checkbox should be checked
