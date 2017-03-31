Feature: Ensure Site Owners can create and delete event series
  In order to ensure that site owners can create, edit and delete event series
  As a site owner
  I want to be able create, edit and delete any event series

  @api @dev @destructive
  Scenario: Ensure site owners can create, edit and delete their own event series
  Given I am logged in as a user with the "site owner" role
  And I am on "node/add/stanford-event-series"
  Then I should see "Create Stanford Event Series" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Stanford Event Series Foo has been created" in the "Console" region
  And I should be on "events/series/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Stanford Event Series Bar has been updated" in the "Console" region
  And I should be on "events/series/bar"
  And I am on "events/series/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Stanford Event Series Bar has been deleted" in the "Console" region
