Feature: Ensure Editors can edit in full HTML
  In order to ensure that editors can select to edit in full HTML
  As an editor
  I want to be able to edit in full HTML

  @api @dev @destructive @javascript
  Scenario: Ensure Editors can select text input option as full HTML
  Given I am logged in as a user with the "administrator" role
  And I am on "node/add/stanford-page"
  Then I should see "Create Stanford Page" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  When I click "Show Add/Edit Image"
  And I wait for AJAX to finish
  Then I should see "Source Info" in the "Content Body" region
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Stanford Page Foo has been created" in the "Console" region
  And I should be on "foo"
  Given I am logged in as a user with the "editor" role
  And I am on "foo"
  And I click "Edit" in the "Content Head" region
  And I select "Full HTML" from "edit-body-und-0-format--2"
  And I press the "Save" button
  Then I should be on "foo"
  And I should see "Stanford Page Foo has been updated" in the "Console" region
  Given I am logged in as a user with the "administrator" role
  And I am on "foo"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see "Stanford Page Foo has been deleted" in the "Console" region
