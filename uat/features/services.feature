Feature: Services
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Services module is working properly

  @api
  Scenario: Services
    Given the "services" module is enabled
    And the "rest_server" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/services"
    Then I should see "Services are collections of methods available to remote applications"
    And I should see "There are no endpoints to display"
    When I click "Add"
    Then I should be on "admin/structure/services/add"
    When I enter "foo" for "Machine-readable name of the endpoint"
    And I select "REST" from "Server"
    And I enter "services/rest" for "Path to endpoint"
    And I press the "Save" button
    Then I should be on "admin/structure/services"
    And I should see "foo" in the "Content" region
    When I click "Delete" in the "foo" row
    Then I should be on "admin/structure/services/list/foo/delete"
    When I press the "Delete" button
    Then I should see "The item has been deleted" in the "Console" region
    And I should be on "admin/structure/services"
