Feature: Stanford Courses
  In order to ensure that the Stanford course content type and supporting functionality works.
  As an end user and administrator
  I want to check for both the creation and display of the course content.

  @api @javascript @dev @destructive
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

