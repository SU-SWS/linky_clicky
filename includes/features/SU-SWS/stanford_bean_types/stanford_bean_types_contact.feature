@api
Feature: Stanford contact bean Type
  In order to ensure that the contact bean exists
  As an administrator
  I want to check that the Stanford contact bean types module is working correctly

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Stanford contact type exists
    And I am on "block/add"
    Then I should see the link "stanford_contact" in the "Content Body" region
