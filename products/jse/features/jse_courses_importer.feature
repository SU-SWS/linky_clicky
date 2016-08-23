Feature: Ensure Site Owners can import courses
  In order to ensure that site owners can enable and disable the course importer
  As a site owner
  I want to be able to enable and disable the course importer

  @api @dev @destructive @javascript
  Scenario: Ensure Site Owners can enable and disable the course importer
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
  And I click "Add Private Page" in the "Admin Shortcuts" region
