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
  Scenario: Verify that I can add header text that is not clickable
    Then show me the HTML page
    Given I am on "admin/structure/menu/manage/navigation/add"
    Then I fill in "edit-link-title" with "Behat Special Menu Items <nolink>"
    Then I fill in "edit-link-path" with "<nolink>"
    Then I press the "Save" button
    Then I should be on "admin/structure/menu/manage/navigation"
    Then I should see a ".nolink" element
    And I should not see the link "Behat Special Menu Items <nolink>"
    Given I am on "admin/structure/menu/manage/navigation"
    When I click "delete" in the "Behat Special Menu Items <nolink>" row
    And I press the "Confirm" button
    Then I should see "The menu link Behat Special Menu Items <nolink> has been deleted."

  @dev @api @javascript @destructive
  Scenario: Verify that I can add a horizontal rule or separator
    Given I am on "admin/structure/menu/manage/navigation/add"
    Then I fill in "edit-link-title" with "Behat Special Menu Items <separator>"
    Then I fill in "edit-link-path" with "<separator>"
    Then I press the "Save" button
    Then I should be on "admin/structure/menu/manage/navigation"
    Then I should see a ".separator" element
    And I should not see the link "Behat Special Menu Items <separator>"
    When I click "delete" in the "separator" row

# Todo
#  Scenario: Verify that I can add menu items that are clickable below the header text
#  Scenario: Verify that I can add menu items that are clickable below the horizontal rule or separator#    # Verify <no link>

