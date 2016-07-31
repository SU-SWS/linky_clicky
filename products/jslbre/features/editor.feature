Feature: Editor
  In order to ensure that the Jumpstart Plus administration functions are working properly
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
# @todo follow links that open in new windows
#  When I click "Request Assistance"
#    Then I should be on "https://jfe.qualtrics.com/form/SV_1EK9guIGepRtvwh?Name=Lindsey&Email=sws-developers+lindsey%40lists.stanford.edu&URL=https%3A%2F%2Fsites.stanford.edu%2Fsws-build-jsv"

  @api @javascript @safe
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
    And I should see the link "Request Site Launch" in the "Content Body" region
# @todo follow links that open in new windows
#  When I click "Request Site Launch"
#    Then I should be on "https://stanforduniversity.qualtrics.com/SE/?SID=SV_01I4MJkFACIhhIN"

  @api @javascript @safe
  Scenario: Create Stanford event
    Given I am logged in as a user with the "editor" role
    And I wait for the Site Actions drop down to appear
    And I click "Add Event" in the "Admin Shortcuts" region
    Then I should see "Create Stanford Event" in the "Branding" region

  @api @javascript @safe
  Scenario: Create announcement/news item
    Given I am logged in as a user with the "editor" role
    And I wait for the Site Actions drop down to appear
    And I click "Add Announcement/News" in the "Admin Shortcuts" region
    Then I should see "Create Announcement/News" in the "Branding" region
    And the "Text format" field should contain "content_editor_text_format"

  @api @javascript @safe
  Scenario: Create Stanford Slide
    Given I am logged in as a user with the "editor" role
    And I wait for the Site Actions drop down to appear
    And I click "Add Slide" in the "Admin Shortcuts" region
    Then I should see "Create Stanford Slide" in the "Branding" region

  @api @javascript @safe
  Scenario: Create Stanford Web Video
    Given I am logged in as a user with the "editor" role
    And I wait for the Site Actions drop down to appear
    And I click "Add Web Video" in the "Admin Shortcuts" region
    Then I should see "Create Stanford Web Video" in the "Branding" region
