Feature: Draggable Views
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Draggable Views module is working properly

  @api
  Scenario: Draggable Views README
    Given the "draggableviews" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "help/draggableviews/README.txt"
    Then I should see "help/draggableviews/README.txt"

  @api @javascript
  Scenario: Draggable Views
    Given the "draggableviews" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/add"
    And I enter "[random]" for "View name"
    And I select "Table" from "Display format"
    And I wait for AJAX to finish
    And I enter "draggableviews-test" for "edit-page-path--2"
    When I press the "Continue & edit" button
    Then I should be on "admin/structure/views/view/dv_test"
    When I click "views-add-field"
    And I check the box "Draggable Views: Content"
    And I press the "Apply (all displays)" button
    And I click "views-add-sort"
    And I check the box "Draggable Views: Weight"
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    And I press the "Apply (all displays)" button
    And I press the "Save" button
    Then I should see "The view draggableviews-test has been saved"
    When I go to "draggableviews-test"

