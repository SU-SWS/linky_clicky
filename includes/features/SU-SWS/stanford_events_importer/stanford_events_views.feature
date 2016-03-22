Feature: Events
  In order to verify that Stanford events views functionality
  As an end user
  I want to check for the existence of events content

  @content @deploy @prod
  Scenario: See upcoming events content
    Given I am on "events/upcoming-events"
    Then I should see a ".event-title" element

  @content @deploy @prod
  Scenario: See calendar nav block
    Given I am on "events/upcoming-events"
    Then I should see a ".date-nav-wrapper" element

  @content @deploy @prod
  Scenario: See past events - check for pager
    Given I am on "events/past-events"
    Then I should see 5 or fewer ".event-title" elements

  @content @deploy
  Scenario: Searching events
    Given I am on "events/upcoming-events"
    When I select "Lecture" from "Filter by type"
    And I press the "Go" button
    Then I should see "Currently, no future events are scheduled" in the "Content Body" region
