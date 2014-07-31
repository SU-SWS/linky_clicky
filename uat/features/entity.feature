Feature: modules
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that modules are working properly

@api
Scenario: Entity API
  Given I am logged in as a user with the "administrator" role
  And I am on "/help/entity/README.txt"
  Then I should see the text "This module extends the entity API of Drupal core in order to provide a unified" in the "Content" region
  

