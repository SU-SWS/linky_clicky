@api
Feature: Stanford Jumpstart Plus
  In order to ensure that the Stanford Jumpstart Plus Product works
  As an administrator
  I want to verify that I can see and use the customizations.

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Verify custom permissions are available
    And I am on "admin/people/permissions"
    Then I should see "Access Jumpstart Plus"


