Feature: captcha  module
# https://www.drupal.org/project/captcha
  In order to prevent spam bots from posting spam content on a website
  As an anonymous user
  I want to verify functionality of the captcha module

  @safe
  Scenario: Verify captcha module functionality

  @dev @api @javascript @destructive
  Scenario: Verify module functionality
    Given the "captcha" module is enabled
    And the cache has been cleared
    And I am on "admin/config/people/captcha"


#todo configure and the rest of the steps!