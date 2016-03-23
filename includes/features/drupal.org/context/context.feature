Feature: module
  In order to ensure the site is functioning as expected
  As administrator
  I want to verify functionality of the context module

  @api @javascript @destructive @dev
  Scenario: Enable Context HTTP Header
    Given the "context_http_header" module is enabled
    And the "context_ui" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "/admin/structure/context"
    And I click "Add"
    When I enter "test" for "Name"
    And I select "Sitewide context" from "edit-conditions-selector"
    And I check the box "edit-conditions-plugins-sitewide-values-1"
    And I select "HTTP Headers" from "edit-reactions-selector"
    And I enter "X-Infinite-Improbability-Drive:42" for "edit-reactions-plugins-http-header-http-header-extra-headers"
    And I press "Save"
    Then I should see "test has been created"