Feature: Metatag
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Metatag module is working properly

  @api
  Scenario: Metatag
    Given the "metatag" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/search/metatags/config/global"
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit enim labore shankle tail in doner" for "Description"
    And I press the "Save" button
    Then I should see "The meta tag defaults for Global have been saved."
    When I am on "admin/config/search/metatags/config/global/revert"
    And I press the "Confirm" button
    Then I should see "The meta tag defaults for Global have been reverted."