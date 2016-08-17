Feature: Courses
  In order to ensure that the Department of Classics website courses are viewable
  As an end user
  I want to check for the existence of courses content

  Scenario: View current courses
    Given I am on "courses"
    Then I should see a ".views-table" element

  Scenario: See featured course sidebar block
    Given I am on "courses"
    Then I should see the "NEW course in spring quarter 2016! CLASSICS164 (ARCHLGY165)" heading in the "First sidebar" region
