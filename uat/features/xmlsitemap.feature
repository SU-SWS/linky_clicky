Feature: XML Sitemap
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the XML Sitemap module is working properly

  @api @javascript
  Scenario: XML Sitemap
    Given the "xmlsitemap_menu" module is enabled
    And I am logged in as a user with the "administrator" role
    And I am on "admin/structure/menu/manage/main-menu/edit"
    When I click "Show XML sitemap"
    And I select "Included" from "Inclusion"
    And I press the "Save" button
    And I run cron
    And the cache has been cleared
    When I go to "/sitemap.xml"
    Then I should see "URL location"