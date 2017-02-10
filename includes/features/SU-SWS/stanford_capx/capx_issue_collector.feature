Feature: Stanford CAPx Issue Collector
  In order to ensure that the capx module is installed and functional
  As an administrative user
  I want to ensure that the Stanford CAP Extensible module is working properly

  @api @dev @destructive @mikes
  Scenario: Stanford CAP Extensible
    Given the "stanford_capx" module is enabled
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/config/capx"
