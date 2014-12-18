Feature: Subsite
  In order to make uniquely branded sections of the CAW website
  As an authenticated user
  I want to be able to make and view subsites
  
@api @javascript
Scenario: See the subsite module settings page
  Given I am logged in as a user with the "site owner" role
  And I am on "admin/config/subsites"
  Then I should see "Subsite Menu Placement" in the "Content Body" region
@api @javascript
Scenario: Do not see submitted date and author
  Given I am on "benefits-rewards"
  Then I should not see a "div.submitted" element

@api @javascript
Scenario: See manage subsites in the shortcuts
  Given I am logged in as a user with the "site owner" role
  And I am on the homepage
  When I click "Manage Subsites" in the "Admin Shortcuts" region
  Then I should be on "admin/config/subsites/dashboard"
