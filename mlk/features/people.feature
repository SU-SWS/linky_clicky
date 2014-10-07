Feature: People
In order to ensure that the Jumpstart Academics website people are viewable
As an end user
I want to check for the existence of people content

Scenario: List of faculty
 Given I am on "people/faculty"
 Then I should see a ".views-row-first" element in the "Content Body" region
 And I should see a ".views-row-lines" element in the "Content Body" region

Scenario: Faculty node
 Given I am on "people/faculty"
 And I click on "Jacob Smith" in the "Content Body" region
 Then I should see "Professor of English" in the "Content Body" region

Scenario: Faculty taxonomy filter
 Given I am on "people/faculty"
 When I fill in "Filter by faculty status" with "Professor"
 And I press "Go"
 Then I should see "Jacob Smith" in the "Content Body" region
 And I should not see "Jane Doe" in the "Content Body" region

Scenario: List of staff
 Given I am on "people/staff"
 Then I should see a ".views-row-first" element in the "Content Body" region
 And I should see a ".views-row-lines" element in the "Content Body" region

Scenario: List of students
 Given I am on "people/students"
 Then I should see a ".views-row-first" element in the "Content Body" region
 And I should see a ".views-row-lines" element in the "Content Body" region
