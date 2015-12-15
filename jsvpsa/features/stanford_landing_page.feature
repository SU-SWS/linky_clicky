Feature: Stanford Landing Page
  
  @api @javascript @dev
  Scenario: Check for Secondary Links field on edit node form
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Add Landing Page" in the "Admin Shortcuts" region
    Then I should see "Secondary Links" in the "Content Body" region