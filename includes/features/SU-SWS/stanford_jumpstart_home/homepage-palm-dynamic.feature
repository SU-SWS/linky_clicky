@deploy
Feature: Palm Homepage Layout
  In order to ensure that the Jumpstart "Palm" dynamic page layout is configured correctly
  As an end user
  I want to check for the existence of content that should appear

  @api @dev @destructive
  Scenario: Change homepage to palm news and events
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I press the "edit-layouts-stanford-jumpstart-home-palm-news-events-selector" button

  @safe
  Scenario: Header content for palm news and events
    Given I am on the homepage
    Then I should see the "Welcome to your site!" heading in the "Main Top" region
    Then I should see the "About" heading in the "Content 3 column flow" region
    Then I should see the "Recent News" heading in the "Content 3 column flow" region
    Then I should see the "Upcoming Events" heading in the "Content 3 column flow" region

  @safe
  Scenario: Homepage content for palm news and events
    Given I am on the homepage
    Then I should see "Edit this block to change the image and caption." in the "Main Top" region
    Then I should see "This is your About block." in the "Content 3 column flow" region
    Then I should see "Sample News" in the "Content 3 column flow" region

  @safe
  Scenario: Homepage links for palm news and events
    Given I am on the homepage
    Then I should see the link "Example link" in the "Main Top" region
    Then I should see the link "More about us" in the "Content 3 column flow" region
    Then I should see the link "See more news" in the "Content 3 column flow" region
    Then I should see the link "See more events" in the "Content 3 column flow" region
