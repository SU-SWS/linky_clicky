Feature: Stanford Private Page
  In order to ensure that the Stanford Private Page.
  As all types of users
  I want to check for CRUD permissions.

  @dev @stanford @content
  Scenario: Create Private Page
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Add Private Page" in the "Admin Shortcuts" region
    Then I should see "Create Private Page" in the "Branding" region
    Then I fill in "edit-title" with "Private Page Test"
    And I press the "Save" button
    Then I should see "Private Page Private Page Test has been created" in the "Console" region

  @api @content @contrib @stanford
  Scenario: Site owner can create and edit Private Page types
    Given I am logged in as a user with the "site owner" role
    When I go to "node/add/stanford-private-page"
    Then I should see "Create Private Page" in the "Branding" region
    Then I fill in "edit-title" with "Bar"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-image-info-und-0-field-s-image-image-und-0-upload"
    Then I press "Upload"
    Then I press "Save"
    Then I should be on "private/bar"
    Then I go to "admin/manage/private-page"
    Then I click on the element with css selector ".views-row-first .views-field-title a"
    Then I click "Edit" in the "Tabs" region
    Then I press "Save"
    Then I go to "private/bar"
    And I should see "Bar" in the "Content Head" region

  @api @prod @safe @stanford
  Scenario: Private Page view on manage Private Page
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/manage/private-page"
    Then I should see 1 or more ".view-stanford-private-page-manage" elements

  # TODO: This should be changed to: Given the module always_visible is enabled.
  # And only on VPSA/JSE.
  #
  # @live @contrib
  # Scenario: Test that the Always Visble module is enabled
  #   Given I am logged in as a user with the "administrator" role
  #   And I am on "admin/modules"
  #   Then I should see 1 "#edit-modules-other-always-visible-enable" element
  #   And the checkbox is checked

  # TODO: This check assumes JSE login button and needs to be changed.
  #
  # @api @deploy @prod @safe @contrib @stanford
  # Scenario: Check that the Internal Login button directs to the Private Pages Section
  #   Given I am logged in as a user with the "administrator" role
  #   Given I am on the homepage
  #   And I click "Internal Login" in the "Footer" region
  #   Then I should see "Private Pages" in the "First sidebar" region
  #   And I should see a ".block-menu" element
  #   And I should see "Private Pages" in the "Content Head" region
