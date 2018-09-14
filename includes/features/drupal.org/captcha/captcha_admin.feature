Feature: Captcha administration module
# https://www.drupal.org/project/captcha
  In order to prevent spam bots from posting spam content on a website
  As administrator
  I want to verify functionality of the Captcha module administration

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe @api
  Scenario: Verify captcha module administration
    # Given the "captcha" module is enabled <- this will make the test destructive
    # And the cache has been cleared
    And I am on "admin/modules"
    Then I should see 1 "#edit-modules-spam-control-captcha-enable" element
    And the "modules[Spam control][captcha][enable]" checkbox should be checked

    # Verify the configuration page exists
    And I click on the element with css selector "#edit-modules-spam-control-captcha-links-configure"
    And I should be on "admin/config/people/captcha"
    Then I should see "General settings"
    Then I should see "Examples"
    Given I am on "admin/config/development/performance"
    Then I should see "CAPTCHA"

    # Verify it's on the permissions page
    Given I am on "admin/people/permissions#module-captcha"
    Then I should see "Administer CAPTCHA settings"

