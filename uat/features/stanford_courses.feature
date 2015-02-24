Feature: Stanford Courses
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Courses module is working properly

  Background:
    Given the "stanford_courses" module is enabled

  @api @javascript
  Scenario: Stanford Courses
    Given I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "node/add/stanford-course-importer"
    When I enter "English Courses" for "Title"
    And I enter "http://explorecourses.stanford.edu/search?view=catalog&academicYear=&page=0&q=ENGLISH&filter-departmentcode-ENGLISH=on&filter-coursestatus-Active=on&filter-term-Winter=on" for "URL"
    And I press the "Save" button
    And I wait for the batch job to finish
    Then I should see "Course Importer English Courses has been created"
    When I click "Delete items"
    And I press the "Delete" button
    And I wait for the batch job to finish
    Then I should see "Deleted"

