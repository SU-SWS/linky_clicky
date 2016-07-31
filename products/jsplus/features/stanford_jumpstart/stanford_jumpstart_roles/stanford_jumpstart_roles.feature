Feature: Stanford Jumpstart Roles Feature
  In order to ensure that the Stanford Jumpstart Roles is configured correctly
  As an administrator
  I want to check for the existence of configuration

  Background:
    Given I am logged in as a user with the "administrator" role

  @api @safe
  Scenario: Roles feature is enabled
    Given I am on "admin/modules"
    Then the "edit-modules-stanford-sites-jumpstart-stanford-jumpstart-roles-enable" checkbox should be checked

  @api @deploy
  Scenario: Roles are available to Drupal
    Given I am on "admin/people/permissions/roles"
    Then I should see "editor"
    Then I should see "site owner"
    Then I should see "site member"
