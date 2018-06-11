Feature: Paragraphs
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Paragraphs module is working properly

  @api @destructive @javascript
  Scenario: Enable Paragraphs and add a Paragraph field
    Given the "paragraphs" module is enabled
    And I am logged in as a user with the "administrator" role
    And I go to "admin/structure/types/add"
    And I enter "Paragraphs Test" for "Name"
    And I press the "Save content type" button
    Then I should see "The content type Paragraphs Test has been added."
    When I go to "admin/structure/paragraphs/add"
    And I enter "Test Bundle" for "Name"
    And I press the "Save Paragraph bundle" button
    Then I should see "The paragraph bundle Test Bundle has been added."
    When I go to "admin/structure/types/manage/paragraphs-test/fields"
    And I enter "Test Paragraph Field" for "edit-fields-add-new-field-label"
    And I select "Paragraphs" from "edit-fields-add-new-field-type"
    And I wait for AJAX to finish
    And I select "Embedded" from "edit-fields-add-new-field-widget-type"
    And I press the "Save" button
    And I press the "Save field settings" button
    And I check the box "Test Bundle"
    And I press the "Save settings" button
    Then I should see "Saved Test Paragraph Field configuration"
    When I go to "node/add/paragraphs-test"
    And I enter "Test Node" for "Title"
    And I press the "Add new Paragraph" button
    And I wait for AJAX to finish
    Then I should see "Paragraph type: Test Bundle"
    When I press the "Remove" button
    And I wait for AJAX to finish
    Then I should see "This Paragraph has been removed, press the button below to restore."
    And I should see "Warning: this Paragraph will actually be deleted when you press"
    When I press the "Confirm Deletion" button
    And I wait for AJAX to finish
    Then I should see "No Paragraphs added yet. Select a Paragraph type and press the button below to add one."
    When I press the "Add another Paragraph" button
    And I wait for AJAX to finish
    Then I should see "Paragraph type: Test Bundle"
    When I press the "Save" button
    Then I should see "Paragraphs Test Test Node has been created"
    And I should see "Test Paragraph Field:"
    # Tear down.
    When I go to "admin/structure/types/manage/paragraphs_test/delete"
    And I press the "Delete" button
    Then I should see "The content type Paragraphs Test has been deleted."
    When I go to "admin/structure/paragraphs/test-bundle/delete"
    And I press the "Delete" button
    Then I should see "The paragraph bundle Test Bundle has been deleted."
