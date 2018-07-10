@api
Feature: Site Owner
  In order to ensure that the Jumpstart Engineering administration functions are working properly
  As a Site Owner
  I want to check for my ability to complete my tasks


  Background:
      Given I am logged in as a user with the "site owner" role

  @safe
  Scenario: Can see Manage Content page
    And I am on "admin/manage"
    Then I should see 1 or more "tr" elements

  @javascript @safe
  Scenario: Clicking on Manage Content
    When I wait for the Site Actions drop down to appear
    And I click "Manage Content" in the "Admin Shortcuts" region
    Then I should see 1 or more "tr" elements

  @javascript @dev @destructive
  Scenario: Edit Contact Information
    When I wait for the Site Actions drop down to appear
    And I click "Edit Contact Information" in the "Admin Shortcuts" region
    Then I should see "Edit stanford_contact: Jumpstart Footer Contact Block" in the "Branding" region
    When I press the "Save" button
    Then I should see "stanford_contact Contact Us has been updated" in the "Console" region

  @javascript @dev @destructive
  Scenario: Edit Social Media Links
    And I wait for the Site Actions drop down to appear
    And I click "Edit Social Media Links" in the "Admin Shortcuts" region
    Then I should see "Edit stanford_social_media_connect: Jumpstart Footer Social Media Connect Block" in the "Branding" region
    When I press the "Save" button
    Then I should see "stanford_social_media_connect Connect has been updated." in the "Console" region

  @javascript @dev @destructive
  Scenario: Edit Site Name
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

  @javascript @safe
  Scenario: View the Ready to Launch page
    And I am on "admin/stanford-jumpstart/launch-checklist"
    Then I should see the heading "Content Cleanup"
    And I should see the heading "Blocks"
    And I should see the heading "Images"
    And I should see the heading "Links"
    And I should see the heading "URL Redirects"
    And I should see the heading "Vanity URL"
    And I should see the heading "Approval"
    And I should see the heading "Are you ready to launch your site?"
    And I should see the link "Schedule Site Launch" in the "Content Body" region

  @safe
  Scenario: Verify site owner can see items on the Customized Design Page
    And I am on "admin/stanford-jumpstart/customize-design"
    Then I should see "Hoover" in the "Content Body" region
    And I should see "Morris" in the "Content Body" region
    And I should see "Terman" in the "Content Body" region
    And I should see "Pettit" in the "Content Body" region
    And I should see "Light" in the "Content Body" region
    And I should see "Plain" in the "Content Body" region
    And I should see "Rich" in the "Content Body" region
    And I should see "High Contrast" in the "Content Body" region
    And I should see "Cardinal" in the "Content Body" region
    And I should see "Sans Serif" in the "Content Body" region
    And I should see "Serif" in the "Content Body" region
    And I should see "Slab Serif" in the "Content Body" region
    And I should see "Kays" in the "Content Body" region
