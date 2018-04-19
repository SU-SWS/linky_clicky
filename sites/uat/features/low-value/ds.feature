@contrib
Feature: Display Suite
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Display Suite module is working properly

  @api @dev @destructive @javascript
  Scenario: Display Suite
    Given the "ds" module is enabled
    And the "ds_ui" module is enabled
    And the "ds_extras" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/ds/view_modes"
    And I click "Add a view mode"
    When I enter "ifbpcnojcqmnmnro" for "Label"
    And I check the box "Node"
    And I press the "Save" button
    Then I should see "The view mode ifbpcnojcqmnmnro has been saved"
    When I go to "admin/structure/types/manage/article/display"
    And I click "Custom display settings"
    And I wait for AJAX to finish
    And I check the box "ifbpcnojcqmnmnro"
    And I press the "Save" button
    Then I should see "Your settings have been saved"
    When I go to "admin/structure/types/manage/article/display/ifbpcnojcqmnmnro"
    When I select "One column" from "Select a layout"
    And I wait for AJAX to finish
    And I press the "Save" button
    Then I should see "Your settings have been saved"
    And I should be on "admin/structure/types/manage/article/display/ifbpcnojcqmnmnro"
    When I select "Disabled" from "edit-fields-field-tags-region"
    And I wait for AJAX to finish
    And I press the "Save" button
    Then I should see "Your settings have been saved"
    When I am on "admin/structure/ds/list/extras"
    And I click "Other"
    And I wait for AJAX to finish
    And I check the box "View mode per node"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved"
    When I go to "node/add/article"
    And I enter "Test DS View Mode" for "Title"
    And I enter "foo" for "Tags"
    And I wait for AJAX to finish
    And I press the "Save" button
    Then I should be on "test-ds-view-mode"
    Then I should see "Test DS View Mode"
    And I should see "tags"
    And I should see "foo"
    When I go to "test-ds-view-mode?v=ifbpcnojcqmnmnro"
    Then I should see "Test DS View Mode"
    And I should not see "tags"
    And I should not see "foo"
    When I go to "admin/structure/ds/view_modes/delete/ifbpcnojcqmnmnro"
    And I press the "Delete" button
    Then I should see "The view mode ifbpcnojcqmnmnro has been deleted"

