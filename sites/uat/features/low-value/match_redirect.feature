@contrib
Feature: Match Redirect
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Match Redirect module is working properly

  @api @dev @destructive @javascript
  Scenario: Add a wildcard redirect
    Given the "match_redirect" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/search/match_redirect/add"
    When I enter "foo/*" for "Pattern"
    And I enter "https://en.wikipedia.org/wiki/*" for "Target"
    And I select "301 (Moved Permanently)" from "Status Code"
    And I check the box "Retain query string through redirect?"
    And I press the "Save" button
    Then I should see "Redirect saved"
    When I go to "foo/Area_code_650"
    Then I should be on "https://en.wikipedia.org/wiki/Area_code_650"
    When I go to "foo/Area_codes_415_and_628"
    Then I should be on "https://en.wikipedia.org/wiki/Area_codes_415_and_628"
    When I go to "admin/config/search/match_redirect"
    And I click "Delete" in the "foo" row
    And I press the "Confirm" button
    Then I should see "Redirect has been deleted"
