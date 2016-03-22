@contrib
Feature: CSS Injector
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the CSS Injector module is working properly

  @api @content @dev @destructive
  Scenario: CSS Injector
    Given the "css_injector" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    When I go to "admin/config/development/css-injector/add"
    And I enter "[random]" for "Title"
    And I enter ".foo {}" for "CSS code"
    And I press the "Save" button
    Then I should see "Your CSS injection rule [random:1] was saved."
