Feature: Course
  In order to ensure that the CAW website is editable by its site owners
  As an authenticated user
  I want to check that I can create and edit a course
  
@api
Scenario: Create a resource page
 Given I am logged in as a user with the "site owner" role 
 And go to "node/add/caw-course"
 Then I should see "Title" in the "Content Body" region 
 
Scenario: Audience and Categories are in field to block region Content: Lower
 Given I am on "learn-grow/courses/professional-development/course-catalog/test-course" 
 # using fake content, need to replace path with actual course node
 Then I should see "Audience" in the "Content Lower" region 
 
@api
Scenario: See registration link field
 Given I am logged in as a user with the "Site Owner" role 
 And go to "node/add/caw-course"
 Then I should see "Registration link" in the "Content Body" region 
