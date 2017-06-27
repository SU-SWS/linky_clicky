@contrib
Feature: Field Collection
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Field Collection module is working properly

  @api @javascript @dev @destructive
  Scenario: Field Collection
    Given the "field_collection" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    When I go to "admin/structure/types/manage/page/fields"
    And I enter "Test Field Collection" for "New field label"
    And I select "Field collection" from "edit-fields-add-new-field-type"
    And I press the "Save" button
    Then I should see "These settings apply to the Test Field Collection field everywhere it is used"
    When I press the "Save field settings" button
    Then I should see "Updated field Test Field Collection field settings"
    When I press the "Save settings" button
    Then I should see "Saved Test Field Collection configuration"
    When I go to "admin/structure/types/manage/page/fields/field_test_field_collection/delete"
    Then I should see "If you have any content left in this field, it will be lost. This action cannot be undone."
    When I press the "Delete" button
    Then I should see "The field Test Field Collection has been deleted from the Basic page content type"
