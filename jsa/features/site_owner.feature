Feature: Site Owner
  In order to ensure that the Site Owner can create and edit
  As a Site Owner
  I want to check that I can access, edit, and create site content

  @api @javascript
  Scenario: Clicking on Manage Content
    Given I am logged in as a user with the "site owner" role
    And I wait for the Site Actions drop down to appear
    When I click "Manage Content" in the "Admin Shortcuts" region
    Then I should see "Filter by Title" in the "Content Body" region
    And I should see "Manage All Content" in the "Branding" region

  @api @javascript
  Scenario: Adding a new page through the Site Actions menu
    Given I am logged in as a user with the "site owner" role
    And I wait for the Site Actions drop down to appear
    When I click "Add Page" in the "Admin Shortcuts" region
    Then I should see "Create Stanford Page" in the "Branding" region

  @api @javascript
  Scenario: Adding a new page and upload an image
    Given I am logged in as a user with the "site owner" role
    And I am on "node/add/stanford-page"
    And I click "Show Add/Edit Image"
    #And I click on “Choose File”  in the "Content Body" region
    Then I should see "Source Info" in the "Content Body" region
