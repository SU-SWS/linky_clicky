@api
Feature: Stanford large block bean Type
  In order to ensure that the large block bean exists
  As an administrator
  I want to check that the Stanford large block bean types module is working correctly

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Stanford large block type exists
    And I am on "block/add"
    Then I should see the link "stanford_large_block" in the "Content Body" region
