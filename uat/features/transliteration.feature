Feature: Transliteration
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Transliteration module is working properly

  @api @javascript
  Scenario: Transliteration
    Given the "transliteration" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/appearance/settings"
    And I uncheck the box "Use the default logo"
    And I attach the file "baçon.png" to "edit-logo-upload"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved"
    And the "Path to custom logo" field should contain "bacon.png"