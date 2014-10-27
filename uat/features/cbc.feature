Feature: Contextual Block Class
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Contextual Block Class module is working properly

  @api @javascript
  Scenario: Contextual Block Class
    Given the "cbc" module is enabled
    And the "context_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/block/manage/system/powered-by/configure"
    When I click "Contextual Block Class(es)"
    Then I should see "Contextualize the styling of this block by adding CSS classes."
    And I should see "There are no contexts available. Please go create a context before you continue."
    When I click "create a context"
    Then I should be on "admin/structure/context/add"
    When I enter "cbc-test-context" for "Name"
    And I select "Sitewide context" from "edit-conditions-selector"
    And I check the box "edit-conditions-plugins-sitewide-values-1"
    And I select "Theme HTML" from "edit-reactions-selector"
    And I enter "foo" for "Section class"
    And I press the "Save" button
    And I go to "admin/structure/block/manage/system/powered-by/configure"
    And I click "Contextual Block Class(es)"
    And I enter "cbc-test-class" for "cbc-test-context"
    And I select "Footer" from "Stanford Light (default theme)"
    And I press the "Save block" button
    Then I should see "The block configuration has been saved." in the "Console" region
    When I am on the homepage
    Then I should see a ".cbc-test-class" element
    # Irv, cleanup on aisle 9
    When I go to "admin/structure/context/list/cbc-test-context/delete"
    And I press the "Delete" button
    Then I should see "The item has been deleted" in the "Console" region


