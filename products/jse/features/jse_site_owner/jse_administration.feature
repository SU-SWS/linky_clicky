Feature: Administration
  In order to ensure that the Jumpstart Engineering website can be configured
  As a site owner
  I want to check for the access to and options available on administration pages.

  @api @safe
  Scenario: Site Owner access to Jumpstart help
    Given I am logged in as a user with the "site owner" role
    When I go to "admin/stanford-jumpstart/settings"
    Then I should see "Jumpstart User Guide"
    Then I should see "Request Assistance"
