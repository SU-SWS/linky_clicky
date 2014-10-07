Feature: Insert
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Insert module is working properly

  @api @javascript
  Scenario: Insert
    Given the "insert" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/page/fields"
    When I enter "[random]" for "New field label"
    And I select "File" from "edit-fields-add-new-field-type"
    And I press the "Save" button
    Then I should see "These settings apply to the [random:1] field everywhere it is used"
    When I press the "Save field settings" button
    Then I should see "Updated field [random:1] field settings"
    When I click "Show Insert"
    And I check the box "Enable insert button"
    When I press the "Save settings" button
    Then I should see "Saved [random:1] configuration"