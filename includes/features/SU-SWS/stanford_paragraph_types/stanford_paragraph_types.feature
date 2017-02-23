@api
Feature: Stanford Paragraph Types
  In order to ensure that the Stanford Paragraphs Types installs properly
  As an end user
  I want to verify the display of content.

  @safe
  Scenario: Check for all paragraph types
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/paragraphs"
    Then I should see "p_buttons"
    And I should see "p_callout"
    And I should see "p_cards"
    And I should see "p_hero"
    And I should see "p_wysiwyg"

  @safe
  Scenario: Check for all fields in Buttons paragraph type.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/paragraphs/p-buttons/fields"
    Then I should see "field_p_buttons_button"

  @safe
  Scenario: Check for all fields in Callout Text paragraph type.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/paragraphs/p-callout/fields"
    Then I should see "field_p_callout_text"
    And I should see "field_p_callout_more_link"

  @safe
  Scenario: Check for all fields in Teaser Cards paragraph type.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/paragraphs/p-cards/fields"
    Then I should see "field_p_cards_card"

  @safe
  Scenario: Check for all fields in Hero paragraph type.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/paragraphs/p-hero/fields"
    Then I should see "field_p_buttons_button"
    And I should see "field_p_hero_image"
    And I should see "field_p_hero_video"
    And I should see "field_p_hero_alignment"
    And I should see "field_p_hero_superhead"
    And I should see "field_p_hero_headline"
    And I should see "field_p_hero_more_link"

  @safe
  Scenario: Check for all fields in Menu paragraph type.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/paragraphs/p-menu/fields"
    Then I should see "field_p_menu_menu"
    And I should see "field_p_menu_header"
    And I should see "field_p_menu_image"
    And I should see "field_p_menu_image_caption"
    And I should see "field_p_menu_wysiwyg"
    And I should see "field_p_menu_image_insert"
    And I should see "field_p_menu_file_insert"

  @safe
  Scenario: Check for all fields in WYSIWYG paragraph type.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/paragraphs/p-wysiwyg/fields"
    Then I should see "field_p_wysiwyg_title"
    And I should see "field_p_wysiwyg_body"
    And I should see "field_p_wysiwyg_button"
    And I should see "field_p_wysiwyg_image"
