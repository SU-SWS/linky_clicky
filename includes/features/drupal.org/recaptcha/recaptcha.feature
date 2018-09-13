Feature: recaptcha  module
# https://www.drupal.org/project/recaptcha
  In order to prevent spam bots from posting spam content on a website and to
  assist in the book digitization project and Google Street View improvements
  As an anonymous user
  I want to verify functionality of the recaptcha module

  @dev @api @javascript @destructive
  Scenario: Verify module functionality
    Given the "recaptcha" module is enabled
    And the cache has been cleared

    #todo configure and test remaining steps
