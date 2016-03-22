Feature: Events
  In order to ensure that CAW events are viewable
  As an end user
  I want to check for the existence of events content

  @safe @live @site
  Scenario: See upcoming events on homepage
    Given I am on the homepage
    Then I should see "Employee Calendar" in the "Content Lower" region

  @safe @live @site
  Scenario: See upcoming events content
    Given I am on "events/upcoming-events"
    Then I should see a ".event-title" element

  @safe @live @site
  Scenario: See calendar nav block
    Given I am on "events/upcoming-events"
    Then I should see a ".date-nav-wrapper" element

  @safe @live @site
  Scenario: See past events - check for pager
    Given I am on "events/past-events"
    Then I should see 5 or fewer ".event-title" elements

  @safe @live @site
  Scenario: Searching events
    Given I am on "events/upcoming-events"
    When I select "Seminar" from "Filter by type"
    And I press the "Go" button
    # Then I should see "Currently, no future events are scheduled" in the "Content Body" region

  @api @safe @live @site
  Scenario: See entity reference field to event series
    Given I am logged in as a user with the "administrator" role
    Given I am on "node/add/stanford-event"
    Then I should see the heading "Create Event"
