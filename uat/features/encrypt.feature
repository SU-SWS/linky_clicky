Feature: Encrypt
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Encrypt module is working properly

  @api
  Scenario: Encrypt
    Given the "encrypt" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/system/encrypt"
    Then I should see "Default"
    And I should see "Basic"
    And I should see "Drupal Private Key"
    When I click "edit" in the "Basic" row
    Then I should be on "admin/config/system/encrypt/edit/default"
    When I press the "Save configuration" button
    Then I should be on "admin/config/system/encrypt/list"
    And I should see "The configuration Default has been updated."
