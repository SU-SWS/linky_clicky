Feature: Stanford Event Series
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford Event Series module is working properly

  @api @dev @destructive
  Scenario: Administrator can create event series nodes with an image attached
    Given the "stanford_event_series" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "node/add/stanford-event-series"
    Then I should see "Create Stanford Event Series" in the "Branding" region
    Then I fill in "edit-title" with "Foo"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-image-info-und-0-field-s-image-image-und-0-upload"
    Then I press "Upload"
    Then I press "Save"
    Then I should be on "events/series/foo"
    And I should see 1 or more ".field-name-field-s-image-image" elements
