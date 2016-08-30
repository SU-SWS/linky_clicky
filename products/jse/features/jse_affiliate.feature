Feature: Ensure Site Owners can create and delete affiliates
  In order to ensure that users with permissions can create, edit and delete affiliates
  As a user with site permissions
  I want to be able create, edit and delete affiliates

  @api @dev @destructive @javascript
  Scenario: Ensure site owners can create, edit and delete their own affiliates
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Affiliate Organization" in the "Admin Shortcuts" region
  Then I should see "Create Affiliate Organization" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Affiliate Organization Foo has been created" in the "Console" region
  And I should be on "affiliates/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Affiliate Organization Bar has been updated" in the "Console" region
  And I should be on "affiliates/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Affiliate Organization Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Ensure editors can create, edit and delete their own affilaites
  Given I am logged in as a user with the "editor" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Affiliate Organization" in the "Admin Shortcuts" region
  Then I should see "Create Affiliate Organization" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Affiliate Organization Foo has been created" in the "Console" region
  And I should be on "affiliates/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Affiliate Organization Bar has been updated" in the "Console" region
  And I should be on "affiliates/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Affiliate Organization Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Ensure site owners can edit and delete any affiliates
  Given I am logged in as a user with the "editor" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Affiliate Organization" in the "Admin Shortcuts" region
  Then I should see "Create Affiliate Organization" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Affiliate Organization Foo has been created" in the "Console" region
  And I should be on "affiliates/foo"
  Given I am logged in as a user with the "site owner" role
  And I am on "affiliates/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Affiliate Organization Bar has been updated" in the "Console" region
  And I should be on "affiliates/bar"
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see the text "Affiliate Organization Bar has been deleted" in the "Console" region

  @api @dev @destructive @javascript
  Scenario: Ensure editors can edit any affiliate but not delete them
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Affiliate Organization" in the "Admin Shortcuts" region
  Then I should see "Create Affiliate Organization" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Affiliate Organization Foo has been created" in the "Console" region
  And I should be on "affiliates/foo"
  Given I am logged in as a user with the "editor" role
  And I am on "affiliates/foo"
  And I click "Edit" in the "Content Head" region
  Then I fill in "edit-title" with "Bar"
  And I press the "Save" button
  Then I should see "Affiliate Organization Bar has been updated" in the "Console" region
  And I should be on "affiliates/bar"
  And I click "Edit" in the "Content Head" region
  Then I should not see an "#edit-delete" element
