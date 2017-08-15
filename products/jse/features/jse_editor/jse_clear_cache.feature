Feature: Ensure Editors can clear the site cache
  In order to ensure that editors can clear the site cache
  As an editor
  I want to be able to clear the site cache

    @api @dev @destructive @javascript
    Scenario: Clear site cache as editor
    Given I am logged in as a user with the "editor" role
    When I wait for the Site Actions drop down to appear
    And I click "Clear Site Cache" in the "Admin Shortcuts" region
    Then I should see "Site Cache Cleared" in the "Console" region
