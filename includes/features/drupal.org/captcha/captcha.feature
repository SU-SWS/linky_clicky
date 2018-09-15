Feature: Verify captcha module functionality
# https://www.drupal.org/project/captcha
  In order to prevent spam bots from posting spam content on a website
  As an anonymous user
  I want to verify functionality of the captcha module

  @safe
  Scenario: Verify captcha module functionality

  @dev @api @destructive
  Scenario: Verify module functionality
    Given I am logged in as a user with the "administrator" role
    Given the "captcha" module is enabled
    And the cache has been cleared
    Given I am on "admin/config/people/captcha"
    When I check the box "Default challenge on non-listed forms."
    And I press "Save"
    Then I should see "The CAPTCHA settings have been saved."
    Given I am logged out
    Given I am an anonymous user
    And I am on "user/register"
    Then I should see "Captcha"

  # Clean up
    Given I am logged in as a user with the "administrator" role
    Given I am on "admin/config/people/captcha"
    When I check the box "Default challenge on non-listed forms."
    And I press "Save"



