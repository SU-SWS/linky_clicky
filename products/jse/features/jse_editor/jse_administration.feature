Feature: Administration
  In order to ensure that the Jumpstart Engineering website can be configured
  As an editor
  I want to check for the access to and options available on administration pages.

  @api @safe
  Scenario: Editor access to Jumpstart help
    Given I am logged in as a user with the "editor" role
    When I go to "admin/stanford-jumpstart/settings"
    Then I should see "Jumpstart User Guide"
    Then I should see "Request Assistance"
