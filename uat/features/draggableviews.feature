@contrib
Feature: Draggable Views
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Draggable Views module is working properly

  @api @safe @deploy
  Scenario: Draggable Views README
    Given the "draggableviews" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "help/draggableviews/README.txt"
    Then I should see "This module provides dragging entities and saving their order."

  @api @javascript @dev @destructive
  Scenario: Draggable Views
    Given the "draggableviews" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/add"
    And I enter "draggableviews-test" for "View name"
    And I select "Table" from "Display format"
    And I wait for AJAX to finish
    When I press the "Continue & edit" button
    Then I should be on "admin/structure/views/view/draggableviews_test"
    When I click "views-add-field"
    And I wait for AJAX to finish
    And I check the box "Draggableviews: Content"
    And I wait for AJAX to finish
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    And I click "views-add-sort"
    And I wait for AJAX to finish
    And I check the box "Draggableviews: Weight"
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    And I press the "Save" button
    Then I should see "The view draggableviews-test has been saved"
    When I go to "draggableviews-test"
    When I go to "admin/structure/views/view/draggableviews_test/delete"
    And I press the "Delete" button
    Then I should see "The view has been deleted"


