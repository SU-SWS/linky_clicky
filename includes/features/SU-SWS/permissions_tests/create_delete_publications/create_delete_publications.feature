Feature: Ensure Site Owners can create and delete publications
  In order to ensure that users with permissions can create, edit and delete publications
  As a user with site permissions
  I want to be able create, edit and delete publications

  @api @dev @destructive @javascript
  Scenario: Create, edit, then delete publication as site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Publication" in the "Admin Shortcuts" region
  Then I should see "Create Publication" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Publication Foo has been created" in the "Console" region
  And I should be on "publications/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Publication Bar has been updated" in the "Console" region
  And I should be on "publications/bar"
  And I am on "publications/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Publication Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Create publication as site owner, edit as editor, delete as site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Publication" in the "Admin Shortcuts" region
  Then I should see "Create Publication" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Publication Foo has been created" in the "Console" region
  And I should be on "publications/foo"
  Given I am logged in as a user with the "editor" role
  And I am on "publications/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Publication Bar has been updated" in the "Console" region
  And I should be on "publications/bar"
  Given I am logged in as a user with the "site owner" role
  And I am on "publications/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Publication Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Create, edit publication as editor, delete as a site owner
  Given I am logged in as a user with the "editor" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Publication" in the "Admin Shortcuts" region
  Then I should see "Create Publication" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Publication Foo has been created" in the "Console" region
  And I should be on "publications/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Publication Bar has been updated" in the "Console" region
  And I should be on "publications/bar"
  Given I am logged in as a user with the "site owner" role
  And I am on "publications/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Publication Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Create publication as editor, edit and delete as a site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Publication" in the "Admin Shortcuts" region
  Then I should see "Create Publication" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Publication Foo has been created" in the "Console" region
  And I should be on "publications/foo"
  Given I am logged in as a user with the "site owner" role
  And I am on "publications/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Publication Bar has been updated" in the "Console" region
  And I should be on "publications/bar"
  And I am on "publications/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Publication Bar has been deleted" in the "Console" region
