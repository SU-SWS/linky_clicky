Feature: SMTP
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the SMTP Authentication Support module is working properly

  @api @anchorage @deploy @dev
  Scenario: SMTP
    Given the "smtp" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/system/smtp"
    And I enter "jbickar@stanford.edu" for "E-mail address to send a test e-mail to"
    And I press the "Save configuration" button
    Then I should see "A test e-mail has been sent to jbickar@stanford.edu. You may want to check the logs for any error messages."