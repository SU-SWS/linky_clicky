Feature: Administration
  In order to ensure that the Jumpstart Academic website has access to help documentation
  As an administrator, site owner, or editor
  I want to check for the access to and options available on adminstration pages.

  @api
  Scenario: Editor access to Jumpstart help
    Given I am logged in as a user with the "editor" role
    When I go to "admin/stanford-jumpstart"
    Then I should see "Request Assistance"

  @api
  Scenario: Site Owner access to Jumpstart help
    Given I am logged in as a user with the "site owner" role
    When I go to "admin/stanford-jumpstart"
    Then I should see "Request Assistance"

  @api
  Scenario: Administrator access to Jumpstart help
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/stanford-jumpstart"
    Then I should see "Request Assistance"
