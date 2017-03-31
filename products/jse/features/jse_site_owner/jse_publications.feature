Feature: Ensure Site Owners can create, edit, and delete publications
  In order to ensure that site owners can create, edit and delete publications
  As a site owner
  I want to be able create, edit and delete publications

  @api @dev @destructive
  Scenario: Site owners can create, edit and delete their own publications
  Given I am logged in as a user with the "site owner" role
  And I am on "node/add/stanford-publication"
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

  @api @dev @destructive
  Scenario: Site owners can edit and delete any publication
  Given I am logged in as a user with the "administrator" role
  And I am on "node/add/stanford-publication"
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
