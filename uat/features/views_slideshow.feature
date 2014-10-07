Feature: Views Slideshow
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Views Slideshow module is working properly

  @api @javascript
  Scenario: Views Slideshow
    Given the "views_slideshow" module is enabled
    And the "views_slideshow_cycle" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/add"
    And I enter "[random]" for "View name"
    And I select "Slideshow" from "Display format"
    And I wait for AJAX to finish
    And I enter "views-slideshow-test" for "edit-page-path--2"
    When I press the "Save & exit" button
    Then I should be on "views-slideshow-test"
    And I should see a ".views-slideshow-cycle-main-frame-row-item" element
