@contrib
Feature: Pathauto
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Pathauto module is working properly

  @api @dev @destructive
  Scenario: Pathautho
    # Enable entity_tokens to see if we can trigger the pathauto bug
    Given the "entity_token" module is enabled
    And the "field_collection" module is enabled
    And the "pathauto" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/config/search/path/patterns"
    # This may have to change as our products are removing article and basic_page content types.
    And I enter "articles/[node:title]" for "Pattern for all Article paths"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved"
    When I go to "node/add/article"
    And I enter "Purple Monkey Dishwasher" for "Title"
    And I press the "Save" button
    Then I should be on "articles/purple-monkey-dishwasher"
    When I go to "admin/config/search/path/patterns"
    And I enter "" for "Pattern for all Article paths"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved"
