Feature: Context List Active
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Context List Active module is working properly

  @api @javascript
  Scenario: Context List Active
    Given the "context_list_active" module is enabled
    And the "context_ui" module is enabled
    And I am logged in as a user with the "administrator" role
    And I wait 2 seconds
    Then I should see the link "Show active contexts"
    When I click "Show active contexts"
    Then I should see "Active contexts"
    And I should see "Context"
    And I should see "Conditions"
    And I should see "Reactions"
    And I should see "Close [X}"
    When I click "Close [X}"
    Then I should not see "Conditions"
    And I should not see "Reactions"
    And I should not see "Close [X}"