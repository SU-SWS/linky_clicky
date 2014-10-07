Feature: Stanford Image Styles
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Image Styles module is working properly

  @api
  Scenario: Stanford Image Styles
    Given the "stanford_image_styles" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    When I am on "admin/config/media/image-styles"
    Then I should see "12-col-banner"
    And I should see "3-col-header"
    And I should see "4-col-header"
    And I should see "6-col-banner"
    And I should see "6-col-banner-short"
    And I should see "6-col-banner-tall"
    And I should see "8-col-banner"
    And I should see "8-col-banner-short"
    And I should see "8-col-banner-tall"
    And I should see "9-col-banner"
    And I should see "9-col-banner-short"
    And I should see "icon-square"
    And I should see "large-landscape"
    And I should see "large-landscape-scaled"
    And I should see "large-profile"
    And I should see "large-profile-scaled"
    And I should see "large-scaled"
    And I should see "large-square"
    And I should see "med-landscape"
    And I should see "med-landscape-scaled"
    And I should see "med-profile"
    And I should see "med-profile-scaled"
    And I should see "med-square"
    And I should see "page-width"
    And I should see "sm-landscape"
    And I should see "sm-profile"
    And I should see "sm-square"
    And I should see "thmb-landscape"
    And I should see "thmb-profile"
    And I should see "thmb-square"