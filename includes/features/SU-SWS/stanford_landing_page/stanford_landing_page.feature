Feature: Stanford Landing Page
  In order to ensure the content type is functioning properly
  As an administrative user
  I want create and view a landing page node.

  @api
  Scenario: Landing page installed

  @api
  Scenario: Landing page from content server

  @api @javascript @dev @content
  Scenario: Create Landing Page
    Given I am logged in as a user with the "administrator" role
    When I wait for the Site Actions drop down to appear
    And I click "Add Landing Page" in the "Admin Shortcuts" region
    Then I should see "Create Landing Page" in the "Branding" region
    Then I fill in "edit-title" with "Foo"
    And I select "Blocks" from "Layout"
    And I press the "Save" button
    Then I should see "Landing Page Foo has been created" in the "Console" region
    And I should be on "foo"

  # TEST FOR:
  #####################

  # Field formatter modules have been enabled
  # Node convert module is available
  # The correct fields are on the landing page
  # The field collection is available
  # The view modes are available
  # The view mode changes change the display
  # The manage view is available
  # The view mode css class is on the field
