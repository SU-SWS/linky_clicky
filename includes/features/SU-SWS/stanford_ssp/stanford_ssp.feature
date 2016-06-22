Feature: Stanford SimpleSAML PHP
  In order to ensure that the Stanford SimpleSAML PHP functionality is working properly
  As an administrator
  I ensure that the various options work

  @api @dev @destructive
  Scenario: Disable Single Sign On
    Given the "stanford_ssp" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/stanford/stanford_ssp"
    And I uncheck the box "edit-simplesamlphp-auth-activate"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved."
    When I am an anonymous user
    And I am on "user"
    Then I should not see "SUNet Login"

  @api @dev @destructive
  Scenario: Enable Single Sign On
    Given the "stanford_ssp" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/stanford/stanford_ssp"
    And I check the box "edit-simplesamlphp-auth-activate"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved."
    When I am an anonymous user
    And I am on "user"
    Then I should see "SUNet Login"
