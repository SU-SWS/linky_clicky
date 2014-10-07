Feature: Webform
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Webform module is working properly


  @api
  Scenario: Webform
    Given the "webform" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "node/add/webform"
    When I enter "[random]" for "Title"
    And I press the "Save" button
    Then I should see the link "Form components"
    And I should see the link "Conditionals"
    And I should see the link "E-mails"
    And I should see the link "Form settings"
