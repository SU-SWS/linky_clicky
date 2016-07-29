Feature: Stanford Jumpstart Shortcuts Feature
  In order to ensure that the Stanford Jumpstart Shortcuts is configured correctly
  As an administrator
  I want to check for the existence of configuration

  Background:
    Given I am logged in as a user with the "administrator" role

  @api @safe
  Scenario: Contexts are available
    Given I am on "admin/structure/context"
    Then I should see "stanford_jumpstart_admin_shortcuts"

  @api @safe
  Scenario: Shortcuts menu is available
    Given I am on "admin/structure/menu/manage/menu-admin-shortcuts"
    Then I should see "Home" in the "Content" region
    Then I should see "Site Actions" in the "Content" region
    Then I should see "Get Help" in the "Content" region
    Then I should see "Clear Site Cache" in the "Content" region

  @api @safe
  Scenario: Hello User Block
    Given I am on the homepage
    Then I should see 1 "#block-stanford-jumpstart-shortcuts-hello" element
    Then I should see "Hello, "

  @api @safe
  Scenario: Permissions are available
    Given I am on "admin/people/permissions"
    Then I should see "Clear Site Caches"
    Then I should see "See admin shortcuts menu"

  @api @safe @javascript
  Scenario: Site action menu exists and can drop down
    Given I am on the homepage
    Then I should see 1 "#block-menu-menu-admin-shortcuts" element
    Then I should see "Site Actions"
    Then I wait for the Site Actions drop down to appear
