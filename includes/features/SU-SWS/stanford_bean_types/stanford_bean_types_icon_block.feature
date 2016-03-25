@api
Feature: Stanford icon_block bean Type
  In order to ensure that the icon_block bean exists
  As an administrator
  I want to check that the Stanford icon_block bean types module is working correctly

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Stanford icon_block type exists
    And I am on "block/add"
    Then I should see the link "stanford_icon_block" in the "Content Body" region

  @dev @destructive
  Scenario: Create Icon block
    Given I am logged in as a user with the "administrator" role
    And I am on "block/add/stanford-icon-block"
    Then I fill in "Label" with "BeHat Test Icon Block"
    Then I fill in "Title" with "BeHat Test Icon Block Title"
    Then I select "Apple" from "Icon"
    # TODO: Fix this step definition as the iframe does not have an id.
    # Then I fill in "Hello, my name is Nick" in WYSIWYG editor "cke_contents_edit-body-und-0-value-iframe"
    Then I press "Save"
    Then I should see the message "stanford_icon_block BeHat Test Icon Block Title has been created"
