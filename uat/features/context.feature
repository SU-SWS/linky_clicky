Feature: Context
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Context module is working properly

  @api @javascript
  Scenario: Context
    Given the "context_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "/admin/structure/context"
    And I click "Add"
    When I enter "[random]" for "Name"
    And I select "Sitewide context" from "edit-conditions-selector"
    And I check the box "edit-conditions-plugins-sitewide-values-1"
    And I select "Theme HTML" from "edit-reactions-selector"
    And I enter "foo" for "Section class"
    And I press the "Save" button
    Then I should see "[random:1] has been created"
    When I go to the homepage
    Then I should see a ".foo" element