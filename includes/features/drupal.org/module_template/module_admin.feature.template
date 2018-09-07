Feature: _new_module_ administration module
# https://www.drupal.org/project/_new_module_
  In order to ensure the site is functioning as expected
  As administrator
  I want to verify functionality of the _new_module_ module

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe @api
  Scenario: Verify _new_module_ module is enabled
    And I am on "admin/modules"
    Then I should see 1 "#edit-modules-_new_module_-enable" element
    And the "modules[Context][_new_module_][enable]" checkbox should be checked

    # Verify the configuration page exists
    And I click on the element with css selector "#edit-modules-other-_new_module_-links-configure"
    And I should be on "admin/config/system/_new_module_"
    Then I should see 1 "#_new_module_" element


  @dev @api @javascript @destructive
  Scenario: Verify _new_module_ module functionality
    And the cache has been cleared
