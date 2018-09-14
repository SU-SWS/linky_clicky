Feature: Add to Cal administration module
  In order to ensure the site is functioning as expected
  As administrator
  I want to verify functionality of the Add to Cal module

  Background:
    Given I am logged in as a user with the "administrator" role


  @dev @api @javascript @destructive
  Scenario: Verify module functionality
    Given the "addtocal" module is enabled
    And the cache has been cleared

    Given I am on "admin/structure/types/add"
    And I fill in "edit-name" with "Behat Add to Cal"
    And I press "Save"
    Given I am on "admin/structure/types/manage/behat-add-to-cal/fields"
    And I fill in "edit-fields-add-new-field-label" with "Behat Date"
    And I select "Date" from "edit-fields-add-new-field-type"
    And I select "Text field" from "edit-fields-add-new-field-widget-type"
    And I press "Save"
    And I am on "admin/structure/types/manage/behat-add-to-cal/fields/field_behat_date/field-settings"
    And I press "Save"
    Given I am on "admin/structure/types/manage/behat-add-to-cal/display"
    And I select "Add to Cal" from "edit-fields-field-behat-date-type"
    And I press "Save"

    # Add a date field
    Given I am on "node/add/behat-add-to-cal"
    And I fill in "Title" with "Behat Date Test"
    And I press "Save"
    And I press "Save"
    Then I should see "Add to calendar"

    # Clean up
    Given I am on "admin/structure/types/manage/behat-add-to-cal/fields"
    When I click "delete" in the "Behat Date" row
    And I press the "Delete" button
    Then I should see "deleted"
    Given I am on "admin/structure/types"
    Given I click "delete" in the "behat_add_to_cal" row
    And I press the "Delete" button
    Then I should see "deleted"


