Feature: Better Exposed Filters
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Better Exposed Filters module is working properly

  @api
  Scenario: Show Format Tips
    Given the "better_exposed_filters" module is enabled
      # should do this with permissions, rather than a role, but drush is failing on assertLoggedInWithPermissions()
    And I am logged in as a user with the "administrator" role
    And I am on "node/add/article"
    Then I should see "Allowed HTML tags"
    And I should see "Allowed Style properties"
    And I should see "Text format"
    When I click "More information about text formats"
    Then I should be on "filter/tips"
    And I should see "Compose tips"
    And I should see "Text Formats"