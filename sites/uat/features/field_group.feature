@contrib
Feature: Field Group
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Field Group module is working properly

  @api @javascript @dev @destructive
  Scenario: Field Group
    Given the "field_group" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/article/fields"
    And I enter "Field Group Test" for "edit-fields-add-new-group-label"
    And I enter "field_group_test" for "edit-fields-add-new-group-group-name"
    And I press the "Save" button
    Then I should see "Your settings have been saved."
    And I should see "New group Field Group Test successfully created."
    And I should be on "admin/structure/types/manage/article/fields"
    When I click "Show row weights"
    And I select "Field Group Test" from "edit-fields-field-tags-parent"
    And I select "Field Group Test" from "edit-fields-field-image-parent"
    And I press the "Save" button
    Then I should see "Your settings have been saved."
    When I go to "node/add/article"
    And I enter "Test article for Field Group" for "Title"
    And I enter "tag1" for "Tags"
    And I attach the file "bacon.png" to "edit-field-image-und-0-upload"
    When I click "Field Group Test"
    And I wait 2 seconds
    Then I should not see "Image"
    When I click "Field Group Test"
    And I wait 2 seconds
    Then I should see "Tags"
    And I should see "Image"
    When I press the "Save" button
    Then I should see "Article Test article for Field Group has been created."
    When I go to "admin/structure/types/manage/article/fields"
    And I click "delete" in the "group_field_group_test" row
    And I press the "Delete" button
    Then I should see "The group Field Group Test has been deleted from the Article content type."
    When I go to "admin/structure/taxonomy/tags"
    And I click "edit" in the "tag1" row
    And I press the "Delete" button
    And I press the "Delete" button
    Then I should see " Deleted term tag1"

