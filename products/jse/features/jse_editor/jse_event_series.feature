Feature: Ensure Editors can edit event series
  In order to ensure Editors can edit events
  As an editor
  I want to be able to edit any event series

  @api @safe
  Scenario: Site editor is denied access to add an Event series node
  Given I am logged in as a user with the "editor" role
  When I go to "node/add/stanford-event-series"
  Then I should see "Access denied"

  @api @dev @destructive
  Scenario: Ensure editors can edit event series, should not be able to delete them.
  Given I am logged in as a user with the "administrator" role
  And I am on "node/add/stanford-event-series"
  Then I should see "Create Stanford Event Series" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Stanford Event Series Foo has been created" in the "Console" region
  And I should be on "events/series/foo"
  Given I am logged in as a user with the "editor" role
  And I am on "events/series/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Stanford Event Series Bar has been updated" in the "Console" region
  And I should be on "events/series/bar"
  When I click "Edit" in the "Content Head" region
  Then I should not see an "#edit-delete" element
  Given I am logged in as a user with the "administrator" role
  And I am on "events/series/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Stanford Event Series Bar has been deleted" in the "Console" region
