@api
Feature: Stanford social_media_connect bean Type
  In order to ensure that the social_media_connect bean exists
  As an administrator
  I want to check that the Stanford social_media_connect bean types module is working correctly

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Stanford social_media_connect type exists
    And I am on "block/add"
    Then I should see the link "stanford_social_media_connect" in the "Content Body" region
