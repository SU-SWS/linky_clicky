Feature: Colorbox
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Colorbox module is working properly

  @api
  Scenario: Colorbox configuration page
    Given the "colorbox" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/media/colorbox"
    Then I should see "Insert module settings"
    And I should see "Extra features"
    And I should see "Styles and options"

  @api @javascript
  Scenario: Colorbox Views plugin
    Given the "colorbox" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/add"
    And I enter "Test Colorbox View" for "View name"
    And I select "Article" from "of type"
    # Have to wait here because Views AJAX shuffles the DOM and otherwise we lose stuffs.
    And I wait 3 seconds
    And I select "fields" from "of"
    And I press the "Continue & edit" button
    And I click "views-add-field"
    And I check the box "Content: Image"
    And I press the "Apply (all displays)" button
    And I select "Colorbox" from "Formatter"
    And I press the "Apply" button
    And I press the "Save" button
    Then I should see "The view Test Colorbox View has been saved"
    When I go to "admin/structure/views/view/test_colorbox_view/delete"
    And I press the "Delete" button
    Then I should be on "admin/structure/views"
    And I should see "The view has been deleted"
