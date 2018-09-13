Feature: Big Menu administration module
# https://www.drupal.org/project/bigmenu
  In order to make my website load faster and have digestible menu and webpage
  As administrator
  I want to verify functionality of the Big Menu module administration

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe @api
  Scenario: Verify Big Menu module is enabled
    # Given the "bigmenu" module is enabled <- this will make the test destructive
    Given I am on "admin/modules"
    Then I should see 1 "#edit-modules-other-bigmenu-enable" element
    And the "modules[Other][bigmenu][enable]" checkbox should be checked

    # Big Menu conflicts with tiny_menu
    And I should not see "edit-modules-other-tiny_menu-enable"

    # Verify it's on the permissions page
    Given I am on "admin/people/permissions#module-bigmenu"
    Then I should see "Administer Big Menu"

