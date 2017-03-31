Feature: Ensure Site Owners can edit the internal login button
  In order to ensure that site owners can configure the internal login button
  As a site owner
  I want to be able to configure and customize the internal login button

  @api @dev @destructive
  Scenario: Site owners can edit the internal login buttons
  Given I am logged in as a user with the "site owner" role
  And I am on "admin/structure/block/manage/stanford_private_page/stanford_internal_login"
  And I fill in "edit-internal-login-title" with "asdf"
  And I press the "Save block" button
  And I am on the homepage
  Then I should see "asdf" in the "Footer" region
  Given I am on "admin/structure/block/manage/stanford_private_page/stanford_internal_login"
  And I fill in "edit-internal-login-title" with "Internal Login"
  And I press the "Save block" button
  And I am on the homepage
  Then I should see "Internal Login" in the "Footer" region
