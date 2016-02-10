Feature: Stanford Courses Tag Translate
  In order to ensure that stanford courses tag translation works.
  As an administrative user
  I want to ensure that the Stanford Courses Tag Translate module is working properly

  Background:
    Given the "stanford_courses_tag_translate" module is enabled

  @api @content @dev
  Scenario: Validate main admin page is there.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford/courses/tag-translate"
    Then I should see "New tag translation" in the "Content" region

  @api @content @dev
  Scenario: Validate import admin page is there.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/config/stanford/courses/tag-translate/import"
    Then I should see "Import" in the "Content" region

  @api @content @dev
  Scenario: Validate Export admin page is there.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/config/stanford/courses/tag-translate/export"
    # No content on this page is permanent so it is impossible to check for somewithout a scenario breaking.

  @api @content @dev
  Scenario: Create tag translations
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford/courses/tag-translate"
    And I click "New tag translation"
    Then I should be on "admin/config/stanford/courses/tag-translate/new"
    Then I enter "REGISTRAR::training" for "edit-ctag"
    Then I enter "Team in Training" for "edit-chuman"
    Then I press the "Save" button
    Then I should see the success message "Tag translation was saved successfully"

  @api @content @dev
  Scenario: Edit tag translations
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/config/stanford/courses/tag-translate/import"
    Then I should see "Team in training" in the "Content" region
    Then I click "Edit"
    Then I should be on "admin/config/stanford/courses/tag-translate/edit/1"
    Then I enter "MCS::BIOTRACK_CORE" for "edit-ctag"
    Then I enter "Biology Track Core" for "edit-chuman"
    Then I press the "Save button"
    Then I should see the success message "Biology Track Core"
    Then I go to "admin/config/stanford/courses/tag-translate"
    Then I should see "Biology Track Core" in the "Content" region

  @api @content @dev
  Scenario: Delete tag translations
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/config/stanford/courses/tag-translate/import"
    Then I should see "Biology Track Core" in the "Content" region
    Then I click "Delete"
    Then I should be on "admin/config/stanford/courses/tag-translate/delete/1"
    Then I should see "This action cannot be un-done. Choose wisely." in the "Content region"
    Then I press "Yes, delete this forever" button
    Then I should see the success message "Tag translation was successfully removed."
    Then I should be on "http://jsa.su.dev/admin/config/stanford/courses/tag-translate"
    Then I should not see "Biology Track Core" in the "Content" region

#   @api @content @dev
#   Scenario: Import content
#     Given I am logged in as a user with the "administrator" role
#     And I am on "admin/config/stanford/courses/tag-translate/import"
#     Then for "Import" I enter """
# {
#   "ONE::ONE": "One",
#   "THREE::THREE": "Three",
#   "TWO::TWO": "Two"
# }
# """
#     Then I press "Import"
#     Then I should see success message "Import successful"
#     Then I should be on "admin/config/stanford/courses/tag-translate"
#     Then I should see "ONE::ONE" in the "Content" region
#     Then I should see "TWO::TWO" in the "Content" region
#     Then I should see "THREE::THREE" in the "Content" region

#   Scenario: Validate translations

#   Scenario: Delete everything



# Create a course importer using http://explorecourses.stanford.edu/search?view=xml-20130201&filter-coursestatus-Active=on&page=0&catalog=&academicYear=&q=IR%3A%3Awim&collapse=
# Find a course that was imported and review the tags that are attached
# Go to: admin/config/stanford/courses/tag-translate and create a few new tag translations
# Go back to importer and re-import
# Go back to the course you reviewed earlier and check the human readable field for the new values.
# Go to admin/config/stanford/courses/tag-translate/export and keep that information handy
# Part II: Import / Export

# Install a new JSA website somewhere else
# Check out this branch and enable stanford_courses_tag_translate
# Go to admin/config/stanford/courses/tag-translate/import and import the values from the steps above.
# Go to admin/config/stanford/courses/tag-translate and verify they imported correctly.
# Part III: Additional checks.

# Check that the content type has the human readable field
# Check that the feed importer has a mapping to the human readable field
# Check that the feeds tamper has the new custom plugin on the human readable field
# Try to import bad values.
# Disable and uninstall to ensure that everything goes away correctly.
# Before enabling the stanford_courses_tag_translate modify the feeds importer, feeds tampers, and content type.
# Part IV: More things to check

# Set the default value for the import to [original] and run an import
# Set the default value for the import to nothing (empty field) and run an import
# Set the default value for the import to "Some random string" and run import
# Check to see that admin/structure/views/view/stanford_courses_ref_human_tag installs on enable
# Check to see that admin/structure/views/view/stanford_courses_ref_human_tag uninstalls on uninstall
# Check that Deprecated field group is on courses with two tag fields in them.
