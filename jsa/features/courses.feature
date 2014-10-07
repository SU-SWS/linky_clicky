Feature: Courses
  In order to ensure that the Jumpstart Academic website courses are viewable
  As an end user
  I want to check for the existence of courses content

  Scenario: View current courses and Featured Course sidebar block
    Given I am on "courses"
    Then I should see a ".views-table" element
    And I should see the "Featured Course" heading in the "First sidebar" region

  Scenario: Searching courses by academic year
    Given I am on "courses"
    When I select "2014-2015" from "Academic year"
    And I press "Go"
    Then I should see "2014-2015 Spring" in the "Content Body" region

  Scenario: Finding a specific course and seeing it has multiple sections
    Given I am on "courses"
    When I enter "e" for "Search courses by title"
    And I press "Go"
    Then I should see "ENGLISH 9CE" in the "Content Body" region
    When I enter "Underwater basketweaving" for "Search courses by title"
    And I press "Go"
    Then I should see "There are no courses available based on your search" in the "Content Body" region
