Feature: Ensure editors can edit any, create/delete their own people
  In order to ensure that editors can create, edit and delete people
  As an editor
  I want to be able to edit any and create/delete my own people

  @api @dev @destructive
  Scenario: Ensure editors can create, edit and delete people
  Given I am logged in as a user with the "editor" role
  And I am on "node/add/stanford-person"
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

  @api @dev @destructive
  Scenario: Ensure editors can edit any person
  Given I am logged in as a user with the "administrator" role
  And I am on "node/add/stanford-person"
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
  Given I am logged in as a user with the "administrator" role
  And I am on "people/foo-bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Person Foo Bar has been deleted" in the "Console" region
