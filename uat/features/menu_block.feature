Feature: Menu Block
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Menu Block module is working properly

  @api
  Scenario: Menu Block
    Given the "menu_block" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/block/add-menu-block"
    When I select "Main menu" from "Menu"
    And I select "1st level (primary)" from "Starting level"
    And I select "Unlimited" from "Maximum depth"
    And I select "Second sidebar" from "Open Framework (default theme)"
    And I press the "Save block" button
    And I should see "The block has been created"
    When I am on the homepage
    Then I should see the "Main menu" heading in the "Second sidebar" region
    And I should see the link "Home" in the "Second sidebar" region