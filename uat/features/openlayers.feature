Feature: OpenLayers
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the OpenLayers module is working properly

  @api
  Scenario: OpenLayers
    Given the "openlayers_ui" module is enabled
    And the cache has been cleared
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/openlayers"
    Then the "OpenLayers external source" field should contain "https://cdnjs.cloudflare.com/ajax/libs/openlayers/2.12/OpenLayers.js"
