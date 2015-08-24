Feature: Events
  In order to ensure that the Undergrad website has the correct events
  As an end user
  I want to check for the existence of content that should appear

  @api @javascript
  Scenario: Checking event times are correct
    Given I am on "calendar/events"
    And the events feed is available