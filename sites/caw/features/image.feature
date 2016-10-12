Feature: Image Styles and View Modes
  In order to ensure that the CAW website images are available and appearing correctly
  As an authenticated user
  I want to check that all styles and view modes are configured correctly

  @api @safe @live @site
  Scenario: No borders or shadows on Large Scaled image view mode display
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/field-collections/field-s-image-info/display/stanford_large_scaled"
    Then I should not see the text "border-simple-nowidth"
    And I should not see the text "border-shadow"

  @api @safe @live @site
  Scenario: Insert image field is an option
    Given I am logged in as a user with the "site owner" role
    And I am on "node/381/edit"
    Then I should see a "#edit-field-s-page-image-insert-und" element

  @api @safe @live @site
  Scenario: Insert image large-scaled is an option
    Given I am logged in as a user with the "site owner" role
    And I am on "node/381/edit"
    Then I should see a ".insert-style option[value=image_large-scaled]" element
