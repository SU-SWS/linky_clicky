Feature: Stanford Affiliate Organization
  In order to ensure that the Stanford Affiliate Organization content type and supporting functionality works.
  As an end user and administrator
  I want to check for both the creation and display of the affiliate content.

  @api @safe @deploy @live
  Scenario: Affiliate content type
    Given I am logged in as a user with the "administrator" role
    Given I am on "node/add"
    Then I should see "Affiliate Organization" in the "Content" region

  @api @safe @deploy @live
  Scenario: Check for fields
    Given I am logged in as a user with the "administrator" role
    Given I am on "node/add/stanford-affiliate-organization"
    Then I should see "Name" in the "Content" region
    Then I should see "Image" in the "Content" region
    Then I should see "Link" in the "Content" region
    Then I should see "About" in the "Content" region

  @api @safe @deploy @live
  Scenario: Check for affiliates view
    Given I am logged in as a user with the "administrator" role
    Given I am on "admin/structure/views"
    Then I should see "Affiliates" in the "Content" region

  @api @safe @deploy @live
  Scenario: Check for manage affiliates view
    Given I am logged in as a user with the "administrator" role
    Given I am on "admin/manage/stanford_affiliate_organizations"
    Then I should see "Manage Stanford Affiliate Organizations" in the "Branding" region

  @api @safe @deploy @live
  Scenario: Check for manage affiliates view manage link
    Given I am logged in as a user with the "administrator" role
    Given I am on "admin/manage"
    Then I should see "Manage Affiliate Organizations" in the "Second sidebar" region

