Feature: Stanford Courses
  In order to readily react to changing communication needs within my realm
  As a site owner
  I want to be able to import and delete courses in a timely manner

  Background:
    Given the "stanford_courses" module is enabled

  @api @javascript @deploy
  Scenario: Stanford Courses
    Given I am logged in as a user with the "administrator" role
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

