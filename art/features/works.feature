Feature: Works
  In order to ensure that the Art and Art History Website displays faculty and student works
  As an end user
  I want to check for the existence of works content that should appear

Scenario Outline: Works page block content
  Given I am on "works"
  Then I should see the "<Header>" heading in the "<Region>" region
 Examples:
  | Header       | Region       |
  | Faculty Work | Content Body |
  | Student Work | Content Body |

Scenario: Works page keyword search
 Given I am on "works"
 When I fill in "Search by keyword" with "Library"
 And I press "Go"
 Then I should see "The Public Library: A Photographic Essay" in the "Content Body" region

Scenario: Works creator search and profile pages
 Given I am on "works"
 When I fill in "Search by creator" with "Bukatman"
 And I press "Go"
 And I click "Blade Runner" in the "Content Body" region
 Then I should see "Scott Bukatman" in the "Second sidebar" region

Scenario: Works page keyword search
 Given I am on "people/scott-bukatman"
 Then I should see "Blade Runner" in the "Content Lower" region

