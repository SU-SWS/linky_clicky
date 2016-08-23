Feature: Ensure Site Owners can create and delete news items
  In order to ensure that users with permissions can create, edit and delete news items
  As a user with site permissions
  I want to be able create, edit and delete news items

  @api @dev @destructive @javascript
  Scenario: Create, edit, then delete news item as site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add News Item" in the "Admin Shortcuts" region
  Then I should see "Create News Item" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "News Item Foo has been created" in the "Console" region
  And I should be on "news/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "News Item Bar has been updated" in the "Console" region
  And I should be on "news/bar"
  And I am on "news/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "News Item Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Create news item as site owner, edit as editor, delete as site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add News Item" in the "Admin Shortcuts" region
  Then I should see "Create News Item" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "News Item Foo has been created" in the "Console" region
  And I should be on "news/foo"
  Given I am logged in as a user with the "editor" role
  And I am on "news/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "News Item Bar has been updated" in the "Console" region
  And I should be on "news/bar"
  Given I am logged in as a user with the "site owner" role
  And I am on "news/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "News Item Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Create, edit news item as editor, delete as a site owner
  Given I am logged in as a user with the "editor" role
  When I wait for the Site Actions drop down to appear
  And I click "Add News Item" in the "Admin Shortcuts" region
  Then I should see "Create News Item" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "News Item Foo has been created" in the "Console" region
  And I should be on "news/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "News Item Bar has been updated" in the "Console" region
  And I should be on "news/bar"
  Given I am logged in as a user with the "site owner" role
  And I am on "news/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "News Item Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Create news item as editor, edit and delete as a site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add News Item" in the "Admin Shortcuts" region
  Then I should see "Create News Item" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "News Item Foo has been created" in the "Console" region
  And I should be on "news/foo"
  Given I am logged in as a user with the "site owner" role
  And I am on "news/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "News Item Bar has been updated" in the "Console" region
  And I should be on "news/bar"
  And I am on "news/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "News Item Bar has been deleted" in the "Console" region
