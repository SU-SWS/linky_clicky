@contrib
Feature: Block Title Link
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Block title Link module is working properly

  @api @destructive @dev @javascript
  Scenario: Block Title Link
    Given the "block_titlelink" module is enabled
    And I am logged in as a user with the "administrator" role
    And I go to "admin/structure/block"
    And I click "Add block"
    And I enter "Block Title Link Test" for "Block title"
    And I enter "Block Title Link Test" for "Block description"
    # Assign an id to an element without an id. Tricksy little hobbitses.
    And the iframe in element "cke_contents_edit-body-value" has id "cke_contents_edit-body-value-iframe"
    And I fill in "This is a test block for the Block Title Link module" in WYSIWYG editor "cke_contents_edit-body-value-iframe"
    # Between 7.x-1.3 and 7.x-1.5 the default collapsed state of this fieldset changed. The below works for 7.x-1.5
    And I click "Block Title Link Settings"
    And I wait for AJAX to finish
    And I enter "user" for "Title Path"
    And I select "First sidebar" from "Stanford Light (default theme)"
    And I press the "Save block" button
    When I go to the homepage
    And I click "Block Title Link Test"
    Then I should be on "user"
    When I go to "admin/structure/block"
    And I click "delete" in the "Block Title Link Test" row
    Then I should see "Are you sure you want to delete the block Block Title Link Test?"
    When I press the "Delete" button
    Then I should see "The block Block Title Link Test has been removed."



