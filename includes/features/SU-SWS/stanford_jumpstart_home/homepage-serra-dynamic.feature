@deploy
Feature: Serra Homepage Layout
  In order to ensure that the Jumpstart "Serra" dynamic page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive
  Scenario: Enable the Serra News and Events homepage layout as administrator
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-serra-news-events-selector" button

  @safe
  Scenario Outline: Header content for serra news and events
    Given I am on the homepage
    Then I should see the "About" heading in the "Content 3 column flow" region
    Then I should see the "Recent News" heading in the "Content 3 column flow" region
    Then I should see the "Upcoming Events" heading in the "Content 3 column flow" region

  @safe
  Scenario Outline: Homepage content for serra news and events
    Given I am on the homepage
    Then I should see "Feature a tagline or website subtitle here" in the "Main Top" region
    Then I should see "To edit the block and remove this placeholder" in the "Main Top" region
    Then I should see "99.9%" in the "Main Top" region
    Then I should see "This is your first Mission block." in the "Content 2 column flow" region
    Then I should see "This is your second Mission block." in the "Content 2 column flow" region
    Then I should see "Use this block to list facts or highlight information" in the "Main Top" region
    Then I should see "This is your About block." in the "Content 3 column flow" region

  @safe
  Scenario Outline: Homepage links for serra news and events
    Given I am on the homepage
    Then I should see the link "About us" in the "Main Top" region
    Then I should see the link "More about us" in the "Content 3 column flow" region
    Then I should see the link "See more news" in the "Content 3 column flow" region
    Then I should see the link "See more events" in the "Content 3 column flow" region
