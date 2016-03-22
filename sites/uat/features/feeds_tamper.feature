@contrib
Feature: Feeds Tamper
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Feeds Tamper module is working properly

  @api @javascript @dev @destructive
  Scenario: Feeds Tamper
    Given the "feeds_tamper_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/feeds"
    When I click "Add importer"
    And I enter "Feeds Tamper Test" for "Name"
    And I press the "Create" button
    And I go to "admin/structure/feeds/feeds_tamper_test/settings/FeedsNodeProcessor"
    And I select "Basic page" from "Bundle"
    And I press the "Save" button
    And I go to "admin/structure/feeds/feeds_tamper_test/mapping"
    And I select "Title" from "Source"
    And I select "Title" from "Target"
    And I press the "Save" button
    And I go to "admin/structure/feeds/feeds_tamper_test/tamper"
    And I click "Add plugin"
    And I select "Convert case" from "The plugin to add"
    And I press the "Add" button
    Then I should see "Plugin Convert case was successfully added to Title"
    And I should see "Normal"
    When I go to "admin/structure/feeds/feeds_tamper_test/delete"
    And I press the "Delete" button
    Then I should be on "admin/structure/feeds"
