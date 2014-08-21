Feature: Redirect
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Redirect module is working properly

@api
Scenario: Redirect
  Given the "redirect" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/search/redirect/add"
  When I enter "foo" for "From"
    And I enter "<front>" for "To"
    And I press the "Save" button
  Then I should see "The redirect has been saved"
  When I go to "foo"
  Then I should be on the homepage
  When I go to "admin/config/search/redirect"
    And I click "Delete" in the "foo" row
    And I press the "Confirm" button
  Then I should see "The redirect has been deleted"