Feature: About
  In order to ensure that the Jumpstart Academic and Jumpstart Engineering website About content is visible
  As an end user
  I want to check for the existence of page and block content

  @content @deploy @prod
  Scenario: On a production site, check that the About page and menu are visible
    Given I am on "about/about-us"
    Then I should see "About Us" in the "Content Head" region
    Then I should see "About" in the "First sidebar" region

  @content @deploy
  Scenario: Viewing a featured image on the About page
    Given I am on "about/about-us"
    Then I should see "Arcade on the Quad" in the "Content Body" region

  @content @deploy
  Scenario: Viewing a postcard block with Google Maps embed on the Location page
    Given I am on "about/location"
    Then I should see the link "View Larger Map"

  @content @deploy
  Scenario: Clicking the sidebar menu
    Given I am on "about/contact"
    And I click "Mission" in the "First sidebar" region
    Then I should see "This is your Mission page" in the "Content Body" region

