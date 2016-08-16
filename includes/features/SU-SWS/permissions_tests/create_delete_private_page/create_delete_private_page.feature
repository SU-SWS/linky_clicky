Feature: Ensure Site Owners can create private pages
  In order to ensure that site owners can create private pages
  As a site owner
  I want to be able create private pages

  @api @dev @destructive @javascript
  Scenario: Create private page as site owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Private Page" in the "Admin Shortcuts" region
  Then I should see "Create Private Page" in the "Branding" region
  And the "Text format" field should contain "content_editor_text_format"
  Then I fill in "edit-title" with "Foo"
  And I press the "Save" button
  Then I should see "Private Page Foo has been created" in the "Console" region
