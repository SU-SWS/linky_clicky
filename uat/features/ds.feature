Feature: Display Suite
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Display Suite module is working properly

  @api @javascript
  Scenario: Display Suite
    Given the "ds" module is enabled
    And the "ds_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/ds/view_modes"
    And I click "Add a view mode"
    When I enter "[random]" for "Label"
    And I check the box "Node"
    And I press the "Save" button
    Then I should see "The view mode [random:1] has been saved"
