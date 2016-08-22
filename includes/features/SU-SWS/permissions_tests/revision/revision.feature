Feature: Ensure Site Owners and Editors can create, change and edit revisions
  In order to ensure that site owners and editors can create, cahnge and edit revisions
  As a site owner or editor
  I want to be able to go to previous revisions, delete revisions and create revisions

    @api @dev @destructive @javascript
    Scenario: Ensure Site Owners can create, edit, revert back and delete their own revisions
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Manage Content" in the "Admin Shortcuts" region
    Then I should see "Manage All Content" in the "Branding" region
    And I click "Manage Pages" in the "Second sidebar" region
    Then I should see "Manage Stanford Page" in the "Branding" region
    And I click "edit"
    And I click on the element with css selector ".vertical-tab-button:nth-child(3)"
    Then the checkbox "Create new revision" should be checked
    And I fill in "edit-log" with "test-revision"
    And I press the "Save" button
    Then I should see " has been updated" in the "Console" region
    And I click "edit"
    And I click "Revisions" in the "Branding" region
    Then I should see "Revisions for Events" in the "Branding" region
    And I click on the element with css selector ".diff-revision:last-child td a[href$='revert']"
    And I click on the element with css selector "#edit-submit"
    Then I should see "has been reverted back" in the "Console" region
    And I click on the element with css selector ".diff-revision:nth-child(2) td a[href$='delete']"
    And I click on the element with css selector "#edit-submit"
    Then I should see "has been deleted" in the "Console" region

    @api @dev @destructive @javascript
    Scenario: Ensure editors can create, edit and revert back and delete their own revisions
    Given I am logged in as a user with the "editor" role
    When I wait for the Site Actions drop down to appear
    And I click "Manage Content" in the "Admin Shortcuts" region
    Then I should see "Manage All Content" in the "Branding" region
    And I click "Manage Pages" in the "Second sidebar" region
    Then I should see "Manage Stanford Page" in the "Branding" region
    And I click "edit"
    And I click on the element with css selector ".vertical-tab-button:nth-child(2)"
    Then the checkbox "Create new revision" should be checked
    And I fill in "edit-log" with "test-revision"
    And I press the "Save" button
    Then I should see " has been updated" in the "Console" region
    And I click "edit"
    And I click "Revisions" in the "Branding" region
    Then I should see "Revisions for Events" in the "Branding" region
    And I click on the element with css selector ".diff-revision:last-child td a[href$='revert']"
    And I click on the element with css selector "#edit-submit"
    Then I should see "has been reverted back" in the "Console" region
    And I click on the element with css selector ".diff-revision:nth-child(2) td a[href$='delete']"
    And I click on the element with css selector "#edit-submit"
    Then I should see "has been deleted" in the "Console" region

    @api @dev @destructive @javascript
    Scenario: Ensure editors can create revisions to any content
    Given I am logged in as a user with the "site owner" role
    When I wait for the Site Actions drop down to appear
    And I click "Manage Content" in the "Admin Shortcuts" region
    Then I should see "Manage All Content" in the "Branding" region
    And I click "Manage Pages" in the "Second sidebar" region
    Then I should see "Manage Stanford Page" in the "Branding" region
    And I click "edit"
    And I click on the element with css selector ".vertical-tab-button:nth-child(3)"
    Then the checkbox "Create new revision" should be checked
    And I fill in "edit-log" with "test-revision"
    And I press the "Save" button
    Then I should see " has been updated" in the "Console" region
    Given I am logged in as a user with the "editor" role
    And I am on "admin/manage/page"
    And I click "edit"
    And I click "Revisions" in the "Branding" region
    Then I should see "Revisions for Events" in the "Branding" region
    And I click on the element with css selector ".diff-revision:last-child td a[href$='revert']"
    And I click on the element with css selector "#edit-submit"
    Then I should see "has been reverted back" in the "Console" region


    @api @dev @destructive @javascript
    Scenario: Ensure site owners can edit and delete any revision
    Given I am logged in as a user with the "editor" role
    When I wait for the Site Actions drop down to appear
    And I click "Manage Content" in the "Admin Shortcuts" region
    Then I should see "Manage All Content" in the "Branding" region
    And I click "Manage Pages" in the "Second sidebar" region
    Then I should see "Manage Stanford Page" in the "Branding" region
    And I click "edit"
    And I click on the element with css selector ".vertical-tab-button:nth-child(2)"
    Then the checkbox "Create new revision" should be checked
    And I fill in "edit-log" with "test-revision"
    And I press the "Save" button
    Then I should see " has been updated" in the "Console" region
    Given I am logged in as a user with the "site owner" role
    And I am on "admin/manage/page"
    And I click "edit"
    And I click "Revisions" in the "Branding" region
    Then I should see "Revisions for Events" in the "Branding" region
    And I click on the element with css selector ".diff-revision:last-child td a[href$='revert']"
    And I click on the element with css selector "#edit-submit"
    Then I should see "has been reverted back" in the "Console" region
    And I click on the element with css selector ".diff-revision:nth-child(2) td a[href$='delete']"
    And I click on the element with css selector "#edit-submit"
    Then I should see "has been deleted" in the "Console" region
