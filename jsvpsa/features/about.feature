Feature: About
  In order to ensure that the Jumpstart website About content is visible
  As an end user
  I want to check for the existence of page and block content

  Scenario: Viewing a featured image on the About page
    Given I am on "about"
    Then I should see "Arcade on the Quad" in the "Content Body" region

  Scenario: Clicking the sidebar menu
    Given I am on "about/contact"
    Then I should see "This is your Contact page" in the "Content Body" region
    When I click "Contact" in the "First sidebar" region
    Then I should see "This is your Contact page" in the "Content Body" region
