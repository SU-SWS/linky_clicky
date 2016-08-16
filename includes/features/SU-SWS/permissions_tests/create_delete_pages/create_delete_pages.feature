Feature: Ensure Site Owners can create, edit and delete pages
  In order to ensure that a site owners can create, edit and delete pages
  As a site owner
  I want to be able create, edit and delete pages

  Background:
  Given I am logged in as a user with the "site owner" role

  @api @dev @destructive @javascript
  Scenario: Create, edit, then delete page
  When I wait for the Site Actions drop down to appear
  And I click "Add Page" in the "Admin Shortcuts" region
  Then I should see "Create Stanford Page" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  When I click "Show Add/Edit Image"
  And I wait 2 seconds
  Then I should see "Source Info" in the "Content Body" region
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Stanford Page Foo has been created" in the "Console" region
  And I should be on "foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Stanford Page Bar has been updated" in the "Console" region
  And I should be on "bar"
  And I am on "/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Stanford Page Bar has been deleted" in the "Console" region
