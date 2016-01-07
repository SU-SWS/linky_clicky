Feature: Stanford Affiliate Organization
  In order to ensure that the Affiliates pages are viewable
  As a visitor to the site I want to be able to view pages.
  As an administrator, site owner, or editor
  I want to be able to create, edit, delete, view, and manage affiliate organization nodes.

@deploy @safe @stanford
Scenario: Affiliate Organizations page is visible and link in the main menu
  When I go to "about/affiliate-organizations"
  Then I should see "Affiliate Organizations" in the "First sidebar" region
  Then I should see "Affiliates" in the "Content Head" region
  Then I should see 5 or more ".views-field-field-s-affiliate-image" elements

@api @content @destructive @stanford
Scenario: Site owner can create and manage affiliate organizations
  Given I am logged in as a user with the "site owner" role
  When I go to "node/add/stanford-affiliate-organization"
  Then I should see "Create Affiliate Organization" in the "Branding" region
  Then I fill in "edit-title" with "Foo"
  Then I attach the file "img/ooooaaaahhh.jpg" to "edit-field-s-affiliate-image-und-0-upload"
  Then I press "Upload"
  Then I press "Save"
  Then I should see 1 or more ".field-name-field-s-affiliate-image" elements
  Then I go to "admin/manage/stanford_affiliate_organizations"
  Then I should see 1 or more ".views-field-field-s-affiliate-image" elements

@deploy @safe @stanford
Scenario: Affiliate Organizations page is visible and link in the main menu
  Given I am on the homepage
  Then I should see "Affiliates" in the "Main Bottom" region
  Then I should see 5 or more ".views-field-field-s-affiliate-image" elements
