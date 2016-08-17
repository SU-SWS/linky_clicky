Feature: Ensure Site Owners can edit the page url
  In order to ensure that site owners can edit the page url
  As a site owner
  I want to edit the page url

  @api @dev @destructive @javascript
  Scenario: Edit the page url as a site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Page" in the "Admin Shortcuts" region
  Then I should see "Create Stanford Page" in the "Branding" region
  Then I fill in "edit-title" with "Foo"
  And I click on the element with css selector ".vertical-tab-button:nth-child(2)"
  Given I uncheck the box "edit-path-pathauto"
  And I fill in "edit-path-alias" with "not-foo"
  And I press the "Save" button
  Then I should be on "not-foo"
  And I should see "Stanford Page Foo has been created" in the "Console" region
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Landing Page Bar has been deleted" in the "Console" region
