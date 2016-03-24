Feature: Stanford Manage Content
  In order to ensure that the Stanford Manage Content displays properly
  As an end user
  I want to verify the display of content.

  @api @safe
  Scenario: Check to see that manage content view is available
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/manage"
    Then I should see the heading "Manage All Content"

  @api @safe
  Scenario: Check to see that manage content context
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/context"
    Then I should see "manage_content_sub_pages"
    And I should see "manage_content_landing_page"

  @api @safe
  Scenario: Check to see that manage content landing pages
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/manage/landing-page"
    Then I should see the heading "Manage Landing Page"

  @api @safe
  Scenario: Check to see that manage content landing pages
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/manage/page"
    Then I should see the heading "Manage Stanford Page"
