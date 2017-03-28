Feature: CAPx SSO Integration
  In order to ensure that the capx module is installed and functional
  As an administrative user
  I want to ensure that the Stanford CAP Extensible module is working properly

  @api @dev @javascript @destructive
  Scenario: Stanford CAPx SSP user is created and populated in authmap table
    Given I am authenticated with CAPx
    And the "capx_ssp" module is enabled
    And the "capx_webauth" module is disabled
    And I am logged in as a user with the "administrator" role
    # Update organization codes
    Then I am on "admin/config/capx/organizations/sync?destination=admin/config/capx/settings"
    And I wait for the batch job to finish
    And I should see "Organization codes have been updated."

    # Create a mapper
    Then I am on "admin/config/capx/mapper/new"
    Then I fill in "title" with "CAPx SSP Mapper"
    And I select "User" from "entity-type"
    And I select "User" from "bundle-user"

    Then I click "Show user Properties"
    And I fill in the following:
    | field-mapping[user-properties][name]       | $.uid  |
    | field-mapping[user-properties][mail]       | $.uid  |
    | field-mapping[user-properties][feed_nid]   | $.uid  |
    | field-mapping[user-properties][feed_node]  | $.uid  |

    Then I press the "Save mapping" button
    And I should be on "admin/config/capx/mapper"
    And I should see "CAPx SSP Mapper"

      # Create an importer & import.
    Then I am on "admin/config/capx/importer/new"
    And I select "CAPx SSP Mapper" from "Mapping"
    And I fill in "Importer name" with "CAPx SSP Importer"
    And I fill in "Organization(s)" with "BUWS"
    Then I press the "Save & Import Now" button
    And I wait for the batch job to finish

    Then I run drush "sqlq" "`SELECT count(*) FROM users u RIGHT JOIN capx_profiles p ON u.uid = p.entity_id LEFT JOIN authmap a ON u.uid = a.uid WHERE a.module = 'stanford_simplesamlphp_auth';`"
    And drush output should not contain "0"

    # Delete the importer then the mapper.
    Then I am on "admin/config/capx/importer/delete/capx_ssp_importer"
    And I select "Delete all of the items" from "profile_action"
    And I press the "Yes, please delete the importer" button
    Then I am on "admin/config/capx/mapper/delete/capx_ssp_mapper"
    And I press the "Yes, please delete" button