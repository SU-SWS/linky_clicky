Feature: Events and Exhibitions
 In order to ensure that the Art and Art History website events and exhibitions are viewable
 As an end user
 I want to check for the existence of events and exhibition content

Scenario Outline: Calendar page content
 Given I am on "calendar"
 Then I should see the "<Header>" heading in the "<Region>" region
 Examples:
 | Header                          | Region         |
 | Events                          | Content Bottom |
 | Exhibitions                     | Content Bottom |
 | Looking for something specific? | First sidebar  |

Scenario: Searching events
 Given I am on "events/upcoming-events"
 When I select "Lecture" from "Filter by event type"
 And I press "Go"
 Then I should see "Christensen Distinguished Lecture" in the "Content Body" region

Scenario: Searching exhibitions
 Given I am on "exhibitions/current-exhibitions"
 When I fill in "Search by location" with "Stanford Art Gallery"
 And I press "Go"
 Then I should see "Stanford Art Gallery" in the "Content Body" region

Scenario: See exhibitions on exhibition spaces page
 Given I am on "exhibition-spaces"
 Then I should see the "Exhibitions" heading in the "Content Lower" region

Scenario: See past exhibitions - check for pager
 Given I am on "exhibitions/past-exhibitions"
 Then I should see "next ›" in the "Content Body" region

Scenario: See an event node
 Given I am on "events/aural-architecture-seminar-peter-jeffery-0"
 Then I should see "As both a forum open to the public and a course offering academic credit to Stanford" in the "Content Body" region

Scenario: See an exhibition node
 Given I am on "exhibitions/penumbra"
 Then I should see "Photography from the Continuing Studies course, Photography as Art" in the "Content Body" region
