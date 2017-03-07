@contrib
Feature: Backup and Migrate
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the Backup and Migrate module is working properly

# fails on API only for some reason; must use @javascript
  @api @javascript @dev @destructive
  Scenario: Backup and Migrate
    Given the "backup_migrate" module is enabled
    And the "webauth" module is disabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I go to "admin/structure/types/manage/article"
    And I click "Publishing options"
    And I uncheck "Create new revision"
    And I press the "Save content type" button
    And I go to "node/add/article"
    # Arbitrary hash for the Title to ensure that it's unique.
    And I enter "BAM Test 0s8obvunuj1ulflx" for "Title"
    And I attach the file "features/img/love-bacon.png" to "edit-field-image-und-0-upload"
    And I select "Plain text" from "Text format"
    And I enter "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit" for "edit-body-und-0-value"
    And I press the "Save" button
    # Presumes pathauto but that's OK.
    Then I should be on "bam-test-0s8obvunuj1ulflx"
    And I should see "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit"
    When I go to "sites/default/files/field/image/love-bacon.png"
    Then I should not see "not found"
    # Back up the DB.
    When I go to "admin/config/system/backup_migrate/export/advanced"
    And I select "Stanford Sites Profile" from "edit-profile-id"
    And I select "Default Database" from "edit-source-id"
    And I select "Manual Backups Directory" from "edit-destination-id"
    # Arbitrary hash for the name to ensure that it's unique.
    And I enter "bam-behat-archive-6q73custtmo9hq3e" for "Backup file name"
    And I uncheck "edit-append-timestamp"
    And I press the "Backup now" button
    Then I should see "Default Database backed up successfully to bam-behat-archive-6q73custtmo9hq3e"
    # Back up the Public Files Directory.
    When I go to "admin/config/system/backup_migrate/export/advanced"
    And I select "Stanford Sites Profile" from "edit-profile-id"
    And I select "Public Files Directory" from "edit-source-id"
    And I select "Manual Backups Directory" from "edit-destination-id"
    # Arbitrary hash for the name to ensure that it's unique.
    And I enter "bam-behat-archive-bzqdzodi07y8nrst" for "Backup file name"
    And I uncheck "edit-append-timestamp"
    And I press the "Backup now" button
    Then I should see "Public Files Directory backed up successfully to bam-behat-archive-bzqdzodi07y8nrst"
    # Delete the article node.
    When I go to "bam-test-0s8obvunuj1ulflx"
    And I click "Edit"
    And I press the "Delete" button
    And I press the "Delete" button
    And I go to "bam-test-0s8obvunuj1ulflx"
    Then I should see "Page not found"
    When I go to "sites/default/files/field/image/love-bacon.png"
    And I reload the page
    Then I should see "not found"
    # Restore the DB.
    When I go to "admin/config/system/backup_migrate/backups"
    Then I should see "bam-behat-archive-6q73custtmo9hq3e.mysql.gz"
    When I click "restore" in the "bam-behat-archive-6q73custtmo9hq3e.mysql.gz" row
    Then I should be on "admin/config/system/backup_migrate/settings/destination/list/restorefile/manual/bam-behat-archive-6q73custtmo9hq3e.mysql.gz"
    When I select "Default Database" from "Restore to"
    And I press the "Restore" button
    # Restore the Public Files Directory.
    When I go to "admin/config/system/backup_migrate/backups"
    Then I should see "bam-behat-archive-bzqdzodi07y8nrst.tar.gz"
    When I click "restore" in the "bam-behat-archive-bzqdzodi07y8nrst.tar.gz" row
    Then I should be on "admin/config/system/backup_migrate/settings/destination/list/restorefile/manual/bam-behat-archive-bzqdzodi07y8nrst.tar.gz"
    When I select "Public Files Directory" from "Restore to"
    And I press the "Restore" button
    And the cache has been cleared
    When I go to "bam-test-0s8obvunuj1ulflx"
    And I should see "Bacon ipsum dolor sit amet deserunt fatback in venison reprehenderit"
    When I go to "sites/default/files/field/image/love-bacon.png"
    Then I should not see "not found"
    # Clean up everything.
    When I go to "admin/config/system/backup_migrate/backups"
    And I click "delete" in the "bam-behat-archive-6q73custtmo9hq3e.mysql.gz" row
    And I press the "Delete" button
    Then I should see "Database backup file deleted"
    When I go to "admin/config/system/backup_migrate/backups"
    And I click "delete" in the "bam-behat-archive-bzqdzodi07y8nrst.tar.gz" row
    And I press the "Delete" button
    # It says "Database backup file deleted" even for Public Files directory. Ya rly.
    Then I should see "Database backup file deleted"
    Given the "webauth" module is enabled
