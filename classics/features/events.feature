Feature: Events
  In order to ensure that Department of Classics events are viewable
  As an end user
  I want to check for the existence of events content

  Scenario: See upcoming events on homepage
    Given I am on the homepage
    Then I should see the "Upcoming Events" heading in the "Content 4 column flow" region

  Scenario: See upcoming events content
    Given I am on "events/upcoming-events"
    Then I should see a ".event-title" element

  Scenario: See calendar nav block
    Given I am on "events/upcoming-events"
    Then I should see a ".date-nav-wrapper" element

  Scenario: See past events - check for pager
    Given I am on "events/past-events"
    Then I should see 5 or fewer ".event-title" elements

  Scenario: Searching events
    Given I am on "events/upcoming-events"
    When I enter "Dec 4 2014" for "edit-field-stanford-event-datetime-value-1-min-datepicker-popup-1"
    And I press the "Go" button
    Then I should see a ".view-id-stanford_events_views" element
    And I should see 1 or more ".views-row" elements
