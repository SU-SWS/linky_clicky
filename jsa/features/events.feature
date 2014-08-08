Feature: Events
 In order to ensure that Jumpstart Academics events are viewable
 As an end user
 I want to check for the existence of events content

Scenario: See upcoming events on homepage
 Given I am on the homepage
 Then I should see the "Upcoming Events" heading in the "Content 3 column flow" region

Scenario: See upcoming events content
 Given I am on "events/upcoming-events"
 Then I should see a ".event-title" element

Scenario: See calendar nav block
 Given I am on "events/upcoming-events"
 Then I should see a ".date-nav-wrapper" element

Scenario: See past events - check for pager
 Given I am on "events/past-events"
 Then I should see the link "next" in the "Content Body" region

# How do we target dynamic content links when we can’t guarantee that node will be there?
Scenario: See an event node
 Given I am on "events/aural-architecture-seminar-peter-jeffery-0"
 Then I should see "As both a forum open to the public and a course offering academic credit to Stanford" in the "Content Body" region

# Can’t test for this yet until the filter is placed
Scenario: Searching events
 Given I am on "events/upcoming-events"
 When I select "Lecture" from "Filter by event type"
 And I press the "Go" button
 Then I should see "Studio Lecture Series" in the "Content Body" region