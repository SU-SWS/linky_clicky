Feature: Courses
  In order to ensure that the Jumpstart Academic website courses are viewable
  As an end user
  I want to check for the existence of courses content

  Scenario: View current courses and Featured Course sidebar block
    Given I am on "courses"
    Then I should see "Current Courses"
    And I should see the "Featured Course" heading in the "First sidebar" region

  Scenario: Searching courses by academic year
    Given I am on "courses"
    When I select "2014-2015" from "Academic year"
    And I press "Go"
    Then I should get a "200" HTTP response

  Scenario: Finding a specific course and seeing it has multiple sections
    Given I am on "courses"
    When I enter "e" for "Search all courses by keyword"
    And I press "Go"
    Then I should see "ENGLISH 9CE" in the "Content Body" region
    When I enter "Underwater basketweaving" for "Search all courses by keyword"
    And I press "Go"
    Then I should see "No courses are available based on your search." in the "Content Body" region

  Scenario: Reset button links to search page
    Given I am on "courses"
    And I press "Reset"
    Then I should be on "courses/search"

  Scenario: No results text when there are courses, but none for given search
    Given I am on "courses"
    When I enter "Underwater basketweaving" for "Search all courses by keyword"
    And I press "Go"
    Then I should see "No courses are available based on your search." in the "Content Body" region

  Scenario: No current courses block for person not teaching any courses
    Given I am on "people/emily-jordan"
    Then I should not see "Current Courses" in the "Second sidebar" region

  Scenario: Enhanced courses search functionality
    Given I am on "courses"
    When I enter "English 9ce" for "Search all courses by keyword"
    And I press "Go"
    Then I should see "ENGLISH 9CE" in the "Content Body" region
