@contrib
Feature: Views Datasource
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Views Datasource module is working properly

  @api @dev @destructive
  Scenario: Views JSON
    Given the "views_json" module is enabled
    And the "admin_views" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/view/admin_views_node/edit"
    And I click "Table"
    And I select the "JSON data document" radio button
    And I press the "Apply" button
    And I press the "Apply" button
    When I press the "Save" button
    Then I should see "The view Administration: Nodes has been saved"
    When I click "revert view"
    And I press the "Revert" button
    Then I should see "The view has been reverted"

  @api @dev @destructive
  Scenario: Views RDF
    Given the "views_rdf" module is enabled
    And the "admin_views" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/view/admin_views_node/edit"
    And I click "Table"
    And I select the "RDF data document" radio button
    And I press the "Apply" button
    And I press the "Apply" button
    When I press the "Save" button
    Then I should see "The view Administration: Nodes has been saved"
    When I click "revert view"
    And I press the "Revert" button
    Then I should see "The view has been reverted"

  @api @dev @destructive
  Scenario: Views XHTML
    Given the "views_xhtml" module is enabled
    And the "admin_views" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/view/admin_views_node/edit"
    And I click "Table"
    And I select the "XHTML data document" radio button
    And I press the "Apply" button
    And I select the "Default: text/xhtml" radio button
    And I press the "Apply" button
    When I press the "Save" button
    Then I should see "The view Administration: Nodes has been saved"
    When I click "revert view"
    And I press the "Revert" button
    Then I should see "The view has been reverted"

  @api @dev @destructive
  Scenario: Views XML
    Given the "views_xml" module is enabled
    And the "admin_views" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/views/view/admin_views_node/edit"
    And I click "Table"
    And I select the "XML data document" radio button
    And I press the "Apply" button
    And I press the "Apply" button
    When I press the "Save" button
    Then I should see "The view Administration: Nodes has been saved"
    When I click "revert view"
    And I press the "Revert" button
    Then I should see "The view has been reverted"
