@contrib
Feature: Entity Connect
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Entity Connect module is working properly

  @api @safe @deploy @javascript
  Scenario: Entity Connect
    Given the "entityreference" module is enabled
    Given the "entityconnect" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/page/fields"
    And I enter "[random]" for "New field label"
    And I select "Entity Reference" from "edit-fields-add-new-field-type"
    And I press the "Save" button
    And I check the box "edit-field-settings-handler-settings-target-bundles-article"
    And I press the "Save field settings" button
    And I select the "Yes" radio button
    And I wait for AJAX to finish
    And I select the "Text only" radio button
    And I wait for AJAX to finish
    And I press the "Save settings" button
    And I go to "node/add/page"
    And I enter "[random]" for "Title"
    And I press the "New content" button
    And I enter "[random]" for "Title"
    And I press the "Save" button
    When I press the "Save" button
    Then I should see "Basic page [random:2] has been created."

