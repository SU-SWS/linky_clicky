@stanford
Feature: Stanford Sites System Tools Module
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford Sites System Tools module is working properly

  @api @destructive @dev
  Scenario: Prevent user from changing file system settings
    Given the "stanford_sites_systemtools" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/config/media/file-system"
    Then I should not see a "#edit-file-private-path" element
    And I should not see a "#edit-file-public-path" element
    And I should not see a "#edit-file-temporary-path" element

  @api @destructive @dev
  Scenario: Prevent user from disabling/enabling certain modules
    Given the "stanford_sites_systemtools" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/modules"
    Then I should not see a "#edit-modules-administration-erus-enable" element
    And I should not see a "#edit-modules-core-php-enable" element
    And I should not see a "#edit-modules-stanford-stanford-sites-systemtools-enable" element
    And I should not see a "#edit-modules-core-update-enable" element

  @api @destructive @dev
  Scenario: Prevent user saving Backup and Migrate archives to inappropriate directories
    Given the "stanford_sites_systemtools" module is enabled
    And the "backup_migrate" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/config/system/backup_migrate/settings/destination/edit/manual"
    And I enter "/tmp" for "Directory path"
    And I press the "Save destination" button
    Then I should see the error message "You must enter a relative path for your destination directory."
    When I go to "admin/config/system/backup_migrate/settings/destination/edit/manual"
    And I enter "../../foo" for "Directory path"
    And I press the "Save destination" button
    Then I should see the error message "You may not choose a destination outside of your Drupal directory."

  @api @destructive @dev @javascript
  Scenario: Prevent user from disabling/enabling certain modules (with Module Filter enabled)
    Given the "stanford_sites_systemtools" module is enabled
    And the "module_filter" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/modules"
    Then I should not see a "#edit-modules-administration-erus-enable" element
    And I should not see a "#edit-modules-core-php-enable" element
    And I should not see a "#edit-modules-stanford-stanford-sites-systemtools-enable" element
    And I should not see a "#edit-modules-core-update-enable" element



