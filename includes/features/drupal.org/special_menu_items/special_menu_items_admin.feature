Feature: special_menu_items administration module
# https://www.drupal.org/project/special_menu_items
  In order to ensure the site is functioning as expected
  As administrator
  I want to verify functionality of the special_menu_items module

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe @api
  Scenario: Verify special_menu_items module is enabled
    Given I am on "admin/modules"
    Then I should see 1 "#edit-modules-other-special-menu-items-enable" element
    And the "modules[Other][special_menu_items][enable]" checkbox should be checked

    # Verify the configuration page exists
    And I click on the element with css selector "#edit-modules-other-special-menu-items-links-configure"
    And I should be on "admin/config/system/special_menu_items"
    Then I should see 1 "#edit-special-menu-items-nolink-tag" element

  @safe @api
  Scenario:  Verify that the description on the menu item edit page has changed
    Given I am on "admin/structure/menu/manage/main-menu/add"
    Then I should see text matching "<nolink>"
    Then I should see text matching "<separator>"

  @dev @api @javascript @destructive
  Scenario: Verify special_menu_items module functionality
    And the cache has been cleared
#    # Verify <no link>
#    create a menu item with <no link> as a path,
#    Verify you can't click on the menu item
#    click "show as expanded"
#    verify the sub items can be clicked on
#    # Verify <separator>
#  Create a menu item with <separator> as the path
#    Save and verify <separator>





