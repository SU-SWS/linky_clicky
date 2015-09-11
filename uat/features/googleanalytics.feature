@contrib
Feature: Google Analytics
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Google Analytics module is working properly

  @api @javascript @dev @destructive
  Scenario: Google Analytics Configure
    Given the "googleanalytics" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/system/googleanalytics"
    And I enter "UA-12345678-01" for "Web Property ID"
    And I press the "Save" button
    And I should see "The configuration options have been saved."
