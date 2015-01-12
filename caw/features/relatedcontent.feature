Feature: Related Content
  In order to ensure that the CAW website has the related content field
  As an authenticated user
  I want to check that I can see Related Content field

@api
Scenario: Select related content
 Given I am logged in as a user with the "site owner" role 
 And I am on "node/add/stanford-landing-page"
 Then I should see a "field_related_content" element
 
 @api
Scenario: Select related content
 Given I am logged in as a user with the "site owner" role 
 And I am on "node/add/stanford-page"
 Then I should see a "field_related_content" element
 
  @api
Scenario: Select related content
 Given I am logged in as a user with the "site owner" role 
 And I am on "node/add/stanford-program-service"
 Then I should see a "field_related_content" element
