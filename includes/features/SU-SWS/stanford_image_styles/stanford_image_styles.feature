Feature: Stanford Image Styles
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Image Styles module is working properly

  @api @safe
  Scenario: Stanford Image Styles
    Given the cache has been cleared
    And I run drush "fr" "stanford_image_styles"
    And I am logged in as a user with the "administrator" role
    When I am on "admin/config/media/image-styles"
    And I should see "12-col-banner"
    And I should see "12-col-banner-tall"
    And I should see "3-col-header"
    And I should see "4-col-header"
    And I should see "6-col-banner"
    And I should see "6-col-banner-short"
    And I should see "6-col-banner-tall"
    And I should see "6-col-photo-landscape"
    And I should see "8-col-banner"
    And I should see "8-col-banner-short"
    And I should see "8-col-banner-tall"
    And I should see "9-col-banner"
    And I should see "9-col-banner-short"
    And I should see "banner (850x400)"
    And I should see "Full Width Banner (Scale and Crop 1600x600)"
    And I should see "full-width-banner-short"
    And I should see "Half Page Profile (Scale and Crop 600x700)"
    And I should see "Header (Scale 850x400)"
    And I should see "Huge Landscape (Scale and Crop 1500x1200)"
    And I should see "icon-profile"
    And I should see "icon-scaled"
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
    And I should see "sm-landscape-scaled"
    And I should see "sm-profile"
    And I should see "sm-profile-scaled"
    And I should see "sm-scaled"
    And I should see "sm-square"
    And I should see "thmb-landscape"
    And I should see "thmb-profile"
    And I should see "thmb-square"

    Then I am on "admin/config/media/image-styles/edit/12-col-banner"
    And I should see "Scale and crop 1170x370"
    Then I am on "admin/config/media/image-styles/edit/12-col-banner-tall"
    And I should see "Scale and crop 1200x500"
    Then I am on "admin/config/media/image-styles/edit/3-col-header"
    And I should see "Scale and crop 270x100"
    Then I am on "admin/config/media/image-styles/edit/4-col-header"
    And I should see "Scale and crop 370x140"
    Then I am on "admin/config/media/image-styles/edit/6-col-banner"
    And I should see "Scale and crop 570x330"
    Then I am on "admin/config/media/image-styles/edit/6-col-banner-short"
    And I should see "Scale and crop 570x270"
    Then I am on "admin/config/media/image-styles/edit/6-col-banner-tall"
    And I should see "Scale and crop 570x320"
    Then I am on "admin/config/media/image-styles/edit/6-col-photo-landscape"
    And I should see "Scale and crop 570x430"
    Then I am on "admin/config/media/image-styles/edit/8-col-banner"
    And I should see "Scale and crop 770x330"
    Then I am on "admin/config/media/image-styles/edit/8-col-banner-short"
    And I should see "Scale and crop 770x270"
    Then I am on "admin/config/media/image-styles/edit/8-col-banner-tall"
    And I should see "Scale and crop 770x440"
    Then I am on "admin/config/media/image-styles/edit/9-col-banner"
    And I should see "Scale and crop 870x330"
    Then I am on "admin/config/media/image-styles/edit/9-col-banner-short"
    And I should see "Scale and crop 870x270"
    Then I am on "admin/config/media/image-styles/edit/banner-850x400"
    And I should see "Scale and crop 850x400"
    Then I am on "admin/config/media/image-styles/edit/full-width-banner"
    And I should see "Scale and crop 1600x600"
    Then I am on "admin/config/media/image-styles/edit/full-width-banner-short"
    And I should see "Scale and crop 3200x1000"
    Then I am on "admin/config/media/image-styles/edit/half-page-profile"
    And I should see "Scale and crop 600x700"
    Then I am on "admin/config/media/image-styles/edit/header_scale_850x400"
    And I should see "Scale 850x400 "
    Then I am on "admin/config/media/image-styles/edit/huge-landscape"
    And I should see "Scale and crop 1500x1200"
    Then I am on "admin/config/media/image-styles/edit/icon-profile"
    And I should see "Scale 50x65 "
    Then I am on "admin/config/media/image-styles/edit/icon-scaled"
    And I should see "Scale width 50 "
    Then I am on "admin/config/media/image-styles/edit/icon-square"
    And I should see "Scale and crop 50x50"
    Then I am on "admin/config/media/image-styles/edit/large-landscape"
    And I should see "Scale and crop 370x275"
    Then I am on "admin/config/media/image-styles/edit/large-landscape-scaled"
    And I should see "Scale width 270 "
    Then I am on "admin/config/media/image-styles/edit/large-profile"
    And I should see "Scale and crop 270x315"
    Then I am on "admin/config/media/image-styles/edit/large-profile-scaled"
    And I should see "Scale height 300 "
    Then I am on "admin/config/media/image-styles/edit/large-scaled"
    And I should see "Scale width 270 "
    Then I am on "admin/config/media/image-styles/edit/large-square"
    And I should see "Scale and crop 270x270"
    Then I am on "admin/config/media/image-styles/edit/med-landscape"
    And I should see "Scale and crop 270x200"
    Then I am on "admin/config/media/image-styles/edit/med-landscape-scaled"
    And I should see "Scale width 270 "
    Then I am on "admin/config/media/image-styles/edit/med-profile"
    And I should see "Scale and crop 170x200"
    Then I am on "admin/config/media/image-styles/edit/med-profile-scaled"
    And I should see "Scale height 270 "
    Then I am on "admin/config/media/image-styles/edit/med-square"
    And I should see "Scale and crop 140x140"
    Then I am on "admin/config/media/image-styles/edit/page-width"
    And I should see "Scale width 1200 "
    Then I am on "admin/config/media/image-styles/edit/sm-landscape"
    And I should see "Scale and crop 170x125"
    Then I am on "admin/config/media/image-styles/edit/sm-landscape-scaled"
    And I should see "Scale width 150 "
    Then I am on "admin/config/media/image-styles/edit/sm-profile"
    And I should see "Scale and crop 100x130"
    Then I am on "admin/config/media/image-styles/edit/sm-profile-scaled"
    And I should see "Scale height 110 "
    Then I am on "admin/config/media/image-styles/edit/sm-scaled"
    And I should see "Scale width 120 "
    Then I am on "admin/config/media/image-styles/edit/sm-square"
    And I should see "Scale and crop 100x100"
    Then I am on "admin/config/media/image-styles/edit/thmb-landscape"
    And I should see "Scale and crop 100x75"
    Then I am on "admin/config/media/image-styles/edit/thmb-profile"
    And I should see "Scale and crop 70x85"
    Then I am on "admin/config/media/image-styles/edit/thmb-square"
    And I should see "Scale and crop 70x70"