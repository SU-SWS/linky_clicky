Feature: Ensure Site Owners and Editors can access the edit main menu page
  In order to ensure that site owners can access the edit main menu page
  As a site owner
  I want to access the edit main menu page

  @api @safe @javascript
  Scenario: Access edit main menu as a site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Edit Main Menu" in the "Admin Shortcuts" region
  Then I should see "Main menu" in the "Branding" region
  And I should see "edit" in the "Content Body" region
  And I should see "delete" in the "Content Body" region
  When I click "edit"
  Then I should see "Edit menu link" in the "Branding" region
  And I should see "Menu link title" in the "Main Content" region
  And I should see "Path" in the "Main Content" region

  @api @safe @javascript
  Scenario: Access edit main menu as a site owner
  Given I am logged in as a user with the "editor" role
  When I wait for the Site Actions drop down to appear
  And I click "Edit Main Menu" in the "Admin Shortcuts" region
  Then I should see "Main menu" in the "Branding" region
  And I should see "edit" in the "Content Body" region
  And I should see "delete" in the "Content Body" region
  When I click "edit"
  Then I should see "Edit menu link" in the "Branding" region
  And I should see "Menu link title" in the "Main Content" region
  And I should see "Path" in the "Main Content" region
