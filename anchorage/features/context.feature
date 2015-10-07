Feature: Context
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Context module is working properly

  @api @javascript @deploy
  Scenario: Context
    Given the "context_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "/admin/structure/context/add"
    When I enter "test_foo_context" for "Name"
    And I select "Sitewide context" from "edit-conditions-selector"
    And I check the box "edit-conditions-plugins-sitewide-values-1"
    And I select "Theme HTML" from "edit-reactions-selector"
    And I enter "foo" for "Section class"
    And I press the "Save" button
    Then I should see "test_foo_context has been created"
    When I go to the homepage
    Then I should see a ".foo" element
    When I go to "admin/structure/context/list/test_foo_context/delete"
    And I press the "Delete" button
    Then I should be on "admin/structure/context"
    And I should see "The item has been deleted"
