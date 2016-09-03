Feature: Ensure site owners can import events
  In order to ensure that site owners can import events
  As a site owner
  I want to be able enable and import events

  @api @dev @destructive @javascript
  Scenario: Ensure site owners can enable and disable the event importer
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Event Importer" in the "Admin Shortcuts" region
  Then I should see "Create Stanford Event Importer" in the "Branding" region
  Then I fill in "edit-title" with "Foo"
  And I select "Chi Omega" from "edit-s-events-organization"
  And I select the radio button "Unlisted"
  And I press the "Save" button
  And I wait for the batch job to finish
  Then I should be on "foo"
  And I should see "Stanford Event Importer Foo has been created" in the "Console" region
  And I click "Edit" in the "Content Head" region
  And I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should be on "bar"
  And I should see "Stanford Event Importer Bar has been updated" in the "Console" region
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see "Stanford Event Importer Bar has been deleted" in the "Console" region
