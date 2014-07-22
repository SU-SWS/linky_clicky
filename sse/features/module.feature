Feature: module
  In order to ensure that Behat can offer full functionality
  As a developer
  I want to use Behat to enable modules

@api
Scenario: Enable Stanford Web Video
  Given I am logged in as a user with the "administrator" role
    And I am on "/admin/modules"
    And I check the box "Stanford Courses"
    And I press "Save configuration"
  Then I should see "The configuration options have been saved"
