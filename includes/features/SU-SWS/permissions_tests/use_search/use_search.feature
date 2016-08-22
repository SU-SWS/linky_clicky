Feature: Ensure Site Owners and Editors can search
  In order to ensure that site owners and editors can search
  As a site owner or editor
  I want to be able to use the search function

  @api @safe @javascript
  Scenario: Site Owner can use search function
  Given I am logged in as a user with the "site owner" role
  And I am on the homepage
  When I fill in "edit-search-block-form--2" with "purple-monkey-dishwasher"
  And I press the "Search" button
  Then I should see "Your search did not yield any results" in the "Content Body" region

  @api @safe @javascript
  Scenario: Editor can use search function
  Given I am logged in as a user with the "editor" role
  And I am on the homepage
  When I fill in "edit-search-block-form--2" with "purple-monkey-dishwasher"
  And I press the "Search" button
  Then I should see "Your search did not yield any results" in the "Content Body" region
