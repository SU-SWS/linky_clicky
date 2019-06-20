@stanford
Feature: Stanford Drupal Install Profile
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford Sites installation profile is working properly

  @webauth @safe @deploy
  Scenario Outline: Text content
    Given I am on the homepage
    Then I should see "<Text>" in the "<Region>" region

  Examples:
    | Text                                                                             | Region          |
    | Home                                                                             | Main Navigation |
    | SUNetID Login                                                                    | First sidebar   |

  @webauth @safe @deploy
  Scenario Outline: Header content
    Given I am on the homepage
    Then I should see the heading "<Header>" in the "<Region>" region

  Examples:
    | Header                                 | Region        |
    | SUNetID Login                          | First sidebar |

  @api @safe @deploy
  Scenario: Search box - authenticated user
    Given I am logged in as a user with the "administrator" role
    And I am on the homepage
    Then I should see a "#edit-search-block-form--2" element
    When I enter "purple monkey dishwasher" for "Search"
    And I press the "Search" button
    Then I should be on "search/node/purple%20monkey%20dishwasher"
    And I should see the heading "Your search did not yield any results"

  @safe @deploy
  Scenario: Search box - anonymous user
    Given I am on the homepage
    Then I should not see a "#edit-search-block-form--2" element
