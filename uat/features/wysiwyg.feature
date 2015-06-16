Feature: WYSIWYG
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the WYSIWYG module is working properly

  @api @javascript @live
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
