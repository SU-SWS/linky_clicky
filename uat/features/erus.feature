Feature: External Repository Update Status
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the External Repository Update Status module is working properly

  @api
  Scenario: External Repository Update Status
    Given the "erus" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/administration/erus"
    Then I should see "github.com"
    When I click "edit" in the "github.com" row
    Then I should be on "admin/config/administration/erus/github.com"
    And I should see "Entering a username and password is only required if you have private repositories."
    Given the "stanford_wysiwyg" module is enabled
    And the "stanford_sites_helper" module is enabled
    And I am on "admin/reports/updates"
    When I click "Stanford Sites Helper"
    Then I should be on "https://github.com/SU-SWS/stanford_sites_helper"
    When I am on "admin/reports/updates"
    And I click "Stanford WYSIWYG"
    Then I should be on "https://github.com/SU-SWS/stanford_wysiwyg"
