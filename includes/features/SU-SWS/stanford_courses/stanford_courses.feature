Feature: Stanford Courses
  In order to ensure that stanford courses was installed succesfully.
  As an administrative user
  I want to ensure that the Stanford Courses module is working properly

  @api @safe @javascript
  Scenario: Verify Stanford Courses is enabled
    Given I am logged in as a user with the "administrator" role
    And I am on "/admin/modules"
    Then the checkbox "Stanford Courses" should be checked

  @safe
  Scenario: View current courses and Featured Course sidebar block
    Given I am on "courses"
    Then I should see "Current Courses"
    And I should see the "Featured Course" heading in the "First sidebar" region

  @deploy
  Scenario: Searching courses by academic year
    Given I am on "courses"
    When I select "2014-2015" from "Academic year"
    And I press "Go"
    Then I should get a "200" HTTP response

  @live
  Scenario: Finding a specific course and seeing it has multiple sections
    Given I am on "courses"
    When I enter "english" for "Search all courses by keyword"
    And I press "Go"
    Then I should see "ENGLISH 9CE" in the "Content Body" region
    When I enter "Underwater basketweaving" for "Search all courses by keyword"
    And I press "Go"
    Then I should see "No courses are available based on your search." in the "Content Body" region

  @live
  Scenario: Reset button links to search page
    Given I am on "courses"
    And I press "Reset"
    Then I should be on "courses/search"

  @live
  Scenario: No results text when there are courses, but none for given search
    Given I am on "courses"
    When I enter "Underwater basketweaving" for "Search all courses by keyword"
    And I press "Go"
    Then I should see "No courses are available based on your search." in the "Content Body" region

  @live
  Scenario: No current courses block for person not teaching any courses
    Given I am on "people/emily-jordan"
    Then I should not see "Current Courses" in the "Second sidebar" region

  @live
  Scenario: Enhanced courses search functionality
    Given I am on "courses"
    When I enter "English 9ce" for "Search all courses by keyword"
    And I press "Go"
    Then I should see "ENGLISH 9CE" in the "Content Body" region

  @api @javascript @dev
  Scenario: Stanford Courses
    Given I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "node/add/stanford-course-importer"
    When I enter "IR WIM Courses" for "Title"
    And I enter "http://explorecourses.stanford.edu/search?view=catalog&filter-coursestatus-Active=on&page=0&catalog=&academicYear=&q=IR%3A%3Awim&collapse=" for "URL"
    And I press the "Save" button
    And I wait for the batch job to finish
    Then I should see "Course Importer IR WIM Courses has been created"
    When I click "Delete items"
    And I press the "Delete" button
    And I wait for the batch job to finish
    Then I should see "Deleted"
