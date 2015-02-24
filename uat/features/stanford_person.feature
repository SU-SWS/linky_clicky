Feature: Stanford Person
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Person module is working properly

  @api @javascript
  Scenario: Stanford Person
    Given the "stanford_person" module is enabled
    And the "entity_token" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-person"
    When I enter "Leland" for "First name *"
    And I enter "Stanford" for "Last Name *"
    And I check the box "Faculty"
    And I press the "Save" button
    Then I should be on "people/leland-stanford"
    And I should see "Person Leland Stanford has been created"
