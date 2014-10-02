Feature: Site Owner
In order to ensure that the Site Owner can create and edit
As a Site Owner
I want to check that I can access, edit, and create site content

@api @javascript
Scenario: Clicking on Manage Content
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
    And I click "Manage Content" in the "Admin Shortcuts" region
  Then I should see 11 or more "tr" elements

@api @javascript
Scenario: Add Stanford Page
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
    And I click "Add Page" in the "Admin Shortcuts" region
  Then I should see "Create Stanford Page" in the "Branding" region
  When I enter "Foo" for "Title"
    And I press the "Save" button
  Then I should see "Stanford Page Foo has been created" in the "Console" region
    And I should be on "foo"

@api @javascript
Scenario: Add Landing Page
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
    And I click "Add Landing Page" in the "Admin Shortcuts" region
  Then I should see "Create Landing Page" in the "Branding" region
  When I enter "Foo" for "Title"
    And I select "Blocks" from "Layout"
  And I press the "Save" button
  Then I should see "Landing Page Foo has been created" in the "Console" region
  And I should be on "foo"

@api @javascript
Scenario: Edit Contact Information
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
    And I click "Edit Contact Information" in the "Admin Shortcuts" region
  Then I should see "Edit stanford_contact: Jumpstart Footer Contact Block" in the "Branding" region
  When I press the "Save" button
    Then I should see "stanford_contact Contact Us has been updated" in the "Console" region

@api @javascript
Scenario: Edit Site Name
  Given I am logged in as a user with the "site owner" role
  When I wait for the Site Actions drop down to appear
    And I click "Edit Site Name" in the "Admin Shortcuts" region
  Then I should see "Site information" in the "Branding" region
    And I should not see "Slogan"
    And I should not see "Front page"
    And I should not see "Error pages"
  When I enter "Millenium Falcon" for "Site name"
    And I press the "Save" button
    And I go to the homepage
  Then I should see "Millenium Falcon" in the "Site Name" region
