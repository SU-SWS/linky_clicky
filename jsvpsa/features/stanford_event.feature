Feature: Stanford Event
  In order to ensure that the Stanford Event content type and supporting functionality works.
  As an end user and administrator
  I want to check for both the creation and display of the event content.

  @api @dev @destructive
  Scenario: The module is enabled
    Given the "stanford_events_importer" module is enabled

# Scenario: Stanford Events Importer has an error on selecting "university communications"

  @api @javascript @dev @content
  Scenario: Stanford Events Importer
    Given I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-event-importer"
    When I enter "[random]" for "Title"
    And I select the "Organization" radio button
    And I select "University Communications" from "edit-s-events-organization"
    And I select the "Bookmarked" radio button
    And I press the "Save" button
    And I wait for the batch job to finish
    Then I should see "Stanford Event Importer [random:1] has been created"
    When I am on "node/add/stanford-event-importer"
    And I enter "[random]" for "Title"
    And I select the "Organization" radio button
    And I select "Faculty Women's Forum" from "edit-s-events-organization"
    And I select the "Unlisted" radio button
    And I press the "Save" button
    And I wait for the batch job to finish
    Then I should see "Stanford Event Importer [random:1] has been created"
    When I am on "node/add/stanford-event-importer"
    And I enter "[random]" for "Title"
    And I select the "Category" radio button
    And I wait 1 second
    And I select "Film" from "edit-s-events-category"
    And I press the "Save" button
    And I wait for the batch job to finish
    Then I should see "Stanford Event Importer [random:1] has been created"

# Scenario: See upcoming events on homepage has an error on Content Body region

	@api @safe @live @deploy
  	Scenario: See upcoming events on homepage
    Given I am on the homepage
    Then I should see the "Upcoming Events" heading in the "Content Body" region

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
