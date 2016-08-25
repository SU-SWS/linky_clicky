Feature: Ensure Site Owners can create, edit and delete metatags
  In order to ensure that site owners can create, edit and delete metatags
  As a site owner
  I want to be able create, edit and delete metatags

  @api @dev @destructive @javascript
  Scenario: Ensure Site owners can create, edit and delete their own metatags
  Given I am logged in as a user with the "site owner" role
  And I am on "admin/config/search/metatags"
  Then I should see "Metatag" in the "Branding" region
  When I click "Add default meta tags"
  And I select "Stanford Page" from "edit-instance"
  And I press the "Add and configure" button
  And I press the "Save" button
  Then I should see "The meta tag defaults for Node: Stanford Page have been saved" in the "Console" region
  When I click on the element with css selector "a[href='/jse-dev/admin/config/search/metatags/config/node%3Astanford_page']"
  Then I should be on "admin/config/search/metatags/config/node%3Astanford_page"
  When I click on the element with css selector "#edit-cancel"
  And I click on the element with css selector "a[href='/jse-dev/admin/config/search/metatags/config/node%3Astanford_page/delete']"
  And I click on the element with css selector "#edit-submit"
  Then I should see "The meta tag defaults for Node: Stanford Page have been deleted" in the "Console" region
