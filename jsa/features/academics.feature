Feature: Academics
  In order to ensure that the Jumpstart Academic website Academics content is visible
  As an end user
  I want to check for the existence of page and block content

  Scenario: Viewing a featured image on the Undergraduate Programs page
    Given I am on "academics/undergraduate-program"
    Then I should see "Undergraduates studying outside Meyer" in the "Content Body" region

  Scenario: Viewing a postcard block on the Graduate Programs page
    Given I am on "academics/graduate-programs"
    Then I should see "Our Graduate Students" in the "First sidebar" region

  Scenario: Clicking the sidebar menu
    Given I am on "academics/graduate-programs"
    And I click "Overview" in the "First sidebar" region
    Then I should see "This is your Academics Overview page" in the "Content Body" region
