Feature: Add to Cal administration module
  In order to ensure the site is functioning as expected
  As administrator
  I want to verify functionality of the Add to Cal module

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe @api
  Scenario: Verify module is enabled
    And I am on "admin/modules"
    Then I should see 1 "#edit-modules-context-context-http-header-enable" element
    And the "modules[Context][context_http_header][enable]" checkbox should be checked

  @dev @api @javascript @destructive
  Scenario: Verify module functionality
    And the cache has been cleared
