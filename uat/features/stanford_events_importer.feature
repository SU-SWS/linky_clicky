Feature: Stanford Events Importer
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Events Importer module is working properly

Background:
  Given the "stanford_events_importer" module is enabled

@api @javascript
Scenario: Stanford Events Importer
  Given I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-event-importer"
  When I enter "[random]" for "Title"
    And I select the radio button "Organization"
    And I select "University Communications" from "edit-s-events-organization"
    And I select the radio button "Bookmarked"
    And I press the "Save" button
    And I wait 5 seconds
  Then I should see "Stanford Event Importer [random:1] has been created"
    And I should see "Created 5 nodes"
  When I am on "node/add/stanford-event-importer"
    And I enter "[random]" for "Title"
    And I select the radio button "Organization"
    And I select "Faculty Women's Forum" from "edit-s-events-organization"
    And I select the radio button "Unlisted"
    And I press the "Save" button
  Then I should see "Stanford Event Importer [random:1] has been created"
    And I should see "Created 4 nodes"
  When I am on "node/add/stanford-event-importer"
    And I enter "[random]" for "Title"
    And I select the radio button "Category"
    And I wait 1 second
    And I select "Film" from "edit-s-events-category"
    And I press the "Save" button
  Then I should see "Stanford Event Importer [random:1] has been created"
    And I should see "Created 8 nodes"


