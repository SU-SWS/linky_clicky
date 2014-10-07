Feature: Block Class
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Block Class module is working properly

  @api
  Scenario: Block Class
    Given the "block_class" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/block/add"
    When I enter "Block Class Test Block" for "Block title"
    And I enter "[random]" for "Block description"
    And I select "Plain text" from "Text format"
    And I enter "Bacon iz gud" for "Block body"
    And I enter "bacon" for "CSS class(es)"
    And I select "First sidebar" from "Open Framework (default theme)"
    And I press the "Save block" button
    And I should see "The block has been created"
    When I am on the homepage
    Then I should see the "Block Class Test Block" heading in the "First sidebar" region
    And I should see a ".bacon" element