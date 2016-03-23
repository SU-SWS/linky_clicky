Feature: Stanford Landing Page
  In order to ensure the content type is functioning properly
  As an administrative user
  I want create and view a landing page node.

  @api
  Scenario: Landing page installed

  @api
  Scenario: Landing page from content server

  @api @dev @content
  Scenario: Create Landing Page
    Given I am logged in as a user with the "administrator" role
    When I wait for the Site Actions drop down to appear
    And I click "Add Landing Page" in the "Admin Shortcuts" region
    Then I should see "Create Landing Page" in the "Branding" region
    Then I fill in "edit-title" with "Foo Landing Page"
    And I select "Blocks" from "Layout"
    And I press the "Save" button
    Then I should see "Landing Page Foo Landing Page has been created" in the "Console" region
    And I should be on "foo-landing-page"
    Then I should see 1 or more ".view-mode-stanford_4_col_header" elements
    # The view mode changes change the display.
    Then I click the "Edit" link
    And I select "List" from "Layout"
    And I press the "Save" button
    Then I should see 1 or more ".view-mode-stanford_medium_square" elements

    Then I click the "Edit" link
    And I select "Cards" from "Layout"
    And I press the "Save" button
    Then I should see 1 or more ".view-mode-large_landscape" elements

  # Field formatter modules have been enabled
  @api @safe
  Scenario: Field formatter modules have been enabled and are on view modes
    Given I am logged in as a user with the "administrator" role

    And I am on "admin/structure/field-collections/field-landing-page-item/display"
    Then I should see "Title"
    Then I should see "Image"
    Then I should see "Description"
    Then I should see "Primary Link"
    Then I should see "Secondary Links"

    And I am on "admin/structure/field-collections/field-landing-page-item/display/stanford_4_col_header"
    Then I should see "Block Style"
    Then I should see "More Link Style"
    Then I want to validate select field option "edit-fields-field-s-lp-item-title-type" default is "Link Heading - Stanford Landing Page"
    Then I want to validate select field option "edit-fields-field-s-lp-item-image-type" default is "Image - Stanford Landing Page"

    And I am on "admin/structure/field-collections/field-landing-page-item/display/stanford_medium_square"
    Then I should see "Postcard Image"
    Then I should see "Link Style"
    Then I want to validate select field option "edit-fields-field-s-lp-item-title-type" default is "Link Heading - Stanford Landing Page"
    Then I want to validate select field option "edit-fields-field-s-lp-item-image-type" default is "Image - Stanford Landing Page"

    And I am on "admin/structure/field-collections/field-landing-page-item/display/large_landscape"
    Then I should see "Card Link Style"
    Then I should see "Card Style"
    Then I want to validate select field option "edit-fields-field-s-lp-item-title-type" default is "Link Heading - Stanford Landing Page"
    Then I want to validate select field option "edit-fields-field-s-lp-item-image-type" default is "Image - Stanford Landing Page"

  # The correct fields are on the landing page
  @api @safe
  Scenario: The correct fields are on the landing page
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/stanford-landing-page/fields"
    Then I should see "Title"
    Then I should see "Layout"
    Then I should see "Banner Image"
    Then I should see "Lead Text"
    Then I should see "Body"
    Then I should see "Landing Page Item"

  # The manage view is available
  @api @safe
  Scenario: The manage view is available
    Given I am logged in as a user with the "administrator" role
    And I am on "dmin/manage/landing-page"
    Then I should see "Manage Landing Page"

