Feature: Universally Unique ID
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Universally Unique ID module is working properly

  @api
  Scenario: Universally Unique ID
    Given the "uuid" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/system/uuid"
    And I press the "Create missing UUIDs" button
    Then I should see " Generated missing UUIDs" in the "Console" region
