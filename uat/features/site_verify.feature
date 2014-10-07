Feature: Site Verification
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Site Verification module is working properly

  @api
  Scenario: Site Verification
    Given the "site_verify" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    When I am on "admin/config/search/verifications/add"
    And I select "Google" from "Search engine"
    And I press the "Next" button
    And I enter "<meta name='google-site-verification' content='[random]' />" for "Verification META tag"
    And I press the "Save" button
    Then I should see "Verification saved"