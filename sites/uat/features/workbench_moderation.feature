@contrib
Feature: Workbench Moderation
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Workbench Moderation module is working properly

  @api @javascript @dev @destructive
  Scenario: Workbench Moderation
    Given the "workbench_moderation" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "admin/reports/status/rebuild"
    Then I should see "This action rebuilds all permissions on site content, and may be a lengthy process. This action cannot be undone."
    When I press the "Rebuild permissions" button
    And I wait for the batch job to finish
    Then I should be on "admin/reports/status"
    And I should see "Content permissions have been rebuilt."
    When I go to "admin/config/workbench/moderation"
    Then I should see "These are the states through which a node passes in order to become published"
    And I should see "draft"
    And I should see "needs_review"
    And I should see "published"
    When I press the "Save" button
    Then I should see "Your settings have been saved."
    And I should see "Depending on the changes you have made it may be necessary to reconfigure Views that leverage Workbench Moderation such as workbench_moderation"
    # Disable when finished.
    Given the "workbench_moderation" module is disabled
