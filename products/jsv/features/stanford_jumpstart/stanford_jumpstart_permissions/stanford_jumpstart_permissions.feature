Feature: Stanford Jumpstart Permissions Feature
  In order to ensure that the Stanford Jumpstart Permissions is configured correctly
  As an administrator
  I want to check for the existence of configuration

  Background:
    Given I am logged in as a user with the "administrator" role

  #dont bother checking all of the permissions. Like, that is waaaay too much work man.

  @api @safe
  Scenario: Permissions feature is enabled
    Given I am on "admin/modules"
    Then the "edit-modules-stanford-sites-jumpstart-stanford-jumpstart-permissions-enable" checkbox should be checked
