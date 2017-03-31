Feature: Ensure editors can edit landing pages
  In order to ensure that editors can edit and delete landing pages
  As an editor
  I want to be able to edit landing pages

  @api @dev @destructive @javascript
  Scenario: Ensure editors can edit landing pages
  Given I am logged in as a user with the "administrator" role
  And I am on "node/add/stanford-landing-page"
  Then I should see "Create Landing Page" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  When I click "Show Add/Edit Image"
  And I wait for AJAX to finish
  Then I should see "Source Info" in the "Content Body" region
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Landing Page Foo has been created" in the "Console" region
  And I should be on "foo"
  Given I am logged in as a user with the "editor" role
  And I am on "foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Landing Page Bar has been updated" in the "Console" region
  And I should be on "bar"
  Given I am logged in as a user with the "administrator" role
  And I am on "bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Landing Page Bar has been deleted" in the "Console" region
