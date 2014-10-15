Feature: Context List
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Context List module is working properly

  @api
  Scenario: Context List
    Given the "context_list" module is enabled
    And the "context_ui" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "admin/structure/context/contexts_list"
    Then I should see "Below is a list of each context and their related settings"
    And I should see "Context"
    And I should see "Conditions"
    And I should see "Reactions"
    And I should see 1 or more "tr" elements