Feature: Stanford Landing Page FC Link Formatter
  In order to ensure the field formatter is working
  As an administrative user
  I want view and edit a field display settings

  @api @safe
  Scenario: The display option for an image field is available.
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/field-collections/field_landing_page_item/display/large_landscape"
    Then I select "Image - Stanford Landing Page" from "fields[field_s_lp_item_image][type]"
    And I press the "Save" button
    And I press the "edit-fields-field-s-lp-item-image-settings-edit" button
    And I select "large-landscape" from "fields[field_s_lp_item_image][settings_edit_form][settings][image_style]"
    And I select "field-s-lp-item-link" from "fields[field_s_lp_item_image][settings_edit_form][settings][image_link]"
    And I press the "Save" button
    Then I should see "Image style: large-landscape"
    And I should see "field-s-lp-item-link"