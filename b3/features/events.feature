Feature: Events
  In order to ensure that the Jumpstart website Events content is visible
  As an end user
  I want to check for the existence of the page

  Scenario: Check the contents of the "Events" page
    Given I am on "events"
    Then I should see the heading "Sample Event" in the "Content Body" region
