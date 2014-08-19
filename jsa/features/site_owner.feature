Feature: Site Owner
In order to ensure that the Site Owner can create and edit
As a Site Owner
I want to check that I can access, edit, and create site content

@api @javascript
Scenario: Clicking on Manage Content
 Given I am on the homepage
 And I am logged in as a user with the "site owner" role
# When I hover over the element "#block-menu-menu-admin-shortcuts-site-action ul.nav li.first.last"
 Then I wait for the site actions drop down to appear
 When I click on the text "Manage Content"
 Then I wait 5000
 Then I should see "Filter by Title" in the "Content Body" region
# Then I should see "Manage Content" in the "Admin Shortcuts" region

