Feature: Editor
  In order to ensure that the Jumpstart Academic administration functions are working properly
  As a Editor
  I want to check for my ability to complete my tasks

  @api @javascript
  Scenario: Create Stanford event
    Given I am logged in as a user with the "editor" role
    And I wait for the Site Actions drop down to appear
    And I click "Add Stanford Event" in the "Admin Shortcuts" region
    Then I should see "Create Stanford Event" in the "Branding" region

  @api @javascript
  Scenario: Create news item
    Given I am logged in as a user with the "editor" role
    And I wait for the Site Actions drop down to appear
    And I click "Add News Item" in the "Admin Shortcuts" region
    Then I should see "Create News Item" in the "Branding" region
