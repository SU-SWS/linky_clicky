Feature: modules
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that modules are working properly

@api @javascript
Scenario: Enable Context HTTP Header
  Given the "context_http_header" module is enabled
    And the "context_ui" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And the cache has been cleared
    And I am on "/admin/structure/context"
    And I click "Add"
  When I enter "[random]" for "Name"
    And I select "Sitewide context" from "edit-conditions-selector"
    And I check the box "edit-conditions-plugins-sitewide-values-1"
    And I select "HTTP Headers" from "edit-reactions-selector"
    And I enter "X-Infinite-Improbability-Drive:42" for "edit-reactions-plugins-http-header-http-header-extra-headers" 
    And I press the "Save" button
  Then I should see "[random:1] has been created"

@api @javascript
Scenario: Enable xmlsitemap
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
