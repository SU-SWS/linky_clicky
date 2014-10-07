Feature: Relation
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Relation module is working properly

  @api @javascript
  Scenario: Relation
    Given the "relation_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/relation/add"
    When I enter "Basic Page" for "Label"
    And I select "Basic page" from "Available source bundles"
    And I press the "Save" button
    Then I should see "The basic_page relation type has been saved."