Feature: Ensure Site Owners can create, edit and delete any events.
  In order to ensure site owners have their respective permissions
  As a Site Owner
  I want to be able to create, edit and delete any events

  @api @dev @destructive
  Scenario: Ensure site owners can create, edit and delete their own events
  Given I am logged in as a user with the "site owner" role
  And I am on "node/add/stanford-event"
  Then I should see "Create Stanford Event" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Stanford Event Foo has been created" in the "Console" region
  And I should be on "events/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Stanford Event Bar has been updated" in the "Console" region
  And I should be on "events/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Stanford Event Bar has been deleted" in the "Console" region

  @api @dev @destructive
  Scenario: Ensure site owners can edit and delete any event
  Given I am logged in as a user with the "administrator" role
  And I am on "node/add/stanford-event"
  Then I should see "Create Stanford Event" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Stanford Event Foo has been created" in the "Console" region
  And I should be on "events/foo"
  Given I am logged in as a user with the "site owner" role
  And I am on "events/foo"
  Then I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Stanford Event Bar has been updated" in the "Console" region
  And I should be on "events/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Stanford Event Bar has been deleted" in the "Console" region
