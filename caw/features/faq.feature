Feature: FAQ
  In order to ensure that the CAW website is editable by its site owners
  As an authenticated user
  I want to check that I can create and edit an faq

  @api
  Scenario: FAQ view is enabled
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views"
    Then I should see "Stanford show/hide FAQ hierarchy" in the "Content Body" region
    And I should see "Journal Article" in the "Content Body" region
