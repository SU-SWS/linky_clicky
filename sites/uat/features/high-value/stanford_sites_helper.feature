@stanford
Feature: Stanford Sites Helper Module
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford Sites Helper module is working properly

  @api @safe @deploy @javascript
  Scenario: Homepage text content
    # We don't use "Scenario Outline" here because it's too slow.
    Given I am an anonymous user
    And I am on the homepage
    Then I should see "Once you have logged in, you will be able to remove this text from your homepage" in the "Content Body" region
    And I should see "Create a new page on your site" in the "Content Body" region
    And I should see "Change your site's name and information" in the "Content Body" region
    And I should see "Get rid of this" in the "Content Body" region
    And I should see "Edit your navigation menus" in the "Content Body" region
    And I should see "Add functionality and features" in the "Content Body" region
    And I should see "Edit the look and feel of your site" in the "Content Body" region

  @api @safe @deploy
  Scenario: Homepage header content
    # We don't use "Scenario Outline" here because it's too slow.
    Given I am an anonymous user
    And I am on the homepage
    Then I should see the heading "Welcome to Your Stanford Sites Website" in the "Content Body" region
    And I should see the heading "Quick Steps to Get Started" in the "Content Body" region
    And I should see the heading "More advanced tasks:" in the "Content Body" region
    And I should see the heading "Going further:" in the "Content Body" region

  @api @safe @deploy
  Scenario: Search box - authenticated user
    Given I am logged in as a user with the "administrator" role
    And I am on the homepage
    Then I should see a "#edit-search-block-form--2" element
    When I enter "purple monkey dishwasher" for "Search"
    And I press the "Search" button
    Then I should be on "search/node/purple%20monkey%20dishwasher"
    And I should see the heading "Your search did not yield any results"
    And I should see "Remove quotes around phrases to match each word individually:"
    And I should see "stanford university"
    And I should see "will match less than stanford university."
    And I should see "Consider loosening your query with OR: stanford university will match less than stanford OR university."

  @api @javascript @safe @deploy
  Scenario: Quick Steps
    # We don't use "Scenario Outline" here because it's too slow.
    Given I am logged in as a user with the "administrator" role
    And I am on the homepage
    When I click "Create a new page on your site"
    And I wait for AJAX to finish
    Then I should see "Do you want an"
    When I click "Create a New Page"
    Then I should be on "node/add/page"
    Given I am on the homepage
    When I click "Change your site's name and information"
    And I wait for AJAX to finish
    Then I should see "You can rename your site, add a slogan, or set an existing page to be the homepage"
    When I click "Edit Your Site's Information"
    Then I should be on "admin/config/system/site-information"
    Given I am on the homepage
    When I click "Get rid of this"
    And I wait for AJAX to finish
    Then I should see "Want to make these"
    When I click "Hide This Block"
    Then I should be on "admin/structure/block/manage/stanford_sites_helper/firststeps/configure"
    Given I am on the homepage
    When I click "Get rid of this"
    And I wait for AJAX to finish
    Then I should see "Drupal uses a system called"
    When I click "Configure All Blocks"
    Then I should be on "admin/structure/block"
    Given I am on the homepage
    When I click "Edit your navigation menus"
    And I wait for AJAX to finish
    Then I should see "Drupal comes pre-packaged with a Main menu navigation"
    When I click "Edit Your Main Menu"
    Then I should be on "admin/structure/menu/manage/main-menu"
    Given I am on the homepage
    When I click "Edit your navigation menus"
    And I wait for AJAX to finish
    Then I should see "First create new pages, and then add them to your menu"
    When I click "Create a New Menu"
    Then I should be on "admin/structure/menu/add"
    Given I am on the homepage
    When I click "Add functionality and features"
    And I wait for AJAX to finish
    Then I should see "Want to add a contact form to your site? Looking to do more with your site?"
    When I click "Visit Your Modules"
    Then I should be on "admin/modules"
    Given I am on the homepage
    When I click "Edit the look and feel of your site"
    And I wait for AJAX to finish
    Then I should see "Your site comes pre-packaged with the Stanford Light theme."
    When I click "Edit Your Theme Settings"
    Then I should be on "admin/appearance/settings"

  @api @safe @deploy
  Scenario: Going Further
    # We don't use "Scenario Outline" here because it's too slow.
    Given I am logged in as a user with the "administrator" role
    And I am on the homepage
    When I click "Add a new user"
    Then I should be on "admin/people/create"
    Given I am on the homepage
    When I click "Create a new user role"
    Then I should be on "admin/people/permissions/roles"
    Given I am on the homepage
    When I click "Edit permissions"
    Then I should be on "admin/people/permissions"
    Given I am on the homepage
    When I click "Create a new View"
    Then I should be on "admin/structure/views/add"

  @api @safe @sites @deploy
  Scenario: Link to ServiceNow for administrative users
    Given I am logged in as a user with the "administrator" role
    And I am on "admin"
    Then I should see the heading "Get Help" in the "Help" region
    And I should see "Problems using this service? Submit a service request." in the "Help" region
    When I click "service request"
    Then I should be on "https://stanford.service-now.com/it_services?id=sc_cat_item&sys_id=c44652e04f13ae0054c23f828110c7d9"

  @api @dev @sites @destructive
  Scenario: Stanford Sites Backup and Migrate profile
    Given I am logged in as a user with the "administrator" role
    And the "backup_migrate" module is enabled
    And the cache has been cleared
    And I am on "admin/config/system/backup_migrate"
    Then I want to validate select field option "profile_id" default is "Stanford Sites Profile"
    When I go to "admin/config/system/backup_migrate/settings/profile"
    Then I should see "Stanford Sites Profile" in the "Content" region

  @api @safe @sites @deploy
  Scenario: AFS file storage checking
    Given I am logged in as a user with the "administrator" role
    And the "stanford_afs_quota" module is enabled
    And I am on "admin/reports/status"
    Then I should see "File Storage Limit"
    When I click "Check again" in the "File Storage Limit" row
    Then I should be on "admin/config/stanford-sites-helper/filequota/check"
    When I am on "admin/reports/status"
    And I click "request more storage" in the "File Storage Limit" row
    Then I should be on "https://stanford.service-now.com/it_services?id=sc_cat_item&sys_id=c44652e04f13ae0054c23f828110c7d9"


