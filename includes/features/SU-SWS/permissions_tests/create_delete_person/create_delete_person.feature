Feature: Ensure Site Owners can create and delete people
  In order to ensure that site owners can create, edit and delete people
  As a site owner
  I want to be able create, edit and delete people

  @api @dev @destructive @javascript
  Scenario: Create, edit, then delete people as site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Person" in the "Admin Shortcuts" region
  Then I should see "Create Person" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo Bar"
  Then I fill in "edit-field-s-person-first-name-und-0-value" with "Foo"
  Then I fill in "edit-field-s-person-last-name-und-0-value" with "Bar"
  And I press the "Save" button
  Then I should see "Person Foo Bar has been created" in the "Console" region
  And I should be on "people/foo-bar"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-field-s-person-first-name-und-0-value" with "Bar"
  Then I fill in "edit-field-s-person-last-name-und-0-value" with "Foo"
  And I press the "Save" button
  Then I should see "Person Foo Bar has been updated" in the "Console" region
  And I should be on "people/foo-bar"
  And I am on "people/foo-bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Person Foo Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Create people as site owner, edit as editor, then delete as site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Person" in the "Admin Shortcuts" region
  Then I should see "Create Person" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo Bar"
  Then I fill in "edit-field-s-person-first-name-und-0-value" with "Foo"
  Then I fill in "edit-field-s-person-last-name-und-0-value" with "Bar"
  And I press the "Save" button
  Then I should see "Person Foo Bar has been created" in the "Console" region
  And I should be on "people/foo-bar"
  Given I am logged in as a user with the "editor" role
  And I am on "people/foo-bar"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-field-s-person-first-name-und-0-value" with "Bar"
  Then I fill in "edit-field-s-person-last-name-und-0-value" with "Foo"
  And I press the "Save" button
  Then I should see "Person Foo Bar has been updated" in the "Console" region
  And I should be on "people/foo-bar"
  Given I am logged in as a user with the "site owner" role
  And I am on "people/foo-bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Person Foo Bar has been deleted" in the "Console" region
