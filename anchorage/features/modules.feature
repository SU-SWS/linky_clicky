Feature: Modules
  In order to readily react to changing communication needs within my realm
  As a site owner
  I want to be able to enable and disable various Drupal modules in a timely manner

  @api @javascript @live
  Scenario: Load modules page
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/modules"
    Then I should see "Jumpstart"
