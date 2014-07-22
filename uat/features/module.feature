Feature: module
  In order to ensure that Behat can offer full functionality
  As a developer
  I want to use Behat to enable modules

@api @javascript
Scenario: Enable Context HTTP Header
  Given the "context_http_header" module is enabled
    And the "context_ui" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "/admin/structure/context"
    And I click "Add"
  When I enter "test" for "Name"
    And I select "Sitewide context" from "edit-conditions-selector"
    And I check the box "edit-conditions-plugins-sitewide-values-1"
    And I select "HTTP Headers" from "edit-reactions-selector"
    And I enter "X-Infinite-Improbability-Drive:42" for "edit-reactions-plugins-http-header-http-header-extra-headers" 
    And I press "Save"
  Then I should see "test has been created"

@api
Scenario: Enable Stanford Web Video
  Given I am logged in as a user with the "administrator" role
    And I am on "/admin/modules"
    And I check the box "Stanford Courses"
    And I press "Save configuration"
  Then I should see "The configuration options have been saved"
