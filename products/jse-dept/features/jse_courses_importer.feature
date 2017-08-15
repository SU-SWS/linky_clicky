Feature: Site Owner Course Importer Permission
  In order to ensure that site owners can create a course importer
  As a site owner
  I want to be able to create a course importer for my website

  @api @dev @destructive @javascript
  Scenario: Ensure Site Owners can create a course importer
  Given I am logged in as a user with the "site owner" role
  And I am on "node/add/stanford-course-importer"
  And I fill in "edit-title" with "asdf"
  And I fill in "edit-feeds-feedshttpfetcher-source" with "http://explorecourses.stanford.edu/search?view=catalog&academicYear=&page=0&q=DESINST&filter-departmentcode-DESINST=on&filter-coursestatus-Active=on&filter-term-Autumn=on"
  And I press the "Save" button
  Then I should see "Course Importer asdf has been created" in the "Console" region
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see "Stanford Page Foo has been deleted" in the "Console" region
  And I click "Edit" in the "Content Head" region
  And I click on the element with css selector "#edit-delete"
  And I click on the element with css selector "#edit-submit"
  Then I should see "Stanford Page Foo has been deleted" in the "Console" region
