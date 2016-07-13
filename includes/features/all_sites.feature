Feature: Every page will be checked for the following regions, elements and functions
  In order to ensure that the content on all sites exist,
  As an end user
  I want to check whether the content exists

@deploy
Scenario: Verify that the logo exists in the header region of the homepage
  Given I am on the homepage
  Then I should see the "img" element in the "Header" region

@deploy
Scenario: Verify that the Main Navigation region exists on the homepage
  Given I am on the homepage
  Then I should see an "#main-nav" element

@deploy
Scenario: Verify that /user page has the appropriate content
  Given I am on "user"
  Then I should see the text "WebAuth Login"
  And I should see the text "Local User Login"

@deploy
Scenario: Verify that the Page Not Found displays the correct information
  Given I am on "purple-monkey-dishwasher"
  Then I should see the heading "Page Not Found"
  And I should see the text "Oops! We can't find that page!"
  And I should see the text "We have a new site and things have moved around a bit. Here are some good places to start."
  And I should see the heading "Starting points"
  And I should see the link "Homepage" in the "Content Body" region
  And I should see the link "Search this site..." in the "Content Body" region
  When I click "Homepage"
  Then I should be on the homepage
  Given I am on "purple-monkey-dishwasher"
  When I click "Search this site..."
  Then I should be on "search/node"

@deploy
Scenario: Verify that entering a search yields the correct result
  Given I am on the homepage
  Then I should see a "#edit-search-block-form--2" element
  When I enter "purple monkey dishwasher" for "Search"
  And I press the "Search" button
  Then I should be on "search/node/purple%20monkey%20dishwasher"
  And I should see the heading "Your search did not yield any results"
  And I should see "Remove quotes around phrases to match each word individually:"
  And I should see "stanford university"
  And I should see "will match less than stanford university."
  And I should see "Consider loosening your query with OR: stanford university will match less than stanford OR university."

@deploy
Scenario: Verify that there is a Web Accessibility element on the page
  Given I am on "node/144"
  Then I should see the text "The accessibility content below is required by University Communications for all large units at Stanford:"
  And I should see the heading "Web Accessibility"
  And I should see the text "Stanford University is committed to providing an online environment"
  And I should see the text "Having trouble accessing any of this content due to a disability? "
