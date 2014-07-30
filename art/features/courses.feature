Feature: Courses
 In order to ensure that the Art and Art History website courses are viewable
 As an end user
 I want to check for the existence of courses content

Scenario: Searching courses by academic year
 Given I am on "courses"
 When I select "2014-2015" from "Academic year"
 And I press "Go"
 Then I should see "2014-2015 Autumn" in the "Content Body" region

Scenario: Finding a specific course and seeing it has multiple sections
 Given I am on "courses"
 When I fill in "Search by keyword or instructor" with "visual arts"
 And I press "Go"
 And I click "Introduction to the Visual Arts: History of Western Art from the Renaissance to the Present" in the "Content Body" region
 Then I should see "ARTHIST 1B (section 3)" in the "Content Body" region
