Feature: Image Styles and View Modes
  In order to ensure that the CAW website images are appearing correctly
  As an authenticated user
  I want to check that all styles and view modes are configured correctly

@api
Scenario: No borders or shadows on Large Scaled image view mode display
 Given I am logged in as a user with the "administrator" role 
 And I am on "admin/structure/field-collections/field-s-image-info/display/stanford_large_scaled"
 Then I should not see the text "border-simple-nowidth"
 And I should not see the text "border-shadow"
