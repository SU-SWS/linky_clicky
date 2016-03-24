Feature: Stanford Page
  In order to ensure that the Stanford Page displays properly
  As an end user
  I want to verify the display of content.

  @api @safe
  Scenario: Check for fields on manage fields page
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/stanford_page/fields"
    Then I should see "Title"
    And I should see "field_s_image_info"
    And I should see "body"
    And I should see "field_s_page_image_insert"
    And I should see "field_s_page_file"

  @api @safe
  Scenario: Check for display on manage display page
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/stanford_page/display"
    Then I should see "Postcard"
    And I should see "Postcard Image"
    And I should see "Postcard Content"
    And I should see "View mode: Large Scaled"
    Then I want to validate select field option "edit-fields-field-s-page-file-type" default is "Generic file"

  @api @javascript @content @dev
  Scenario: Add Stanford Page
    Given I am logged in as a user with the "administrator" role
    When I wait for the Site Actions drop down to appear
    And I click "Add Page" in the "Admin Shortcuts" region
    Then I should see "Create Stanford Page" in the "Branding" region
    And the "Text format" field should contain "content_editor_text_format"
    When I click "Show Add/Edit Image"
    Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-image-info-und-0-field-s-image-image-und-0-upload"
    Then I should see "Source Info" in the "Content Body" region
    When I enter "Foo Stanford Page" for "Title"
    # Then I fill in "Hello, this is a nice body" in WYSIWYG editor "cke_contents_edit-body-und-0-value-iframe"
    And I press the "Save" button
    Then I should see "Stanford Page Foo Stanford Page has been created"
    And I should be on "foo-stanford-page"
    And I should see 1 ".field-name-field-s-image-image" element

  @api @safe
  Scenario: Check for display on manage pages view
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views"
    Then I should see "Stanford Page: Manage"
