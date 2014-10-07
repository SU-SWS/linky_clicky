Feature: Pathologic
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Pathologic module is working properly

  @api
  Scenario: Pathologic
    Given the "pathologic" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    When I am on "admin/config/content/formats/filtered_html"
    And I check the box "Correct URLs with Pathologic"
    And I enter "/drupal7-update-status/" for "All base paths for this site"
    And I press the "Save configuration" button
    Then I should see "The text format Filtered HTML has been updated"
    When I am on "admin/config/content/formats/full_html"
    And I check the box "Correct URLs with Pathologic"
    And I enter "/drupal7-update-status/" for "All base paths for this site"
    And I press the "Save configuration" button
    Then I should see "The text format Full HTML has been updated"