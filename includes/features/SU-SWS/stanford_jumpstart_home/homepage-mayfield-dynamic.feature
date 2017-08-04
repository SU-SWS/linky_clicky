@deploy
Feature: Mayfield Homepage Layout
  In order to ensure that the Jumpstart "Mayfield" dynamic page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive
  Scenario: Set the homepage to Mayfield news and events
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-mayfield-news-events-selector" button

  @dev
  Scenario Outline: Header content for mayfield with news and events.
    Given I am on the homepage
    Then I should see the "About" heading in the "Content 3 column flow" region
    Then I should see the "Recent News" heading in the "Content 3 column flow" region
    Then I should see the "Upcoming Events" heading in the "Content 3 column flow" region

  @safe
  Scenario Outline: Homepage content for mayfield with news and events
    Given I am on the homepage
    Then I should see "Feature a tagline or website subtitle here" in the "Main Top" region
    Then I should see "Do the right thing. It will gratify some people and astonish the rest." in the "Main Top" region
    Then I should see "Mark Twain" in the "Main Top" region
    Then I should see "This is your About block" in the "Content 3 column flow" region
    Then I should see "Recent News" in the "Content 3 column flow" region
    Then I should see "Upcoming Events" in the "Content 3 column flow" region

  @safe
  Scenario Outline: Homepage links for mayfield with news and events
    Given I am on the homepage
    Then I should see the link "About us" in the "Main Top" region
    Then I should see the link "Learn more about Mark Twain" in the "Main Top" region
    Then I should see the link "More about us" in the "Content 3 column flow" region
    Then I should see the link "See more news" in the "Content 3 column flow" region
    Then I should see the link "See more events" in the "Content 3 column flow" region
