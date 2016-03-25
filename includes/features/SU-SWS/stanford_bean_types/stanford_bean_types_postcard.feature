@api
Feature: Stanford postcard bean Type
  In order to ensure that the postcard bean exists
  As an administrator
  I want to check that the Stanford postcard bean types module is working correctly

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Stanford postcard type exists
    And I am on "block/add"
    Then I should see the link "stanford_postcard" in the "Content Body" region

  @safe
  Scenario: Callouts view mode is available
    Given I am logged in as a user with the "administrator" role
    And I am on "block/add/stanford-postcard"
    Then I select "Header 3 Column" from "View Mode"
    Then I select "Header 4 Column" from "View Mode"
    Then I select "Photo Landscape 6 Column" from "View Mode"
