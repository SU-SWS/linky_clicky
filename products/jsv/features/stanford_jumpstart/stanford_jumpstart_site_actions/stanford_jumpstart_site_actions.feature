Feature: Stanford Jumpstart Site Actions Feature
  In order to ensure that the Stanford Jumpstart Site Actions is configured correctly
  As an administrator
  I want to check for the existence of configuration

  Background:
    Given I am logged in as a user with the "administrator" role

  @api @deploy @safe
  Scenario: Urls redirect appropriately
    Given I am on "admin/stanford/jumpstart/shortcuts/site-actions/contact-block"
    Then I should be on "block/jumpstart-footer-contact-block/edit"
    Given I am on "admin/stanford/jumpstart/shortcuts/site-actions/social-block"
    Then I should be on "block/jumpstart-footer-social-media--0/edit"


