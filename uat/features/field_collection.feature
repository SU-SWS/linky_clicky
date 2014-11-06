Feature: Field Collection
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Field Collection module is working properly

  @api @javascript
  Scenario: Field Collection
    Given the "field_collection" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/field-collections"
    Then I should see "No field collections have been defined yet. To do so attach a field collection field to any entity."
    When I go to "admin/structure/types/manage/page/fields"
    And I enter "[random]" for "New field label"
    And I select "Field collection" from "edit-fields-add-new-field-type"
    And I press the "Save" button
    Then I should see "These settings apply to the [random:1] field everywhere it is used"
    When I press the "Save field settings" button
    Then I should see "Updated field [random:1] field settings"
    When I press the "Save settings" button
    Then I should see "Saved [random:1] configuration"
    When I go to "admin/structure/types/manage/page/fields"
    And I click "delete" in the "Field collection" row
    Then I should see "If you have any content left in this field, it will be lost. This action cannot be undone."
    When I press the "Delete" button
    Then I should see "Field [random:1] has been deleted"
