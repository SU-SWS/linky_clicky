Feature: Ensure Site Owners can manage taxonomies
  In order to ensure that site owners can edit taxonomies
  As a site owner
  I want to edit the taxonomy vocabulary

  @api @dev @destructive @javascript
  Scenario: Edit the taxonomy as a Site Owner
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Manage Taxonomies" in the "Admin Shortcuts" region
  Then I should see "Taxonomy Manager" in the "Branding" region
  Then I click "Add new vocabulary"
  And I fill in "edit-name" with "diction"
  And I press the "Save" button
  Then I should see "Created new vocabulary diction" in the "Console" region
  And I am on "admin/structure/taxonomy/diction/edit"
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see "Deleted vocabulary diction" in the "Console" region
