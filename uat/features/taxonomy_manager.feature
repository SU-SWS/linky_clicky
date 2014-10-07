Feature: Taxonomy Manager
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Taxonomy Manager module is working properly

  @api @javascript
  Scenario: Taxonomy Manager
    Given the "taxonomy_manager" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/taxonomy_manager/voc/tags"
    When I fill in "Terms" with:
    """
  dog
  cat
  sheep
  cow
  turtle
  """
    And I press the "Add" button
    Then I should see "Terms added: dog, cat, sheep, cow, turtle"
    When I click "turtle"
    Then the "Name" field should contain "turtle"
    When I check the box "turtle"
    And I check the box "dog"
    And I check the box "cat"
    And I check the box "sheep"
    And I check the box "cow"
    And I press the "Delete" button
    And I press the "edit-delete-delete" button
    And I press the "Delete" button
    Then I should see "Deleted terms: cat, cow, dog, sheep, turtle"