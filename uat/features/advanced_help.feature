Feature: Advanced Help
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Advanced Help module is working properly

#  @api @javascript
@api
  Scenario: Advanced Help
    Given the "advanced_help" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/help/ah/advanced_help"
    Then I should see "Using advanced help"
    And I should see "Advanced help .ini file format"
    And I should see "Translating advanced help"
    And I should see "Why advanced help?"
    When I click "Using advanced help"
    Then I should be on "help/advanced_help/using-advanced-help"
    And I should see "The Advanced help module provides a framework that allows module and theme developers integrate help texts in a Drupal site"
    When I move backward one page
    And I click "Advanced help .ini file format"
    Then I should be on "help/advanced_help/ini-file"
    And I should see "The advanced help configuration file is in simple .ini file format"
    When I move backward one page
    And I click "Translating advanced help"
    Then I should be on "help/advanced_help/translation"
    And I should see "To translate a help-file indexed by Advanced help, first create a directory translations/help/language in the project's root directory"
    When I move backward one page
    And I click "Why advanced help?"
    Then I should be on "help/advanced_help/why-advanced-help"
    And I should see "The Advanced help framework was designed to replace the original Drupal help system"
