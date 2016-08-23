Feature: Ensure users with permissions can view private pages
  In order to ensure that users with permissions can view private pages
  As a user with site permissions
  I want to be able view private pages

  @api @safe @javascript
  Scenario: View private page as site owner
  Given I am logged in as a user with the "site owner" role
  And I am on "private"
  Then I should see "Private Pages" in the "Content Head" region
  And I should not see the text "Access Denied"

  @api @safe @javascript
  Scenario: View private page as editor
  Given I am logged in as a user with the "editor" role
  And I am on "private"
  Then I should see "Private Pages" in the "Content Head" region
  And I should not see the text "Access Denied"

  @api @safe @javascript
  Scenario: View private page as site member
  Given I am logged in as a user with the "site member" role
  And I am on "private"
  Then I should see "Private Pages" in the "Content Head" region
  And I should not see the text "Access Denied"
