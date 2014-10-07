Feature: Email
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Email module is working properly

  @api @javascript
  Scenario: Email
    Given the "email" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/page/fields"
    When I enter "[random]" for "New field label"
    And I select "Email" from "edit-fields-add-new-field-type"
    And I press the "Save" button
    Then I should see "These settings apply to the [random:1] field everywhere it is used"
    When I press the "Save field settings" button
    Then I should see "Updated field [random:1] field settings"