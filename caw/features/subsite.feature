Feature: Subsite
  In order to make uniquely branded sections of the CAW website
  As an authenticated user
  I want to be able to make and view subsites
  
@api
Scenario: See the subsite module settings page
  Given I am logged in as a user with the "site owner" role
  And I am on "admin/config/subsites"
  Then I should see a "#edit-sws-menu" element

@api
Scenario: Do not see submitted date and author
  Given I am on "benefits-rewards"
  Then I should not see a "div.submitted" element

@api
Scenario: Do not see submitted date and author
  Given I am logged in as a user with the "site owner" role
  And I am on "admin/config/subsites"
  Then I should see a "#block-menu-menu-subsite-dashboards" element
