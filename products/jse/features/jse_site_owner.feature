Feature: Site Owner
  In order to ensure that the Jumpstart Engineering administration functions are working properly
  As a Site Owner
  I want to check for my ability to complete my tasks

  @api @safe
  Scenario: Can see Manage Content page
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/manage"
    Then I should see 1 or more "tr" elements

  @api @javascript @safe
  Scenario: Clicking on Manage Content
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Manage Content" in the "Admin Shortcuts" region
    Then I should see 1 or more "tr" elements

  @api @javascript @dev @destructive
  Scenario: Add Stanford Page
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Add Page" in the "Admin Shortcuts" region
    Then I should see "Create Stanford Page" in the "Branding" region
    And the "Text format" field should contain "content_editor_text_format"
    When I click "Show Add/Edit Image"
    Then I should see "Source Info" in the "Content Body" region
    Then I fill in "edit-title" with "Foo"
    And I press the "Save" button
    Then I should see "Stanford Page Foo has been created" in the "Console" region
    And I should be on "foo"

  @api @javascript @dev @destructive
  Scenario: Add Landing Page
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Add Landing Page" in the "Admin Shortcuts" region
    Then I should see "Create Landing Page" in the "Branding" region
    Then I fill in "edit-title" with "Foo"
    And I select "Blocks" from "Layout"
    And I press the "Save" button
    Then I should see "Landing Page Foo has been created" in the "Console" region
    And I should be on "foo"

  @api @javascript @dev @destructive
  Scenario: Edit Contact Information
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Edit Contact Information" in the "Admin Shortcuts" region
    Then I should see "Edit stanford_contact: Jumpstart Footer Contact Block" in the "Branding" region
    When I press the "Save" button
    Then I should see "stanford_contact Contact Us has been updated" in the "Console" region

  @api @javascript @dev @destructive
  Scenario: Edit Social Media Links
    Given I am logged in as a user with the "site owner" role
    And I wait for the Site Actions drop down to appear
    And I click "Edit Social Media Links" in the "Admin Shortcuts" region
    Then I should see "Edit stanford_social_media_connect: Jumpstart Footer Social Media Connect Block" in the "Branding" region
    When I press the "Save" button
    Then I should see "stanford_social_media_connect Connect has been updated." in the "Console" region

  @api @javascript @dev @destructive
  Scenario: Edit Site Name
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Edit Site Name" in the "Admin Shortcuts" region
    Then I should see "Site information" in the "Branding" region
    And I should not see "Slogan"
    And I should not see "Front page"
    And I should not see "Error pages"
    When I enter "Millennium Falcon" for "Site name"
    And I press the "Save" button
    And I go to the homepage
    Then I should see "Millennium Falcon" in the "Header" region

  @api @javascript @safe
  Scenario: View the Get Help Page
    Given the cache has been cleared
    Then I am logged in as a user with the "site owner" role
    Then I am on "admin/stanford-jumpstart"
    Then I should see the heading "Jumpstart User Guide"
    And I should see the heading "Drupal resources at Stanford"
    And I should see the heading "Connect with the Drupal Community"
    And I should see the heading "Need assistance with your site?"
    And I should see the link "Request Assistance" in the "Content Body" region

  @api @javascript @safe
  Scenario: View the Ready to Launch page
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/stanford-jumpstart/launch-checklist"
    Then I should see the heading "Content Cleanup"
    And I should see the heading "Blocks"
    And I should see the heading "Images"
    And I should see the heading "Links"
    And I should see the heading "URL Redirects"
    And I should see the heading "Vanity URL"
    And I should see the heading "Approval"
    And I should see the heading "Are you ready to launch your site?"
    And I should see the link "Request Site Launch" in the "Content Body" region

  @api @javascript @safe
  Scenario: Clear caches
    Given I am logged in as a user with the "site owner" role
    And I wait for the Site Actions drop down to appear
    And I click "Clear Site Cache" in the "Admin Shortcuts" region
    Then I should see "Site Cache Cleared" in the "Console" region

  @api @safe
  Scenario: As a site owner I can see Create Private Page
    Given I am logged in as a user with the "site owner" role
    When I go to "node/add/stanford-private-page"
    Then I should see "Create Private Page" in the "Branding" region

  @api @safe
  Scenario Outline: Verify site owner can see items on the Customized Design Page
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see "<Text>" in the "<Region>" region

    Examples:
      | Text          | Region       |
      | Hoover        | Content Body |
      | Morris        | Content Body |
      | Terman        | Content Body |
      | Pettit        | Content Body |
      | Light         | Content Body |
      | Plain         | Content Body |
      | Rich          | Content Body |
      | High Contrast | Content Body |
      | Cardinal      | Content Body |
      | Sans Serif    | Content Body |
      | Serif         | Content Body |
      | Slab Serif    | Content Body |


  @api
  Scenario: Site Owner denied access to Jumpstart help
    Given I am logged in as a user with the "site owner" role
    When I go to "admin/stanford-jumpstart/settings"
    Then I should see "Access denied"