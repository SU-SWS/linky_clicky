@contrib
Feature: WYSIWYG
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the WYSIWYG module is working properly

  @api @javascript @dev @content @destructive
  Scenario: WYSIWYG
    Given the "wysiwyg" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "node/add/page"
    And I enter "Test" for "Title"
    And I select "Filtered HTML" from "Text format"
    And the iframe in element "cke_contents_edit-body-und-0-value" has id "cke_contents_edit-body-und-0-value-iframe"
    And I fill in "Bacon ipsum dolor sit amet deserunt fatback in venison" in WYSIWYG editor "cke_contents_edit-body-und-0-value-iframe"
    And I press the "Save" button
    Then I should see "Basic page Test has been created"

  @api @javascript @content @dev @destructive
  Scenario: WYSIWYG Do Not Add Blank HTML to Empty Text Areas
    Given the "wysiwyg" module is enabled
    And I am logged in as a user with the "administrator" role
    And I go to "admin/structure/types/manage/page/fields"
    When I enter "WYSIWYG Blank Field Test" for "New field label"
    And I select "Long text" from "edit-fields-add-new-field-type"
    And I press the "Save" button
    Then I should see "These settings apply to the WYSIWYG Blank Field Test field everywhere it is used"
    When I press the "Save field settings" button
    Then I should see "Updated field WYSIWYG Blank Field Test field settings"
    When I select the "Filtered text (user selects text format)" radio button
    And I press the "Save settings" button
    Then I should see "Saved WYSIWYG Blank Field Test configuration"
    When I go to "node/add/page"
    And I enter "Test" for "Title"
    And I select "Filtered HTML" from "Text format"
    And the iframe in element "cke_contents_edit-body-und-0-value" has id "cke_contents_edit-body-und-0-value-iframe"
    And I fill in "Bacon ipsum dolor sit amet deserunt fatback in venison" in WYSIWYG editor "cke_contents_edit-body-und-0-value-iframe"
    And I press the "Save" button
    Then I should not see "WYSIWYG Blank Field Test"
    And I should see "Basic page Test has been created"
    When I go to "admin/structure/types/manage/page/fields/field_wysiwyg_blank_field_test/delete"
    And I press the "Delete" button
    Then I should see "The field WYSIWYG Blank Field Test has been deleted from the Basic page content type."
