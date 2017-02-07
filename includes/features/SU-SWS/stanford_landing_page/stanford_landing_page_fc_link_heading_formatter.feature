Feature: Stanford Landing Page FC Link Heading Formatter
  In order to ensure the field formatter works correctly
  As an administrative user
  I want edit a fields display settings.

  @api @safe
  Scenario: The display option for a text field is available.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/field-collections/field_landing_page_item/display/large_landscape"
    Then I select "Link Heading - Stanford Landing Page" from "fields[field_s_lp_item_title][type]"
    And I press the "Save" button
    And I press the "edit-fields-field-s-lp-item-title-settings-edit" button
    And I select "H2" from "fields[field_s_lp_item_title][settings_edit_form][settings][html_tag]"
    And I select "field_s_lp_item_link" from "fields[field_s_lp_item_title][settings_edit_form][settings][link_field]"
    And I press the "Save" button
    Then I should see "Heading tag: h2"
    And I should see "Links to: field_s_lp_item_link"