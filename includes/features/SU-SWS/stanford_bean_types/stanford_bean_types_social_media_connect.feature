@api
Feature: Stanford social_media_connect bean Type
  In order to ensure that the social_media_connect bean exists
  As an administrator
  I want to check that the Stanford social_media_connect bean types module is working correctly

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Stanford social_media_connect type exists
    And I am on "block/add"
    Then I should see the link "stanford_social_media_connect" in the "Content Body" region

  @safe
  Scenario: Stanford Big Text Block Type Fields Exist
    Given I am on "dmin/structure/block-types/manage/stanford-social-media-connect/fields"
    Then I should see "Label"
    Then I should see "Title"
    Then I should see "field_s_smc_facebook"
    Then I should see "field_s_smc_twitter"
    Then I should see "field_s_smc_googleplus"
    Then I should see "field_s_smc_linkedin"
    Then I should see "field_s_smc_instagram"
    Then I should see "field_s_smc_youtube"
    Then I should see "field_s_smc_vimeo"
    Then I should see "field_s_smc_tumblr"
    Then I should see "field_s_smc_pinterest"
    Then I should see "field_s_smc_flickr"
    Then I should see "view_mode"

  @safe
  Scenario: Stanford Big Text Block Type Display Modes
    Given I am on "admin/structure/block-types/manage/stanford-big-text-block/display"
    Then I should see "Facebook"
    Then I should see "Twitter"
    Then I should see "GooglePlus"
    Then I should see "LinkedIn"
    Then I should see "Instagram"
    Then I should see "YouTube"
    Then I should see "Vimeo"
    Then I should see "Tumblr"
    Then I should see "Pinterest"
    Then I should see "Flickr"

  @dev @destructive
  Scenario: Create stanford social media connect block
    And I am on "block/add/stanford-social-media-connect"
    Then I fill "edit-label" with "Behat Social Block"
    Then I fill "edit-title" with "Behat Social Block"
    Then I fill "field_s_smc_facebook[und][0][url]" with "https://www.facebook.com/"
    Then I fill "field_s_smc_twitter[und][0][url]" with "https://twitter.com/"
    Then I fill "field_s_smc_googleplus[und][0][url]" with "https://plus.google.com"
    Then I fill "field_s_smc_linkedin[und][0][url]" with "http://www.linkedin.com/"
    Then I fill "field_s_smc_instagram[und][0][url]" with "http://www.instagram.com/"
    Then I fill "field_s_smc_youtube[und][0][url]" with "http://www.youtube.com/"
    Then I fill "field_s_smc_vimeo[und][0][url]" with "http://vimeo.com/"
    Then I fill "field_s_smc_tumblr[und][0][url]" with "https://www.tumblr.com/"
    Then I fill "field_s_smc_pinterest[und][0][url]" with "http://pinterest.com/"
    Then I fill "field_s_smc_flickr[und][0][url]" with "http://www.flickr.com/"
    Then I press "Save"
    Then I should see "stanford_social_media_connect Behat Social Block has been created."
    Then I should see "Behat Social Block"
    Then I should see 1 ".field-name-field-s-smc-facebook" element
    Then I should see 1 ".field-name-field-s-smc-twitter" element
    Then I should see 1 ".field-name-field-s-smc-gogoleplus" element
    Then I should see 1 ".field-name-field-s-smc-linkedin" element
    Then I should see 1 ".field-name-field-s-smc-instagram" element
    Then I should see 1 ".field-name-field-s-smc-youtube" element
    Then I should see 1 ".field-name-field-s-smc-vimeo" element
    Then I should see 1 ".field-name-field-s-smc-tumblr" element
    Then I should see 1 ".field-name-field-s-smc-pinterest" element
    Then I should see 1 ".field-name-field-s-smc-flickr" element
    Then I click "Delete Block"
    Then I press "Delete"
    Then I shold see "stanford_social_media_connect Behat Social Block has been deleted."
