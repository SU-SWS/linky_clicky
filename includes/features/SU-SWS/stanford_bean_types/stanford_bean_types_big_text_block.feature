@api
Feature: Stanford big_text_block bean Type
  In order to ensure that the big_text_block bean exists
  As an administrator
  I want to check that the Stanford big_text_block bean types module is working correctly

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Stanford big_text_block type exists
    And I am on "block/add"
    Then I should see the link "stanford_big_text_block" in the "Content Body" region
