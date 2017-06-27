Feature: Stanford Gallery Setup
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford Gallery module is working properly

  @api @dev @destructive
  Scenario: Enable the Stanford Gallery modules
    Given the "stanford_gallery" module is enabled
    And the "stanford_gallery_block" module is enabled
    And the "stanford_gallery_administration" module is enabled
