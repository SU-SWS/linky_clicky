@stanford
Feature: Stanford Image
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Image module is working properly

  @api @javascript @safe @deploy
  Scenario: Stanford Image
    Given the "stanford_image" module is enabled
    And the "stanford_page" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/field-collections"
    Then I should see "field_s_image_info"
    When I go to "admin/structure/field-collections/field-s-image-info/fields"
    Then I should see "group_s_image"
    And I should see "field_s_image_image"
    And I should see "field_s_image_credits"
    And I should see "field_s_image_source_info"
    And I should see "field_s_image_caption"
    When I go to "admin/structure/field-collections/field-s-image-info/display"
    Then I should see "group_s_image_border_style"
