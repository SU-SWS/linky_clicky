Feature: Stanford Jumpstart Engineering Site Specific Help
  In order to ensure that the Site Specific Help is configured correctly
  As a site owner

  @api @safe
  Scenario: For site owner verify that we have the correct block on the Jumpstart Help page
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/stanford-jumpstart"
    Then I should see "Jumpstart User Guide" in the "Content Body" region


  @api @safe
  Scenario: For editor verify that we have the correct block on the Jumpstart Help page
    Given I am logged in as a user with the "editor" role
    And I am on "admin/stanford-jumpstart"
    Then I should see "Jumpstart User Guide" in the "Content Body" region

  @safe
  Scenario: Anonymous user cannot access help
    Given I am on "site-help"
    Then I should see "Access denied"
