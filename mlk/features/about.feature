Feature: About
  In order to ensure that the Jumpstart Academic website About content is visible
  As an end user
  I want to check for the existence of page and block content

  Scenario: Checking for content on the About page
    Given I am on "about/king-institute"
    Then I should see the heading "The King Institute" in the "Content" region

  Scenario: Viewing a featured image on the About page
    Given I am on "about/king-institute"
    Then I should see 1 or more ".group_s_postcard_image" elements

  Scenario: Check viability of links on the About page
    Given I am on "about/king-institute"
    When I click "The Papers of Martin Luther King, Jr."
    Then I should be on "king-papers/about-papers-project"

  Scenario Outline: Location page headers
    Given I am on "about/location"
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                 | Region       |
    | Address                | Content Body |
    | Directions and Parking | Content Body |
    | Driving Directions     | Content Body |
    | Parking                | Content Body |
    | Campus Map             | Content Body |
    | Map                    | Content Body |

  Scenario: Clicking links
    Given I am on "about/location"
    And I click "Contact" in the "First sidebar" region
    Then I should be on "about/contact"
    When I click "View Staff roster"
    Then I should be on "people/staff"

  Scenario Outline: Contact page headers
    Given I am on "about/contact"
    Then I should see the "<Header>" heading in the "<Region>" region

  Examples:
    | Header                                                  | Region       |
    | Contact the Institute                                   | Content Body |
    | Martin Luther King, Jr., Research & Education Institute | Content Body |
    | Phone                                                   | Content Body |
    | Fax                                                     | Content Body |
    | Email                                                   | Content Body |
    | Contact a Staff Member                                  | Content Body |

