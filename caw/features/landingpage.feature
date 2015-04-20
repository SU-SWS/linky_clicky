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
 Then I should see "Content Notes" in the "Content Body" region

@api @javascript
Scenario: Carousel is in correct region
  Given I am logged in as a user with the "administrator" role
  And I am on "node/add/stanford-landing-page"
  And I fill in "Title" with "Behat"
  And I click "Banner Details"
  And I click "Enable Banner"
  And I fill in "Subtitle" with Behat
  Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-program-service-image-und-0"
  Then I press "Upload"
  And I press "Save"
  Then I should see ".view-stanford-landing-page" element in the "main-top" region

@api
Scenario: Carousel is in correct region
  Given I am on "test-landing-page"
  Then I should see ".view-stanford-landing-page" element in the "main-top" region
