Feature: Pathauto
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Pathauto module is working properly

  @api
  Scenario: Pathautho
    Given the "pathauto" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    When I go to "admin/config/search/path/patterns"
    And I enter "articles/[node:title]" for "Pattern for all Article paths"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved"
    When I go to "node/add/article"
    And I enter "Purple Monkey Dishwasher" for "Title"
    And I press the "Save" button
    Then I should be on "articles/purple-monkey-dishwasher"