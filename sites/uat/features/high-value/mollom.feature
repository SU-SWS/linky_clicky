@contrib
Feature: Mollom
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Mollom module is working properly

  @api @dev @destructive
  Scenario: Mollom protect user password form
    Given the "mollom" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I go to "admin/config/content/mollom/settings"
    # This file is encrypted with git-crypt, so credentials are OK here.
    And I enter "0a804e2aff1665b21a41573e064622a0" for "Public key"
    And I enter "f28ec666ab762c847972047736e547f4" for "Private key"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved"
    And I should not see " The Mollom API keys are not configured yet"
    When I go to "admin/config/content/mollom/add"
    And I select "User: User password request form" from "Form"
    And I press the "Next" button
    And I press the "Save" button
    Then I should see "The form protection has been added"

# This will fail until we figure out a way to pass private key
  @api @dev @destructive @javascript
  Scenario: Mollom check user password form CAPTCHA
    Given I am an anonymous user
    When I am on "user/password"
    Then I should see "Type the characters you see in the picture; if you can't read them, submit the form and a new image will be generated"
