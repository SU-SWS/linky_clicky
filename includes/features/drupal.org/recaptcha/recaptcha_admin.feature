Feature: recaptcha administration module
# https://www.drupal.org/project/recaptcha
  In order to ensure the site is functioning as expected
  As administrator
  I want to verify functionality of the recaptcha module administration

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe @api
  Scenario: Verify recaptcha module is enabled
    # Given the "recaptcha" module is enabled <- this will make the test destructive
    # And the cache has been cleared
    And I am on "admin/modules"
    Then I should see 1 "#edit-modules-spam-control-recaptcha-enable" element
    And the "modules[Spam control][recaptcha][enable]" checkbox should be checked

    # Verify the configuration page exists
    And I click on the element with css selector "#edit-modules-spam-control-recaptcha-links-configure"
    And I should be on "admin/config/people/captcha/recaptcha"
    Then I should see "CAPTCHA"
    Then I should see "RECAPTCHA"

    # Verify it's on the permissions page
    Given I am on "admin/people/permissions#module-recaptcha"
    Then I should see "Administer recaptcha"

