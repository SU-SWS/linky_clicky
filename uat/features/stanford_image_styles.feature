Feature: Stanford Image Styles
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford Image Styles module is working properly

Background:
  Given the "stanford_image_styles" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role


@api
Scenario Outline: Stanford Image Styles
  Given I am on "admin/config/media/image-styles"
  Then I should see "<Image Style>"

  Examples:
 | Image Style |
 | 12-col-banner          |
 | 3-col-header           |
 | 4-col-header           |
 | 6-col-banner           |
 | 6-col-banner-short     |
 | 6-col-banner-tall      |
 | 8-col-banner           |
 | 8-col-banner-short     |
 | 8-col-banner-tall      |
 | 9-col-banner           |
 | 9-col-banner-short     |
 | icon-square            |
 | large-landscape        |
 | large-landscape-scaled |
 | large-profile          |
 | large-profile-scaled   |
 | large-scaled           |
 | large-square           |
 | med-landscape          |
 | med-landscape-scaled   |
 | med-profile            |
 | med-profile-scaled     |
 | med-square             |
 | page-width             |
 | sm-landscape           |
 | sm-profile             |
 | sm-square              |
 | thmb-landscape         |
 | thmb-profile           |
 | thmb-square            |