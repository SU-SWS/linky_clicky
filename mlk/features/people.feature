Feature: People
In order to ensure that the King Institute website people are viewable
As an end user
I want to check for the existence of people content

Scenario: List of faculty
 Given I am on "people/staff"
 Then I should see a ".views-row-first" element
 And I should see a ".views-row-lines" element

Scenario: Faculty node
 Given I am on "people/staff"
 And I click "Dr. Clayborne Carson" in the "Content Body" region
 Then I should see "Professor of History" in the "Content Body" region
 
 Scenario: List of students
 Given I am on "people/staff"
 Then I should see the heading "Students, interns, and other associates" in the "Content Lower" region

