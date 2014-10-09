Feature: Site Owner
  In order to ensure that the Site Owner can create and edit
  As a Site Owner
  I want to check that I can access, edit, and create site content

  @api @javascript
  Scenario: Clicking on Manage Content
    Given I am on the homepage
    And I am logged in as a user with the "site owner" role
    Then I wait for the Site Actions drop down to appear
    When I click on the text "Manage Content"
    Then I wait 5 seconds
    Then I should see "Filter by Title" in the "Content Body" region

