Feature: Gallery Tabs
  In order to ensure that the CAW website's customizations to the homepage are correct
  As an authenticated user
  I want to check the customizations are present

@api
Scenario: See gallery tabs on homepage
  Given I am on "caw"
  Then I should see a ".view-gallery-tabs" element
