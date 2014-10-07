Feature: Entity API
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Entity API module is working properly

  @api
  Scenario: Entity API
    Given the "entity" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "/help/entity/README.txt"
    Then I should see the text "This module extends the entity API of Drupal core in order to provide a unified" in the "Content" region