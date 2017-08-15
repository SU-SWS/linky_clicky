Feature: Ensure Site Owners can edit in full HTML
  In order to ensure that site owners can select to edit in full HTML
  As a site owner
  I want to be able to edit in full HTML

  @api @dev @destructive
  Scenario: Ensure Site Owner can select text input option as full HTML
  Given I am logged in as a user with the "site owner" role
  And I am on "node/add/stanford-page"
  Then I should see "Create Stanford Page" in the "Branding" region
  Then I fill in "edit-title" with "Foo"
  And I select "Full HTML" from "edit-body-und-0-format--2"
  And I press the "Save" button
  Then I should be on "foo"
  And I should see "Stanford Page Foo has been created" in the "Console" region
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see "Stanford Page Foo has been deleted" in the "Console" region
