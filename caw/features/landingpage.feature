Feature: Landing Page
  In order to ensure that the CAW website is editable by its site owners
  As an authenticated user
  I want to check that I can edit the site
  
@api
Scenario: Edit landing page
 Given I am logged in as a user with the "site owner" role 
 And I am on "node/255/edit"
 Then I should see a "#edit-submit" element

@api
Scenario: Select layout
 Given I am logged in as a user with the "site owner" role 
 And I am on "node/255/edit"
 Then I should see a "#edit-field-s-landing-page-layout" element

@api
Scenario: Content Notes field is available
 Given I am logged in as a user with the "site owner" role 
 And I am on "node/255/edit"
 Then I should see a "Content Notes" field label
