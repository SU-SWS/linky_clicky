Feature: Ensure Site Owners and Editors can access manage all pages
  In order to ensure that site owners can create, edit and delete people
  As a site owner
  I want to be able create, edit and delete people

  @api @safe @javascript
  Scenario: Access manage all content as a site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Manage Content" in the "Admin Shortcuts" region
  And I click "Manage Pages" in the "Second sidebar" region
  Then I should see "Manage Stanford Page" in the "Branding" region
  And I should see "edit" in the "Content Body" region
  And I should see "view" in the "Content Body" region
  And I should see "delete" in the "Content Body" region
  When I click "edit"
  Then I should see "Edit" in the "Branding" region

  @api @safe @javascript
  Scenario: Access manage all content as a site owner
  Given I am logged in as a user with the "editor" role
  When I wait for the Site Actions drop down to appear
  And I click "Manage Content" in the "Admin Shortcuts" region
  And I click "Manage Pages" in the "Second sidebar" region
  Then I should see "Manage Stanford Page" in the "Branding" region
  And I should see "edit" in the "Content Body" region
  And I should see "view" in the "Content Body" region
  When I click "edit"
  Then I should see "Edit" in the "Branding" region
