Feature: Module Filter
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Module Filter module is working properly

  @api @javascript
  Scenario: Module Filter
    Given the "module_filter" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/modules"
    Then I should see "Google Analytics"
    When I enter "better" for "Filter list"
    Then I should see "Better Exposed Filters"
    And I should see "Better Formats"
    And I should not see "Google Analytics"