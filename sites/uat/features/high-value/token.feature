@contrib
Feature: Token
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Token module is working properly

  @api @dev @destructive
  Scenario: Token
    Given the "token" module is enabled
    And the "pathauto" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/search/path/patterns"
    And I enter "[node:content-type]/[node:title]" for "Pattern for all Article paths"
    And I press the "Save configuration" button
    When I go to "node/add/article"
    And I enter "Token Test" for "Title *"
    And I press the "Save" button
    Then I should be on "article/token-test"
    When I go to "admin/config/search/path/patterns"
    And I enter "" for "Pattern for all Article paths"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved"
