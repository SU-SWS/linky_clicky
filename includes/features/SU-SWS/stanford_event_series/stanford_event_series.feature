Feature: Stanford Event Series
  In order to ensure that the Event series functionality is complete
  As an administrator, site owner, or editor
  I want to be able to create, edit, delete, and view event series nodes.

  @api @safe
  Scenario: Event series link in the site actions menu
    Given I am logged in as a user with the "editor" role
    When I go to "node/add/stanford-event-series"
    Then I should see "Access denied"

  @api @safe
  Scenario: Event series column on manage events page
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/manage/events"
    Then I should see 1 or more ".views-field-field-s-event-series" elements

  @api @safe
  Scenario: Event series link in the site actions menu
    Given I am logged in as a user with the "editor" role
    When I go to "node/add/stanford-event-series"
    Then I should see "Access denied"

  @api @dev @destructive
  Scenario: Administrator can create event series nodes with events attached
    Given I am logged in as a user with the "administrator" role
    When I go to "node/add/stanford-event-series"
    Then I should see "Create Stanford Event Series" in the "Branding" region
    Then I fill in "edit-title" with "Foo"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-image-info-und-0-field-s-image-image-und-0-upload"
    Then I press "Upload"
    Then I press "Save"
    Then I should see 1 or more ".field-name-field-s-image-image" elements
    Then I go to "admin/manage/events"

  @api @dev @destructive
  Scenario: Administrator can create event series nodes with events attached
    Given I am logged in as a user with the "site owner" role
    When I go to "node/add/stanford-event-series"
    Then I should see "Create Stanford Event Series" in the "Branding" region
    Then I fill in "edit-title" with "Foo"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-image-info-und-0-field-s-image-image-und-0-upload"
    Then I press "Upload"
    Then I press "Save"
    Then I should see 1 or more ".field-name-field-s-image-image" elements
    Then I go to "admin/manage/events"

