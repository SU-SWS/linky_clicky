Feature: Ensure Site Owners can edit the internal login button
  In order to ensure that site owners can configure the internal login button
  As a site owner
  I want to be able to configure and customize the internal login button

  @api @dev @destructive @javascript
  Scenario: Site owners can create, edit and delete their own private pages
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
