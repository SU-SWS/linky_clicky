@contrib
Feature: WYSIWYG Filter
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the WYSIWYG Filter module is working properly

  @api @javascript @dev @destructive
  Scenario: WYSIWYG Filter
    Given the "wysiwyg_filter" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "admin/config/content/formats/filtered_html"
    And I check the box "WYSIWYG Filter"
    And I enter "stanford.edu" for "Domains list"
    And I press the "Save configuration" button
    Then I should see "The text format Filtered HTML has been updated."
    When I am on "admin/config/content/formats/filtered_html"
    And I uncheck the box "WYSIWYG Filter"
    And I press the "Save configuration" button
    Then I should see "The text format Filtered HTML has been updated."

  @api @javascript @dev @destructive
  Scenario: WYSIWYG Filter Do Not Run Form Validation for Disabled Filters
    Given the "wysiwyg_filter" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "admin/config/content/formats/filtered_html"
    And I check the box "WYSIWYG Filter"
    And I enter "default" for "Domains list"
    # Need to do this to get Selenium to scroll back up to the top of the page.
    And I enter "Filtered HTML" for "Name"
    And I uncheck "WYSIWYG Filter"
    And I press the "Save configuration" button
    Then I should not see "Invalid domain default"
    And I should see "The text format Filtered HTML has been updated."
