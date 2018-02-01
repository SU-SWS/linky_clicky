Feature: Ensure private pages work properly for a JSE site
  In order to ensure that the private page section is available and that permissions work as expected.

  @api @deploy
  Scenario: Check that the Internal Login button directs to the Private Pages Section
  Given I am logged in as a user with the "site member" role
  Given I am on the homepage
  And I click "Internal Login" in the "Footer" region
  Then I should see "Private Pages" in the "First sidebar" region
  And I should see "Private Pages" in the "Content Head" region

  @api @deploy
  Scenario: Check that the Internal Login button directs to the Private Pages Section
  Given I am logged in as a user with the "administrator" role
  Given I am on the homepage
  And I click "Internal Login" in the "Footer" region
  Then I should see "Private Pages" in the "First sidebar" region
  And I should see "Private Pages" in the "Content Head" region

  @api @dev @destructive
  Scenario: Site owners can create, edit and delete their own private pages
  Given I am logged in as a user with the "site owner" role
  When I go to "node/add/stanford-private-page"
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

  @api @dev @destructive
  Scenario: Editors can edit and view private pages
  Given I am logged in as a user with the "site owner" role
  When I go to "node/add/stanford-private-page"
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

  @api @dev @destructive
  Scenario: Site members can view private pages
  Given I am logged in as a user with the "site owner" role
  When I go to "node/add/stanford-private-page"
  Then I should see "Create Private Page" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Private Page Foo has been created" in the "Console" region
  And I should be on "private/foo"
  Given I am logged in as a user with the "site member" role
  And I am on "private/foo"
  Then I should not see the text "Access Denied"
  Then I should not see "Edit" in the "Content Head" region
  Given I am logged in as a user with the "site owner" role
  And I am on "private/foo"
  And I click "Edit" in the "Content Head" region
  Then I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Private Page Foo has been deleted" in the "Console" region
