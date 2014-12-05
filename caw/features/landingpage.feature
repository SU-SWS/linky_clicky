Feature: Landing Page
  In order to ensure that the CAW website is editable by its site owners
  As an authenticated user
  I want to check that I can edit the site

Scenario: Edit landing page
 Given I am logged in as a user with the "site owner" role 
 And I am on "node/69/edit"
 Then I should see a "#edit-submit" element
 
Scenario: Select layout
 Given I am logged in as a user with the "site owner" role 
 And I am on "node/69/edit"
 Then I should see "#field_s_landing_page_layout"
