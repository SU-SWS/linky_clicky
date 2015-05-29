Feature: Resource
  In order to ensure that the CAW website is editable by its site owners
  As an authenticated user
  I want to check that I can edit the site

@api
Scenario: Create a resource page
 Given I am logged in as a user with the "site owner" role
 And go to "node/add/stanford-resource"
 Then I should see "Title" in the "Content Body" region

 @api
Scenario: Filter on All Resources page
 Given I am logged in as a user with the "site owner" role
 And go to "resources"
 Then I should see "Search by keyword" in the "Content Upper" region

@api
Scenario: Manage Resource link exists
 Given I am logged in as a user with the "site owner" role
 And go to "admin/stanford/jumpstart/shortcuts/site-actions/manage-content"
 Then I should see "Manage Resources" in the "Second sidebar" region

@api
Scenario: Manage Resource page exists
 Given I am logged in as a user with the "site owner" role
 And go to "admin/manage/stanford_resource"
 Then I should see "Stanford Resources Content"

