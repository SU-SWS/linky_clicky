Feature: About
 In order to ensure that the Jumpstart Academic website About content is visible
 As an end user
 I want to check for the existence of page and block content
View about institute page
 Given I am on "about/about-institute"
 Then I should see "About the Institute" in the "Content Body" region

@javascript
Scenario: Viewing a postcard block with Google Maps embed on the Location page
 Given I am on "about/location"
 Then I should see "View Larger Map" in the "Content Body" region

Scenario: Clicking the sidebar menu
 Given I am on "about/contact"
 And I click "About the Institute" in the "First sidebar" region
 Then I should see "Martin Luther King" in the "Content Body" region
