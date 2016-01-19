@contrib
Feature: Menu Position
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Menu Position module is working properly

  @api @dev @destructive @javascript
  Scenario: Menu Position
    Given the "menu_position" module is enabled
    And I am logged in as a user with the "administrator" role
    And I go to "node/add/page"
    And I enter "Page Two" for "Title"
    And I check the box "Provide a menu link"
    And I press the "Save" button
    And I go to "admin/structure/menu-position"
    And I click "Add menu position rule"
    And I enter "Menu Position Test" for "Administrative title"
    And I select "-- Page Two" from "Parent menu item"
    And I check the box "Article"
    And I press the "Save" button
    And I go to "node/add/article"
    And I enter "Test Article" for "Title"
    And I press the "Save" button
    Then the ".active-trail" element should contain "Page Two"
    When I go to "admin/structure/menu-position"
    And I click "delete" in the "Menu Position Test" row
    And I press the "Delete" button
    Then I should see "The Menu Position Test rule has been deleted"
