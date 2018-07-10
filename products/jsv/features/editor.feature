Feature: Editor
  In order to ensure that the Jumpstart administration functions are working properly
  As an Editor
  I want to check for my ability to complete my tasks

  @api @javascript @safe
  Scenario: View the Get Help Page
    Given I am logged in as a user with the "editor" role
    And I am on "admin/stanford-jumpstart"
    Then I should see the heading "Jumpstart User Guide"
    And I should see the heading "Drupal resources at Stanford"
    And I should see the heading "Connect with the Drupal Community"
    And I should see the heading "Need assistance with your site?"
    And I should see the link "Request Assistance" in the "Content Body" region

  @api @javascript  @safe
  Scenario: View the Ready to Launch page
    Given I am logged in as a user with the "editor" role
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

  @api @javascript @safe
  Scenario: Clear caches
    Given I am logged in as a user with the "editor" role
    And I wait for the Site Actions drop down to appear
    And I click "Clear Site Cache" in the "Admin Shortcuts" region
    Then I should see "Site Cache Cleared" in the "Console" region

  @api @javascript @dev @destructive
  Scenario: Edit Contact Information
    Given I am logged in as a user with the "editor" role
    And I wait for the Site Actions drop down to appear
    And I click "Edit Contact Information" in the "Admin Shortcuts" region
    Then I should see "Edit stanford_contact: Jumpstart Footer Contact Block" in the "Branding" region
    When I press the "Save" button
    Then I should see "stanford_contact Contact Us has been updated." in the "Console" region

  @api @javascript @dev @destructive
  Scenario: Edit Social Media Links
    Given I am logged in as a user with the "editor" role
    And I wait for the Site Actions drop down to appear
    And I click "Edit Social Media Links" in the "Admin Shortcuts" region
    Then I should see "Edit stanford_social_media_connect: Jumpstart Footer Social Media Connect Block" in the "Branding" region
    When I press the "Save" button
    Then I should see "stanford_social_media_connect Connect has been updated." in the "Console" region
