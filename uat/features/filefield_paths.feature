Feature: File Field Paths
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the File Field Paths module is working properly

  @api @javascript
  Scenario: File Field Paths
    Given the "filefield_paths" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/page/fields"
    And I enter "[random]" for "New field label"
    And I select "File" from "edit-fields-add-new-field-type"
    And I press the "Save" button
    Then I should see "These settings apply to the [random:1] field everywhere it is used"
    When I press the "Save field settings" button
    Then I should see "Updated field [random:1] field settings"
    When I click "File (Field) Path settings"
    And I enter "[node:content-type:machine-name]" for "File path"
    And I press the "Save settings" button
    Then I should see "Saved [random:1] configuration"
    When I go to "node/add/page"
    And I enter "File Field Paths test" for "Title"
    And I attach the file "filefield_path.txt" to "edit-field-[random:1]-und-0-upload"
    And I press the "Upload" button
    And I press the "Save" button
    Then I should see "Basic page File Field Paths test has been created"
    When I go to "sites/default/files/page/filefield_path.txt"
    Then I should see "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit"