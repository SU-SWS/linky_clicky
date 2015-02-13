Feature: Stanford CAP Extensible
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Stanford CAP Extensible module is working properly

  @api @javascript
  Scenario: Stanford CAP Extensible
    Given the "stanford_capx" module is enabled
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/config/capx"
    Then I should see "Not Connected"
    When I click "CAPx connection"
    Then I should be on "admin/config/capx/connect"
    And I should see "Please enter your authentication information for the CAP API."
    When I click "Show Advanced"
    Then I should see "Advanced setting for CAP API and authentication URIs"
    When I click "Settings"
    Then I should be on "admin/config/capx/settings"
    And I should see "Organizations & schema"
    # Fix when typo is fixed
    And I should see "Syncronization settings"
    When I click "Map"
    Then I should be on "admin/config/capx/mapper"
    And I should see "After you have connected to CAP, create a Mapping to link CAP’s fields with your fields."
    When I click "Create new mapping"
    Then I should be on "admin/config/capx/mapper/new"
    And I should see "Mapping title"
    And I should see "Entity mapping"
    And I should see "Field mapping"
    And I should see "Data browser"
    When I click "Import"
    Then I should be on "admin/config/capx/importer"
    And I should see "After you have Mapping configured, create an Importer to chose which profiles you would like to import."
    When I click "Create new importer"
    Then I should be on "admin/config/capx/importer/new"
    And I should see "Configuration"
    # Fix when typo is fixed
    And I should see "Automatic syncronization options (CRON)"
    And I should see "Add groups and individuals"
    When I click "Profiles"
    Then I should be on "admin/config/capx/profiles"
    And I should see "Sorry, but there are no profiles available. Please create a mapping and an importer to import profiles."
    When I click "Help"
    Then I should be on "admin/config/capx/help"
    And I should see "Getting started"
    And I should see "CAP data - Choosing fields"
    And I should see "Resources for developers"
    And I should see "Authentication credentials"
