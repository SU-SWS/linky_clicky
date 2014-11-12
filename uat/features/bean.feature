Feature: BEAN (Block Entities Aren't Nodes)
  In order to ensure that upgrades do not break existing functionality
  As an end user
  I want to check that the BEAN module is working correctly

  @api @javascript
  Scenario: BEAN
    Given I am logged in as a user with the "administrator" role
    And the "bean" module is enabled
    And the "bean_admin_ui" module is enabled
    When I am on "admin/content/blocks"
    # ya rly
    Then I should see "There are no Block Available"
    When I am on "admin/structure/block-types"
    Then I should see "There are no Block Types Available"
    When I click "Add block type"
    Then I should be on "admin/structure/block-types/add"
    When I enter "Foo" for "Label"
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison" for "Description"
    And I press the "Save Block type" button
    Then I should see "Foo"
    When I go to "admin/people/permissions"
    And I check "edit-13-create-any-foo-bean"
    And I check "edit-13-edit-any-foo-bean"
    And I check "edit-13-view-any-foo-bean"
    And I check "edit-13-delete-any-foo-bean"
    And I press the "Save permissions" button
    Then I should see "The changes have been saved." in the "Console" region
    When I go to "block/add/foo"
    And I enter "Bar" for "Label"
    And I enter "Baz" for "Title"
    And I press the "Save" button
    Then I should see "Foo Baz has been created." in the "Console" region
    When I go to "admin/structure/block-types"
    And I click "Delete" in the "Foo" row
    Then I should be on "admin/structure/block-types/manage/foo/delete"
    And I should see "Foo is used by 1 block on your site that is going to be removed along with Foo."
    And I should see "This action cannot be undone."
    When I press the "Delete" button
    Then I should be on "admin/structure/block-types"
    And I should see "There are no Block Types Available"
