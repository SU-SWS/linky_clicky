Feature: Ensure Site Owners can add, edit and delete users
  In order to ensure that site owners can add, edit and delete users
  As a site owner
  I want to be able to add, edit and delete users

  @api @dev @destructive @javascript
  Scenario: Add, edit and delete users
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Manage Users" in the "Admin Shortcuts" region
  Then I should see "People" in the "Branding" region
  Then I click "Add user"
  And I fill in "edit-name" with "deleteMe"
  And I fill in "edit-mail" with "pleaseno@email.address"
  And I fill in "edit-pass-pass1" with "admin"
  And I fill in "edit-pass-pass2" with "admin"
  And I press the "Create new account" button
  Then I should see "Created a new user account for deleteMe" in the "Console" region
  And I am on "admin/people"
  Then I should see the text "deleteMe" in the "Content Body" region
  And I am on "user/deleteMe"
  And I click "Edit" in the "Content Head" region
  And I press the "Cancel account" button
  And I select the radio button "edit-user-cancel-method--5"
  And I press the "Cancel account" button
