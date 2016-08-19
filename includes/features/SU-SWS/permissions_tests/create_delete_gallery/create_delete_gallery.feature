Feature: Ensure Site Owners can create and delete galleries, editors can edit galleries
  In order to ensure that a site owners can create, edit and delete galleries and editors can edit galleries but not delete them
  As a site owner
  I want to be able create, edit and delete galleries
  As an editor
  I want to be able to edit any galleries

  Background:
  Given I am logged in as a user with the "site owner" role

  @api @dev @destructive @javascript
  Scenario: Ensure site owners can create, edit and delete galleries
  When I wait for the Site Actions drop down to appear
  And I click "Add Gallery" in the "Admin Shortcuts" region
  Then I should see "Create Gallery" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Gallery Foo has been created" in the "Console" region
  And I should be on "foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Gallery Bar has been updated" in the "Console" region
  And I should be on "bar"
  And I am on "/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Gallery Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Ensure editors can edit any gallery, should not be able to delete.
  When I wait for the Site Actions drop down to appear
  And I click "Add Gallery" in the "Admin Shortcuts" region
  Then I should see "Create Gallery" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Gallery Foo has been created" in the "Console" region
  And I should be on "foo"
  Given I am logged in as a user with the "editor" role
  And I am on "foo"
  And I click "Edit" in the "Content Head" region
  And I wait 5 seconds
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Gallery Bar has been updated" in the "Console" region
  And I should be on "bar"
  When I click "Edit" in the "Content Head" region
  I should not see an "#edit-delete" eleme
  Given I am logged in as a user with the "site owner" role
  And I am on "/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Gallery Bar has been deleted" in the "Console" region
