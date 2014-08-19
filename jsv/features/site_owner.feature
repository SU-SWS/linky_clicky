Feature: Site Owner
In order to ensure that the Site Owner can create and edit
As a Site Owner
I want to check that I can access, edit, and create site content

@api @javascript
Scenario: Clicking on Manage Content
 Given I am on the homepage
 And I am logged in as a user with the "site owner" role
 When I click "Site Actions" in the "Admin Shortcuts" region
 And I click "Manage Content" in the "Admin Shortcuts" region
 Then I should see "Manage All Content" in the "Content Body" region
