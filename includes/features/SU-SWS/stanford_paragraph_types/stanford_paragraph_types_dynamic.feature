@api
Feature: Stanford Paragraph Types Dynamic
  In order to ensure that the Stanford Paragraphs Types installs properly
  As an end user
  I want to verify the display of content.

  @destructive @dev
  Scenario: Check for dynamic paragraph type
    Given I am logged in as a user with the "administrator" role
    And the "stanford_paragraph_types_dynamic" module is enabled

    Then I am on "admin/structure/paragraphs/p_views/fields"
    And I should see "field_p_views_view"

    Then I am on "admin/structure/paragraphs/p_views/display/default"
    And I want to validate select field option "fields[field_p_views_view][type]" default value is "blockreference_without_title"
