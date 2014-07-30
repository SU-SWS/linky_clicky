Feature: People
 In order to ensure that the Art and Art History website people are viewable
 As an end user
 I want to check for the existence of people content

Scenario: List of faculty
 Given I am on "people/faculty"
 Then I should see a ".views-row-first" element 

Scenario: Click on a faculty member
 Given I am on "people/faculty"
 And I click "Nancy J. Troy" in the "Content Body" region
 Then I should see "PhD, Yale University, 1979" in the "Content Body" region
