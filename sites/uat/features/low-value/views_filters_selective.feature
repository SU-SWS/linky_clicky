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
    And I press "Add and configure fields"
    Then I check "Exclude from display"
    And I select "Plain text" from "Formatter"
    And I press "Apply"
    Then I click "views-add-filter"
    Then I check "name[field_data_field_test_selective_filters.field_test_selective_filters_tid_selective]"
    And I press "Add and configure filter criteria"
    And I press "Apply"
    Then I press "Update preview"
    And I select "Test Term 1" from "Test Selective Filters (field_test_selective_filters) (selective)"
    And I select "Test Term 2" from "Test Selective Filters (field_test_selective_filters) (selective)"
    #And Option "Test Term 3" should not exist in "Test Selective Filters (field_test_selective_filters) (selective)"
