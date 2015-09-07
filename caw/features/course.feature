Feature: Course
  In order to ensure that the CAW website is editable by its site owners
  As an authenticated user
  I want to check that I can create and edit a course

@api @safe @live @site
Scenario: Create a course/event series
  Given I am logged in as a user with the "site owner" role
  And go to "node/add/caw-course"
  Then I should see "Title" in the "Content Body" region

@api @safe @live @site
Scenario: See CSS class on Event series page for Faculty Staff Help Center
  Given I am on "faculty-staff-help-center/calendar/workshops-and-trainings"
  Then I should see a ".views-row-lines" element

@api @safe @live @site
Scenario: See CSS class on Event series page for Benefits and Rewards
  Given I am on "benefits-rewards/worklife/activities-events/programs-seminars"
  Then I should see a ".views-row-lines" element
