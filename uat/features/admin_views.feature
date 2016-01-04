@contrib
Feature: Administration Views
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Administration Views module is working properly

  @api @safe @deploy @javascript
  Scenario: Administration Views
    Given the "admin_views" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/content"
    Then I should see a ".views-field-title" element
    Given I am logged in as a user with the "authenticated user" role
    And I am on "admin/content"
    Then I should not see a ".views-field-title" element
    And I should see "Access Denied"
    Given I am an anonymous user
    And I am on "admin/content"
    Then I should not see a ".views-field-title" element
