Feature: PHP
  In order to ensure that end users cannot enter arbitrary PHP code
  As a user with the "administrator" role
  I want to try to enter arbitrary PHP (and fail)

  @api
  Scenario: Ensure that Risky Modules Cannot Be Enabled
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/modules"
    Then I should not see "(computed_field)"
    And I should not see "(ds_format)"
    And I should not see "(paranoia)"
    And I should not see "(php)"

  @api
  Scenario: Permissions
    Given I am logged in as a user with the "administrator" role
    And the "auto_nodetitle" module is enabled
    And the "ctools" module is enabled
    And the "custom_breadcrumbs" module is enabled
    And the "googleanalytics" module is enabled
    And the cache has been cleared
    And I am on "admin/people/permissions"
    Then I should see "Use PHP for title patterns Disabled by paranoia module."
    And I should see "Use CTools importer Disabled by paranoia module."
    And I should see "Use PHP in Custom Breadcrumbs Disabled by paranoia module."
    And I should see "Use PHP for tracking visibility Disabled by paranoia module."

  @api
  Scenario: Modify User 1
    Given I am logged in as a user with the "administrator" role
    And I am on "user/1/edit"
    Then I should see "You must login as this user (user/1) to modify the name, email address, and password for this account."

  @api
  Scenario: Automatic Nodetitles
    Given I am logged in as a user with the "administrator" role
    And the "auto_nodetitle" module is enabled
    And I am on "admin/structure/types/manage/stanford_page"
    Then I should not see "Evaluate PHP in pattern"

  @api
  Scenario: Bundle Copy Import Form
    Given I am logged in as a user with the "administrator" role
    And the "bundle_copy" module is enabled
    And I am on "admin/structure/types/import"
    Then I should see "This form is disabled"

  @api
  Scenario: CTools Import Forms
    Given I am logged in as a user with the "administrator" role
    And the "context_ui" module is enabled
    And the "delta_ui" module is enabled
    And the "js_injector" module is enabled
    And the "jw_player" module is enabled
    And the "openlayers_ui" module is enabled
    And the "services" module is enabled
    And the cache has been cleared
    When I am on "admin/structure/context/import"
    Then I should see "Access denied"
    And the response status code should be 403
    When I am on "admin/appearance/delta/import"
    Then I should see "Access denied"
    And the response status code should be 403
    When I am on "admin/config/development/js-injector/import"
    Then I should see "Access denied"
    And the response status code should be 403
    When I am on "admin/config/media/jw_player/import"
    Then I should see "Access denied"
    And the response status code should be 403
    When I am on "admin/structure/openlayers/layers/import"
    Then I should see "Access denied"
    And the response status code should be 403
    When I am on "admin/structure/openlayers/maps/import"
    Then I should see "Access denied"
    And the response status code should be 403
    When I am on "admin/structure/openlayers/projections/import"
    Then I should see "Access denied"
    And the response status code should be 403
    When I am on "admin/structure/openlayers/styles/import"
    Then I should see "Access denied"
    And the response status code should be 403
    When I am on "admin/structure/services/import"
    Then I should see "Access denied"
    And the response status code should be 403

  @api
  Scenario: Feeds Import Form
    Given I am logged in as a user with the "administrator" role
    And the "feeds_ui" module is enabled
    And the cache has been cleared
    When I am on "admin/structure/feeds/import"
    Then I should see "Access denied"
    And the response status code should be 403

  @api
  Scenario: Flag Import Form
    Given I am logged in as a user with the "administrator" role
    And the "flag" module is enabled
    And the cache has been cleared
    When I am on "admin/structure/flags/import"
    And I should see "This form is disabled"

  @api
  Scenario: Page Manager Import Form
    Given I am logged in as a user with the "administrator" role
    And the "page_manager" module is enabled
    And the cache has been cleared
    When I am on "admin/structure/pages/import"
    Then I should see "Access denied"
    And the response status code should be 403

  @api
  Scenario: Relation Import Form
    Given I am logged in as a user with the "administrator" role
    And the "relation_ui" module is enabled
    And the cache has been cleared
    When I am on "admin/structure/relation/import"
    And I should see "This form is disabled"

  @api
  Scenario: Rules Import Form
    Given I am logged in as a user with the "administrator" role
    And the "rules_admin" module is enabled
    And the cache has been cleared
    When I am on "admin/config/workflow/rules/components/import"
    And I should see "This form is disabled"

  @api
  Scenario: Custom Breadcrumbs
    Given I am logged in as a user with the "administrator" role
    And the "custom_breadcrumbs" module is enabled
    And I am on "admin/structure/custom_breadcrumbs/add"
    Then I should not see "Breadcrumb visibility"
    And I should not see "Determine whether this breadcrumb should be displayed by using a snippet of PHP to return TRUE or FALSE"

  @api
  Scenario: Views Import
    Given I am logged in as a user with the "administrator" role
    And the "views_ui" module is enabled
    And I go to "admin/structure/views/import"
    Then I should see "Access denied"
    And the response status code should be 403

  @api
  Scenario: Views Bulk Operations Chainsaw Mode
    Given I am logged in as a user with the "administrator" role
    And the "views_bulk_operations" module is enabled
    And I am on "admin/structure/views/view/admin_views_node"
    When I click "Bulk operations: Content"
    Then the "Execute arbitrary PHP script" checkbox should be disabled
    When I am on "admin/structure/views/view/admin_views_user"
    When I click "Bulk operations: User"
    Then the "Execute arbitrary PHP script" checkbox should be disabled

  @api @javascript
  Scenario: Views Bulk Operations Chainsaw Mode - with Javascript
    Given I am logged in as a user with the "administrator" role
    And the "views_bulk_operations" module is enabled
    And I am on "admin/structure/views/view/admin_views_node"
    When I click "Bulk operations: Content"
    And I wait for AJAX to finish
    Then the "Execute arbitrary PHP script" checkbox should be disabled
    When I am on "admin/structure/views/view/admin_views_user"
    When I click "Bulk operations: User"
    And I wait for AJAX to finish
    Then the "Execute arbitrary PHP script" checkbox should be disabled
