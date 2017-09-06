@api
Feature: Stanford Paragraph Types Slideshow
  In order to ensure that the Stanford Paragraphs Types installs properly
  As an end user
  I want to verify the display of content.

  @safe
  Scenario: Check for slideshow paragraph type
    Given I am logged in as a user with the "administrator" role

    Then I am on "admin/structure/field-collections/field_p_slideshow_slides/fields"
    And I should see "field_p_slideshow_slide_caption"
    And I should see "field_p_slideshow_slide_image"

    Then I am on "admin/structure/field-collections/field_p_slideshow_slides/display/default"
    And I want to validate select field option "fields[field_p_slideshow_slide_caption][type]" default value is "text_default"
    And I want to validate select field option "fields[field_p_slideshow_slide_image][type]" default value is "image"

    Then I am on "admin/structure/paragraphs/p_slideshow/fields"
    And I should see "field_p_slideshow_slides"

    Then I am on "admin/structure/paragraphs/p_slideshow/display/default"
    And I want to validate select field option "fields[field_p_slideshow_slides][type]" default value is "slideshow"

    Then I am on "admin/structure/paragraphs/p_slideshow/display/paragraphs_editor_preview"
    And I want to validate select field option "fields[field_p_slideshow_slides][type]" default value is "hidden"
