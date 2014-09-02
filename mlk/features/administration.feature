Feature: Administration
 In order to ensure that the site owners and authors are able to perform their
 tasks.

@api @javascript
Scenario: See the Site Actions menu
 Given I am on the homepage
 Given I am logged in as a user with the "site owner" role
 Then I wait for the Site Actions drop down to appear
 Then I should see "Manage Content" in the "Admin Shortcuts" region
 Then I should see "Manage Taxonomies" in the "Admin Shortcuts" region
 Then I should see "Manage Users" in the "Admin Shortcuts" region
 Then I should see "Main menu" in the "Admin Shortcuts" region
 Then I should see "Add Document" in the "Admin Shortcuts" region
 Then I should see "Add Event" in the "Admin Shortcuts" region
 Then I should see "Add Lesson Activity" in the "Admin Shortcuts" region
 Then I should see "Add Lesson Plan" in the "Admin Shortcuts" region
 Then I should see "Add News Item" in the "Admin Shortcuts" region
 Then I should see "Add Page" in the "Admin Shortcuts" region
 Then I should see "Add Person" in the "Admin Shortcuts" region
 Then I should see "Add Publication" in the "Admin Shortcuts" region
 Then I should see "Add Slide" in the "Admin Shortcuts" region
 Then I should see "Refresh Site Content" in the "Admin Shortcuts" region

@api
Scenario: See the Get Help admin page
 Given I am logged in as a user with the "site owner" role
 And I click "Get Help" in the "Admin Shortcuts" region
 Then I should see the heading "Need assistance with your site?"
