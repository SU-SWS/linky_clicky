Feature: IT Unconference Web Content
  In order to ensure that the IT Unconference website content is visible
  As an end user
  I want to check for the existence of page and block content

  Scenario: Homepage text content
    Given I am on the homepage
    Then I should see "Plans are underway for the fourth annual"
    And I should see "The IT Unconference is a rare opportunity"
    And I should see "Law of Two Feet"

  Scenario: Homepage header content
    Given I am on the homepage
    Then I should see the heading "Save the date!" in the "Content Body" region
    And I should see the heading "What is an unconference?" in the "Content Body" region
    And I should see the heading "Is your profile up-to-date?" in the "Content Body" region

  Scenario: Profile interest content
    Given I am on "attendees"
    Then I should see "John Bickar"
    When I click "Behat"
    Then I should be on "interests/behat"
    And I should see "John Bickar"
    And I should see 2 or more ".views-row" elements