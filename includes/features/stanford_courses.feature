Feature: Stanford Courses
  In order to ensure that stanford courses was install succesfully.
  As an administrative user
  I want to ensure that the Stanford Courses module is working properly

  Background:
    Given the "stanford_courses" module is enabled

  @api @javascript @destructive @prod @safe
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

