Feature: Course
  In order to ensure that the CAW website is editable by its site owners
  As an authenticated user
  I want to check that I can create and edit a course
  
@api
Scenario: Create a resource page
 Given I am logged in as a user with the "site owner" role 
 And go to "node/add/caw-course"
 Then I should see "Create Course" in the "<body>" region 
