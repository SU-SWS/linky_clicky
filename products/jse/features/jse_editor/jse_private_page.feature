Feature: Ensure editors can edit and view private pages
  In order to ensure that editors can edit and view private pages
  As an editor
  I want to be able to edit and view private pages

  @api @dev @destructive
  Scenario: Editors can edit and view private pages
  Given I am logged in as a user with the "administrator" role
  And I am on "node/add/stanford-private-page"
  Then I should see "Create Private Page" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Private Page Foo has been created" in the "Console" region
  And I should be on "private/foo"
  Given I am logged in as a user with the "editor" role
  And I am on "private/foo"
  When I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Private Page Bar has been updated" in the "Console" region
  And I should be on "private/bar"
  Given I am logged in as a user with the "administrator" role
  And I am on "private/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Private Page Bar has been deleted" in the "Console" region
