Feature: Courses
  In order to ensure that the Department of Classics website courses are viewable
  As an end user
  I want to check for the existence of courses content

  Scenario: View current courses
    Given I am on "courses"
    Then I should see a ".views-table" element

  Scenario: See featured course sidebar block
    Given I am on "courses"
    Then I should see the "NEW course in autumn quarter! Introduction to the Archaeology of Greece" heading in the "First sidebar" region
