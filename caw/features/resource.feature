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
 Then I should see a "Search by keyword" filter
