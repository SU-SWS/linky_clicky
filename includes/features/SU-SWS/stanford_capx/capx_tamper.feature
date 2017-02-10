Feature: CAPx Tamper
  In order to ensure that the capx module is installed and functional
  As an administrative user
  I want to ensure that the Stanford CAP Extensible module is working properly

  @api @dev @destructive @mikes
  Scenario: Stanford CAP Extensible
    Given the "capx_tamper" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/config/capx/mapper/new"
    Then I fill in "title" with "Behat Mapper"
    And I select "Node" from "entity-type"
    And I select "Person" from "bundle-node"
    And I fill in "field-mapping[node-properties][title]" with "$.displayName"
    And I fill in "field-mapping[node-stanford_person-fields][field_s_person_first_name][value]" with "$.names.legal.firstName"
    And I fill in "field-mapping[node-stanford_person-fields][field_s_person_last_name][value]" with "$.names.legal.lastName"
    Then I press the "Save mapping" button
    And I should be on "admin/config/capx/mapper"
    And I should see "Behat Mapper"
    And I should see "Tampers"
    Then I am on "admin/config/capx/mapper/behat_mapper/tamper"
    And I should see "Title <- $.displayName"
    And I should see "First name <- $.names.legal.firstName"
    And I should see "Last Name <- $.names.legal.lastName"
    Then I click "Add Plugin"
    And I should be on "admin/config/capx/mapper/behat_mapper/tamper/add/[random:1]"