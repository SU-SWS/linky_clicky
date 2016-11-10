@stanford
Feature: Stanford Sites System Tools Module
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Stanford Sites System Tools module is working properly

  # We use a Scenario Outline here because we want to test each item independently.
  @api @destructive @dev
  Scenario Outline: Prevent user from changing file system settings
    Given the "stanford_sites_systemtools" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/config/media/file-system"
    Then I should not see an "<Element>" element

    Examples:
      | Element                   |
      | #edit-file-private-path   |
      | #edit-file-public-path    |
      | #edit-file-temporary-path |

  # We use a Scenario Outline here because we want to test each item independently.
  @api @destructive @dev
  Scenario Outline: Prevent user from disabling/enabling certain modules
    Given the "stanford_sites_systemtools" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/modules"
    Then I should not see an "<Element>" element

    Examples:
      | Element                                                  |
      | #edit-modules-administration-erus-enable                 |
      | #edit-modules-core-php-enable                            |
      | #edit-modules-stanford-stanford-sites-systemtools-enable |
      | #edit-modules-core-update-enable                         |

  @api @destructive @dev
  Scenario: Prevent user saving Backup and Migrate archives to absolute path
    Given the "stanford_sites_systemtools" module is enabled
    And the "backup_migrate" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/config/system/backup_migrate/settings/destination/edit/manual"
    And I enter "/tmp" for "Directory path"
    And I press the "Save destination" button
    Then I should see the error message "You must enter a relative path for your destination directory."

  @api @destructive @dev
  Scenario: Prevent user saving Backup and Migrate archives to path outside of Drupal root
    Given the "stanford_sites_systemtools" module is enabled
    And the "backup_migrate" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/config/system/backup_migrate/settings/destination/edit/manual"
    And I enter "../../foo" for "Directory path"
    And I press the "Save destination" button
    Then I should see the error message "You may not choose a destination outside of your Drupal directory."

  # We use a Scenario Outline here because we want to test each item independently.
  @api @destructive @dev @javascript
  Scenario Outline: Prevent user from disabling/enabling certain modules (with Module Filter enabled)
    Given the "stanford_sites_systemtools" module is enabled
    And I am logged in as a user with the "administrator" role
    When I go to "admin/modules"
    Then I should not see an "<Element>" element

    Examples:
      | Element                                                  |
      | #edit-modules-administration-erus-enable                 |
      | #edit-modules-core-php-enable                            |
      | #edit-modules-stanford-stanford-sites-systemtools-enable |
      | #edit-modules-core-update-enable                         |
