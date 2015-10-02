Feature: Search
  In order to ensure that the Faculty Development search is functioning properly
  As an end user
  I want to search for content and have it appear

Scenario: Search
  Given I am on the homepage
  And I enter "reports" for "Search"
  And I press the "Search" button
  Then I should be on "search/content/reports"
  And I should see the heading "Search results"
  And I should see the heading "Reports & Publications"
  And I should see the heading "Faculty Women's Forum Related Resources"
  And I should see the heading "Data and Reports"
  And I should see the heading "WISE References"

