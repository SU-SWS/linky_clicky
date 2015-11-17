Feature: Stanford Event Series
  In order to ensure that the Event series functionality is complete
  As an administrator, site owner, or editor
  I want to be able to create, edit, delete, and view event series nodes.

  @api
  Scenario: Event series link in the main menu
    When I go to "events/series"
    Then I should see "Event Series" in the "First sidebar" region
    Then I should see "Event Series" in the "Content Head" region

  @api
  Scenario: Event series content exists
    When I go to "events/series"
    Then I should see 1 or more ".view-stanford-event-series-list .views-row" elements

  @api
  Scenario: Event series link in the site actions menu
    Given I am logged in as a user with the "editor" role
    When I go to "node/add/stanford-event-series"
    Then I should see "Access denied"

  @api
  Scenario: Administrator can create event series nodes with events attached
    Given I am logged in as a user with the "administrator" role
    When I go to "node/add/stanford-event-series"
    Then I should see "Create Stanford Event Series" in the "Branding" region
    Then I fill in "edit-title" with "Foo"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-image-info-und-0-field-s-image-image-und-0-upload"
    Then I press "Upload"
    Then I press "Save"
    Then I should be on "events/series/foo"
    Then I should see 1 or more ".field-name-field-s-image-image" elements
    Then I go to "admin/manage/events"
    Then I click on the element with css selector ".views-row-first .views-field-title a"
    Then I click "Edit" in the "Tabs" region
    Then I check "Foo"
    Then I press "Save"
    Then I should see "This event belongs to the following series"
    Then I go to "events/series/foo"
    Then I should see 1 or more ".views-row" elements

  @api
  Scenario: Site owner can create event series types
    Given I am logged in as a user with the "site owner" role
    When I go to "node/add/stanford-event-series"
    Then I should see "Create Stanford Event Series" in the "Branding" region
    Then I fill in "edit-title" with "Foo"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-image-info-und-0-field-s-image-image-und-0-upload"
    Then I press "Upload"
    Then I press "Save"
    Then I should be on "events/series/foo"
    Then I should see 1 or more ".field-name-field-s-image-image" elements
    Then I go to "admin/manage/events"
    Then I click on the element with css selector ".views-row-first .views-field-title a"
    Then I click "Edit" in the "Tabs" region
    Then I check "Foo"
    Then I press "Save"
    Then I should see "This event belongs to the following series"
    Then I go to "events/series/foo"
    Then I should see 1 or more ".views-row" elements

  @api
  Scenario: Event series column on manage events page
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/manage/events"
    Then I should see 1 or more ".views-field-field-s-event-series" elements


