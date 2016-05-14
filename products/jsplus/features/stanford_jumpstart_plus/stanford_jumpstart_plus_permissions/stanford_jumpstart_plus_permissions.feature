@api
Feature: Stanford Jumpstart Plus Permissions Feature
  In order to ensure that the Stanford Jumpstart Plus Permissions is configured correctly
  As an administrator
  I want to check for the existence of configuration

  Background:
    Given I am logged in as a user with the "administrator" role

  #dont bother checking all of the permissions. Like, that is waaaay too much work man.

  @deploy @safe
  Scenario: Permissions feature is enabled
    Given I am on "admin/modules"
    Then the "modules[Stanford Sites Jumpstart][stanford_jsplus_permissions][enable]" checkbox should be checked
