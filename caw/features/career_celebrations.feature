Feature: Career Celebrations Content Type
  In order to be able to create career celebrations content within the site
  As a site owner
  I want to have a career celebration content type and in Site Actions menu
  
@api
Scenario: Create Career Celebrations Content type
 Given I am logged in as a user with the "site owner" role
 And I am on "node/add/stanford-career-celebrations"
 Then I should see the heading "Create Career Celebrations Page"
 

@api
Scenario: See existing Career Celebration
 Given I am logged in as a user with the "site owner" role
 And I am on "/node/5571"
 Then I should see "Years at Stanford" in the "Content Body" region
