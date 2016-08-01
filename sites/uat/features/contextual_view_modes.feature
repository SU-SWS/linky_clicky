@contrib
Feature: Contextual View Modes
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Contextual View Modes module is working properly

  @api @javascript @dev @destructive
  Scenario: Contextual View Modes Users
    Given the "contextual_view_modes_users" module is enabled
    And the "context_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/people/accounts/display"
    And I click "Custom display settings"
    And I check the box "Tokens"
    And I press the "Save" button
    Then I should be on "admin/config/people/accounts/display"
    And I should see "The Tokens mode now uses custom display settings. You might want to configure them."
    And I should see "Your settings have been saved."
    When I click "configure them"
    Then I should be on "admin/config/people/accounts/display/token"
    When I select "Hidden" from "edit-fields-summary-type"
    And I press the "Save" button
    Then I should be on "admin/config/people/accounts/display/token"
    And I should see "Your settings have been saved."
    When I go to "user"
    Then I should see the heading "History"
    And I should see "Member for"
    When I go to "admin/structure/context/add"
    And I enter "cvm_users_test" for "Name"
    And I select "User page" from "edit-conditions-selector"
    And I wait for AJAX to finish
    And I check the box "User account form"
    And I select "View Mode" from "edit-reactions-selector"
    And I wait for AJAX to finish
    And I click "User"
    And I wait for AJAX to finish
    And I select "Tokens" from "edit-reactions-plugins-context-reaction-view-mode-entity-types-user-user"
    And I press the "Save" button
    Then I should be on "admin/structure/context"
    And I should see "cvm_users_test has been created"
    When I go to "user"
    Then I should not see the heading "History"
    And I should not see "Member for"
    When I go to "admin/structure/context/list/cvm_users_test/delete"
    And I press the "Delete" button
    Then I should see "The item has been deleted"

  @api @javascript @dev @destructive
  Scenario: Contextual View Modes Nodes
    Given the "contextual_view_modes_nodes" module is enabled
    And the "context_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/types/manage/article/display/teaser"
    And I select "Hidden" from "edit-fields-field-tags-type"
    And I press the "Save" button
    Then I should be on "admin/structure/types/manage/article/display/teaser"
    And I should see "Your settings have been saved."
    When I go to "node/add/article"
    And I enter "CVM Nodes Test" for "Title"
    And I enter "foo,bar,baz" for "Tags"
    And I wait for AJAX to finish
    And I press the "Save" button
    Then I should see "Article CVM Nodes Test has been created."
    And I should see "Tags:"
    And I should see the link "foo"
    And I should see the link "bar"
    And I should see the link "baz"
    When I go to "admin/structure/context/add"
    And I enter "cvm_nodes_test" for "Name"
    And I select "Node type" from "edit-conditions-selector"
    And I wait for AJAX to finish
    And I check the box "Article"
    And I select "View Mode" from "edit-reactions-selector"
    And I wait for AJAX to finish
    And I select "Teaser" from "edit-reactions-plugins-context-reaction-view-mode-entity-types-node-article"
    And I wait for AJAX to finish
    And I press the "Save" button
    Then I should be on "admin/structure/context"
    And I should see "cvm_nodes_test has been created"
    When I go to "admin/content"
    And I click "CVM Nodes Test"
    Then I should not see "Tags:"
    And I should not see the link "foo"
    And I should not see the link "bar"
    And I should not see the link "baz"


