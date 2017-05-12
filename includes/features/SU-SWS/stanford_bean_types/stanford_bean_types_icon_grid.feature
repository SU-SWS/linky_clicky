@api
Feature: Stanford Icon Grid bean Type
  In order to ensure that the Icon Grid bean exists
  As an administrator
  I want to check that the Stanford Icon Grid bean types module is working correctly

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Stanford Icon Grid type exists
    And I am on "block/add"
    Then I should see the link "stanford_social_media_connect" in the "Content" region

  @safe
  Scenario: Icon Grid Block Type Fields Exist
    Given I am on "admin/structure/block-types/manage/stanford-icon-grid/fields"
    Then I should see "Label"
    And I should see "Title"
    And I should see "field_s_icon_ext_columns"
    Then I am on "admin/structure/field-collections/field_s_icon_ext_columns"
    And I should see "field_s_icon_ext_columns_fa_icon"
    And I should see "field_s_icon_ext_columns_up_icon"
    And I should see "field_s_icon_ext_columns_bg_colo"
    And I should see "field_s_icon_ext_columns_title"
    And I should see "field_s_icon_ext_columns_links"

  @dev @destructive
  Scenario: Create Icon Grid connect block
    And I am on "block/add/stanford-icon-grid"
    Then I fill in "edit-label" with "Behat Icon Grid Block"
    And I fill in "edit-title" with "Behat Icon Grid Block"

    # Column 1
    And I select "Map" from "field_s_icon_ext_columns[und][0][field_s_icon_ext_columns_fa_icon][und][0][icon]"
    And I select "Dark Taupe" from "field_s_icon_ext_columns[und][0][field_s_icon_ext_columns_bg_colo][und]"
    And I fill in "field_s_icon_ext_columns[und][0][field_s_icon_ext_columns_title][und][0][value]" with "Column #1"
    And I fill in "field_s_icon_ext_columns[und][0][field_s_icon_ext_columns_links][und][0][title]" with "Google"
    And I fill in "field_s_icon_ext_columns[und][0][field_s_icon_ext_columns_links][und][0][url]" with "google.com"
    Then I click on the element with css selector "#edit-field-s-icon-ext-columns-und-0-field-s-icon-ext-columns-links-und-add-more"
    And I fill in "field_s_icon_ext_columns[und][0][field_s_icon_ext_columns_links][und][1][title]" with "Google"
    And I fill in "field_s_icon_ext_columns[und][0][field_s_icon_ext_columns_links][und][1][url]" with "google.com"
    Then I click on the element with css selector "#edit-field-s-icon-ext-columns-und-add-more"

   # Column 2
    Then I attach the file "features/stanford_bean_types/img/bike icon.png" to "files[field_s_icon_ext_columns_und_1_field_s_icon_ext_columns_up_icon_und_0]"
    And I select "Cool Gray" from "field_s_icon_ext_columns[und][1][field_s_icon_ext_columns_bg_colo][und]"
    And I fill in "field_s_icon_ext_columns[und][1][field_s_icon_ext_columns_title][und][0][value]" with "Column #2"
    And I fill in "field_s_icon_ext_columns[und][1][field_s_icon_ext_columns_links][und][0][title]" with "Facebook"
    And I fill in "field_s_icon_ext_columns[und][1][field_s_icon_ext_columns_links][und][0][url]" with "facebook.com"
    Then I press "Save"
    Then I should see "has been created."
    Then I should see "Behat Icon Grid Block"
    Then I should see 1 or more ".field-name-field-s-icon-ext-columns-fa-icon i" elements
    Then I should see 1 or more ".field-name-field-s-icon-ext-columns-up-icon img" elements
    Then I should see 1 or more ".field-name-field-s-icon-ext-columns-links a" elements
    Then I click "Delete Block"
    Then I press "Delete"
    Then I should see "Icon Grid Behat Icon Grid Block has been deleted."
