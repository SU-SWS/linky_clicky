Feature: Stanford Events Importer
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Events Importer module is working properly

  @dev @destructive
  Background:
    Given the "stanford_events_importer" module is enabled

  @api @javascript @dev @content
  Scenario: Stanford Events Importer
    Given I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-event-importer"
    When I enter "[random]" for "Title"
    And I select the radio button "Organization"
    And I select "University Communications" from "edit-s-events-organization"
    And I select the radio button "Bookmarked"
    And I press the "Save" button
    And I wait for the batch job to finish
    Then I should see "Stanford Event Importer [random:1] has been created"
    When I am on "node/add/stanford-event-importer"
    And I enter "[random]" for "Title"
    And I select the radio button "Organization"
    And I select "Faculty Women's Forum" from "edit-s-events-organization"
    And I select the radio button "Unlisted"
    And I press the "Save" button
    And I wait for the batch job to finish
    Then I should see "Stanford Event Importer [random:1] has been created"
    When I am on "node/add/stanford-event-importer"
    And I enter "[random]" for "Title"
    And I select the radio button "Category"
    And I wait 1 second
    And I select "Film" from "edit-s-events-category"
    And I press the "Save" button
    And I wait for the batch job to finish
    Then I should see "Stanford Event Importer [random:1] has been created"

  @api @safe @live @deploy
  Scenario: See upcoming events on homepage
    Given I am on the homepage
    Then I should see the "Upcoming Events" heading in the "Content 3 column flow" region

  @api @safe @live @deploy
  Scenario: See upcoming events content
    Given I am on "events/upcoming-events"
    Then I should see a ".event-title" element

  @api @safe @live @deploy
  Scenario: See calendar nav block
    Given I am on "events/upcoming-events"
    Then I should see a ".date-nav-wrapper" element

  @api @safe @live @deploy
  Scenario: See past events - check for pager
    Given I am on "events/past-events"
    Then I should see 5 or fewer ".event-title" elements

  @api @safe @live @deploy
  Scenario: Searching events
    Given I am on "events/upcoming-events"
    When I select "Lecture" from "Filter by type"
    And I press the "Go" button
    Then I should see "Currently, no future events are scheduled" in the "Content Body" region

