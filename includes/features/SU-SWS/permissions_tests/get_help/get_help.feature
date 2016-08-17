Feature: Ensure Site Owners and Editors can get help
  In order to ensure that site owners and editors can get help
  As a site owner or editor
  I want to be able to get help

  @api @safe @javascript
  Scenario: Site Owner can get help
  Given I am logged in as a user with the "site owner" role
  When I click on the element with css selector ".leaf a[href$='-help']"
  Then I should be on "admin/stanford-jumpstart"
  And I should see "Jumpstart Help" in the "Branding" region

  @api @safe @javascript
  Scenario: Editor can get help
  Given I am logged in as a user with the "editor" role
  When I click on the element with css selector ".leaf a[href$='-help']"
  Then I should be on "admin/stanford-jumpstart"
  And I should see "Jumpstart Help" in the "Branding" region
