Feature: Stanford News Setup
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford News module is working properly

  @api @dev @destructive
  Scenario: Enable the Stanford News modules
    Given the "stanford_news" module is enabled
    And the "stanford_news_administration" module is enabled
#    And the "stanford_news_extras" module is enabled
#    And the "stanford_news_extras_importer" module is enabled
#   And the "stanford_news_extras_views" module is enabled
    And the "stanford_news_views" module is enabled
