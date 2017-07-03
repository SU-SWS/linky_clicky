@contrib
Feature: Services
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Services module is working properly

  @api @dev @destructive
  Scenario: Services
    Given the "services" module is enabled
    And the "rest_server" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/services"
    Then I should see "Services are collections of methods available to remote applications"
    # And I should see "There are no endpoints to display"
    When I click "Add"
    Then I should be on "admin/structure/services/add"
    When I enter "foo" for "Machine-readable name of the endpoint"
    And I select "REST" from "Server"
    And I enter "services/rest" for "Path to endpoint"
    And I press the "Save" button
    Then I should be on "admin/structure/services"
    And I should see "foo" in the "Content" region
    When I go to "admin/structure/services/list/foo/resources"
    And I check the box "edit-resources-node-operations-index-enabled"
    And I press the "Save" button
    Then I should see "Resources have been saved"
    When I go to "node/add/page"
    And I enter "First Page for Services Test" for "Title"
    And I press the "Save" button
    Then I should see "Basic page First Page for Services Test has been created."
    When I go to "node/add/page"
    And I enter "Second Page for Services Test" for "Title"
    And I press the "Save" button
    Then I should see "Basic page Second Page for Services Test has been created."
    When I request "services/rest/node.json"
    Then the response body contains JSON:
      """
      {
      title	"First Page for Services Test"
      }
      """
    And the response body contains JSON:
      """
      {
      title	"Second Page for Services Test"
      }
      """
    When I go to "admin/structure/services"
    When I click "Delete" in the "foo" row
    Then I should be on "admin/structure/services/list/foo/delete"
    When I press the "Delete" button
    Then I should see "The item has been deleted" in the "Console" region
    And I should be on "admin/structure/services"
