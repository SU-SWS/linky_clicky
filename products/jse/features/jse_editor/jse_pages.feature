Feature: Ensure editors can edit pages and access manage page
  In order to ensure that editors can edit and manage pages
  As an editor
  I want to be able to edit and access manage pages

  @api @safe
  Scenario: Access manage all content as an editor
  Given I am logged in as a user with the "editor" role
  And I am on "admin/manage/page"
  Then I should see "Manage Stanford Page" in the "Branding" region
  And I should see "edit" in the "Content Body" region
  And I should see "view" in the "Content Body" region
  When I click "edit"
  Then I should see "Edit" in the "Branding" region

  @api @dev @destructive @javascript
  Scenario: Ensure editors can edit pages
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
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Stanford Page Bar has been updated" in the "Console" region
  And I should be on "bar"
  Given I am logged in as a user with the "administrator" role
  And I am on "bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Stanford Page Bar has been deleted" in the "Console" region
