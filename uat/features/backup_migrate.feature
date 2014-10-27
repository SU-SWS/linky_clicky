Feature: Backup and Migrate
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Backup and Migrate module is working properly

# fails on API only for some reason; must use @javascript
  @api @javascript
  Scenario: Backup and Migrate
    Given the "backup_migrate" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "admin/config/system/backup_migrate/restore"
    And I attach the file "drupal7-update-status-2014-08-07T10-50-00.mysql.gz" to "edit-backup-migrate-restore-upload--2"
    And I press the "Restore now" button
    When I go to the homepage
    Then I should see "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit"
    And I should see "Pancetta swine kielbasa, beef adipisicing kevin tri-tip"
    # Clean up
    Given the cache has been cleared