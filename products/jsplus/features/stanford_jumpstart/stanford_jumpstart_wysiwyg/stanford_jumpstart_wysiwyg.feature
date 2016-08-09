Feature: Stanford Jumpstart WYSIWYG Feature
  In order to ensure that the Stanford Jumpstart WYSIWYG is configured correctly
  As an administrator
  I want to check for the existence of configuration

  Background:
    Given I am logged in as a user with the "administrator" role

  @api @safe
  Scenario: Stanford WYSIWYG module is enabled
    Given I am on "admin/modules"
    Then the "edit-modules-stanford-sites-jumpstart-stanford-jumpstart-wysiwyg-enable" checkbox should be checked

  @api @safe
  Scenario: Filter format is available and has the appropriate settings
    Given I am on "admin/config/content/formats"
    Then I should see "Content Editor Text Format"
    Then I am on "admin/config/content/formats/content_editor_text_format"
    Then the "edit-filters-wysiwyg-status" checkbox should be checked
    Then the "edit-filters-filter-htmlcorrector-status" checkbox should be checked
    Then the "edit-filters-pathologic-status" checkbox should be checked
    Then the "#edit-filters-wysiwyg-settings-rule-valid-classes" element should contain "btn-large"
    Then the "#edit-filters-wysiwyg-settings-nofollow-domains" element should contain "stanford.edu"

  @api @safe @javascript
  Scenario: The WYSIWYG editor appears on a node edit page
    Given I am on "admin/content"
    Then I select "Stanford Page" from "Type"
    Then I press the "Apply" button
    Then I wait for AJAX to finish
    Then I click on the element with css selector ".views-field-edit-node a"
    Then I should see 1 "#edit-body-und-0-value" element
