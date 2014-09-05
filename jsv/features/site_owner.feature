Feature: Site Owner
In order to ensure that the Site Owner can create and edit
As a Site Owner
I want to check that I can access, edit, and create site content

@api @javascript
Scenario: Clicking on Manage Content
  Given I am logged in as a user with the "site owner" role
  When I hover over the element "#block-menu-menu-admin-shortcuts-site-action"
    And I wait 2 seconds
    And I click "Edit All Pages" in the "Admin Shortcuts" region
  Then I should see 12 or more "tr" elements
