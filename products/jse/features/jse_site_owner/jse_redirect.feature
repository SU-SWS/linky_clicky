Feature: Ensure Site Owners can manage redirects
  In order to ensure that site owners can manage redirects
  As a site owner
  I want to be able manage redirects

  @api @dev @destructive
  Scenario: Ensure Site owners can manage redirects
  Given I am logged in as a user with the "site owner" role
  And I am on "admin/config/search/redirect"
  Then I should see "URL redirects" in the "Branding" region
  When I click "Add redirect"
  And I fill in "edit-source" with "asdf"
  And I fill in "edit-redirect" with "fdsa"
  And I uncheck the box "edit-status"
  And I press the "Save" button
  Then I should see "The redirect has been saved" in the "Console" region
  When I click "Edit"
  And I fill in "edit-source" with "fdsa"
  And I fill in "edit-redirect" with "asdf"
  And I press the "Save" button
  Then I should see "The redirect has been saved" in the "Console" region
  When I click "Delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see "The redirect has been deleted" in the "Console" region
