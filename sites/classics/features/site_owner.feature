Feature: Site Owner
  In order to ensure that the Site Owner can create and edit
  As a Site Owner
  I want to check that I can access, edit, and create site content

  @api @javascript @safe
  Scenario: Clicking on Manage Content
    Given I am logged in as a user with the "site owner" role
    And I wait for the Site Actions drop down to appear
    When I click "Manage Content"
    Then I should see "Filter by Title" in the "Content Body" region

