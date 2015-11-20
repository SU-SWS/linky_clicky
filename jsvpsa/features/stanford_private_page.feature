Feature: Stanford Private Page
  In order to ensure that the Stanford Private Page.
  As all types of users
  I want to check for CRUD permissions.

  @dev @stanford @content
  Scenario: Create Private Page
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Add Private Page" in the "Admin Shortcuts" region
    Then I should see "Create Private Page" in the "Branding" region
    Then I fill in "edit-title" with "Private Page Test"
    And I press the "Save" button
    Then I should see "Private Page Private Page Test has been created" in the "Console" region
    
  @live @stanford
  Scenario: Site owner can see private pages
    Given I am logged in as a user with the "site owner" role
    And I am on "private"
    Then I should see 1 ".node-type-stanford-private-page" element
    
  @live @stanford
  Scenario: Anonymous users can not see private pages
    Given I am on "private"
    Then I should see 1 ".node-type-stanford-private-page" element
    
   @live @contrib
  Scenario: Test that the Always Visble module is enabled
    Given I am logged in as a user with the "administrator" role
    And am on "admin/modules"
    Then I should see 1 "#edit-modules-other-always-visible-enable" element
    And the checkbox is checked
