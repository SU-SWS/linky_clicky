Feature: Big Menu module
# https://www.drupal.org/project/bigmenu
  In order to make my website load faster and have digestible menu and webpage
  As administrator
  I want to verify functionality of the Big Menu module

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe @api
  Scenario: Verify Big Menu module is enabled
    # Given the "bigmenu" module is enabled <- this will make the test destructive

    # Verify menus are collapsed
    Given I am on "admin/structure/menu/manage/navigation"
    Then I should see 1 or more ".bigmenu-toggle" elements
    Then I should see 1 or more ".bigmenu-collapsed" elements
    Then I should see "Show children"

    # Todo
    # Scenario: Verify that submenu appears after clicking “+” icon next to link in primary menu
    # Scenario: Verify that submenu disappears after clicking “-” icon next to link in primary
    #		menu

    # Scenario: Verify that submenu appears after clicking “+” icon next to link in secondary
    #		menu
    # Scenario: Verify that submenu disappears after clicking “-” icon next to link in secondary
    #		menu
