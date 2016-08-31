Feature: Ensure Site Owners can create private pages
  In order to ensure that site owners can create private pages
  As a site owner
  I want to be able create private pages

  @api @dev @destructive @javascript
  Scenario: Site owners can create, edit and delete their own private pages
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Private Page" in the "Admin Shortcuts" region
  Then I should see "Create Private Page" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Private Page Foo has been created" in the "Console" region
  And I should be on "private/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Private Page Bar has been updated" in the "Console" region
  And I should be on "private/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Private Page Bar has been deleted" in the "Console" region
<<<<<<< HEAD

=======
>>>>>>> origin/5.x

  @api @dev @destructive @javascript
  Scenario: Editors can edit and view private pages
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Private Page" in the "Admin Shortcuts" region
  Then I should see "Create Private Page" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Private Page Foo has been created" in the "Console" region
  And I should be on "private/foo"
  Given I am logged in as a user with the "editor" role
  And I am on "private/foo"
  When I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Private Page Bar has been updated" in the "Console" region
  And I should be on "private/bar"
  Given I am logged in as a user with the "site owner" role
  And I am on "private/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Private Page Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Site members can view private pages
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Private Page" in the "Admin Shortcuts" region
  Then I should see "Create Private Page" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Private Page Foo has been created" in the "Console" region
  And I should be on "private/foo"
  Given I am logged in as a user with the "site member" role
  And I am on "private/foo"
  Then I should not see the text "Access Denied"
  Given I am logged in as a user with the "site owner" role
  And I am on "private/foo"
  And I click "Edit" in the "Content Head" region
  Then I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Private Page Foo has been deleted" in the "Console" region
