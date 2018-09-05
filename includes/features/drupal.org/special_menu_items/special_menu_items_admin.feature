Feature: special_menu_items administration module
# https://www.drupal.org/project/special_menu_items
  In order to ensure the site is functioning as expected
  As administrator
  I want to verify functionality of the special_menu_items module

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe @api
  Scenario: Verify _new_module_ module is enabled
    And I am on "admin/modules"
    Then I should see 1 "#edit-modules-context-context-http-header-enable" element
    And the "modules[Context][context_http_header][enable]" checkbox should be checked
  check that the description on the menu item has changed

  @dev @api @javascript @destructive
  Scenario: Verify _new_module_ module functionality
    And the cache has been cleared
    # Verify <no link>
    create a menu item with <no link> as a path,
    Verify you can't click on the menu item
    click "show as expanded"
    verify the sub items can be clicked on
    # Verify <separator>
  Create a menu item with <separator> as the path
    Save and verify <separator>





