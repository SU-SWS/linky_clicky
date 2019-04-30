@contrib
Feature: Views Filters Selective
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Views Filters Selective module is working properly

  @api @javascript
  Scenario: Views Filters Selective
    Given the "views_filters_selective" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "/admin/structure/taxonomy/add"
    Then I fill in "Name" with "Test Taxonomy Term Vocab"
    And I press "Save"
    Then I am on "/admin/structure/taxonomy/test_taxonomy_term_vocab/add"
    And I fill in "Name" with "Test Term 1"
    And I press "Save"
    Then I am on "/admin/structure/taxonomy/test_taxonomy_term_vocab/add"
    And I fill in "Name" with "Test Term 2"
    And I press "Save"
    Then I am on "/admin/structure/taxonomy/test_taxonomy_term_vocab/add"
    And I fill in "Name" with "Test Term 3"
    And I press "Save"
    Then I am on "/admin/structure/types/add"
    And I fill in "Name" with "Behat Test Type"
    And I press "Save and add fields"
    Then I fill in "fields[_add_new_field][label]" with "Test Selective Filters"
    And I wait for AJAX to finish
    And I select "Term reference" from "fields[_add_new_field][type]"
    And I wait for AJAX to finish
    And I select "Select list" from "fields[_add_new_field][widget_type]"
    Then I press "Save"
    And I select "Test Taxonomy Term Vocab" from "Vocabulary"
    And I press "Save field settings"
    And I press "Save settings"
    Then I am on "/node/add/behat-test-type"
    And I fill in "Title" with "Test content 1"
    And I select "Test Term 1" from "Test Selective Filters"
    Then I press "Save"
    Then I am on "/node/add/behat-test-type"
    And I fill in "Title" with "Test content 2"
    And I select "Test Term 1" from "Test Selective Filters"
    Then I press "Save"
    Then I am on "/node/add/behat-test-type"
    And I fill in "Title" with "Test content 3"
    And I select "Test Term 2" from "Test Selective Filters"
    Then I press "Save"
    Then I am on "/admin/structure/views/add"
    And I fill in "View name" with "Behat test view"
    And I wait for AJAX to finish
    And I select "Behat Test Type" from "show[type]"
    And I wait for AJAX to finish
    And I fill in "Path" with "behat-test-view"
    And I select "fields" from "page[style][row_plugin]"
    Then I press "Continue & edit"
    Then I click "views-add-field"
    And I wait for AJAX to finish
    And I check "Test Selective Filters"
    And I press "Apply (all displays)"
    And I wait for AJAX to finish
    Then I check "Exclude from display"
    And I select "Plain text" from "Formatter"
    And I wait for AJAX to finish
    And I press "Apply (all displays)"
    And I wait for AJAX to finish
    Then I click "views-add-filter"
    And I wait for AJAX to finish
    And I check "Content: Test Selective Filters (field_test_selective_filters) (selective)"
    And I press "Apply (all displays)"
    And I wait for AJAX to finish
    And I press "Apply (all displays)"
    And I wait for AJAX to finish
    Then I press "Update preview"
    And I wait for AJAX to finish
    And I select "Test Term 1" from "Test Selective Filters (field_test_selective_filters) (selective)"
    And I select "Test Term 2" from "Test Selective Filters (field_test_selective_filters) (selective)"
    And I wait for AJAX to finish
    And Option "Test Term 3" should not exist in "edit-field-test-selective-filters-tid-selective"
    # Clean up. We never saved the View, and nodes get deleted in a teardown step.
    # Delete terms.
    When I go to "admin/structure/taxonomy_manager/voc/test_taxonomy_term_vocab"
    And I check "Test Term 1"
    And I check "Test Term 2"
    And I check "Test Term 3"
    And I press the "Delete" button
    And I press "edit-delete-delete"
    And I press the "Delete" button
    # Delete vocabulary.
    And I go to "admin/structure/taxonomy/test_taxonomy_term_vocab/edit"
    And I press the "Delete" button
    And I press the "Delete" button
    # Delete content type.
    When I go to "admin/structure/types/manage/behat_test_type/delete"
    And I press the "Delete" button

