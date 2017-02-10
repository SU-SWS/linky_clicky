Feature: Ensure Site Users can view, select, and reset the filter by related content section on the events page
  In order to ensure that any site user can view, select, and reset the filter by related content section on the events page
  As a Site User
  I want to be able to view, select, and reset the filter by related content section on the events page

  @safe @javascript
  Scenario: Verify users can view the filter by related content section on the events page
    Given I am on "events/upcoming-events"
    Then I should see "Filter by related content" in the "First sidebar" region
    And I should see "Go"
    And I should see "op" 

  @api @dev @destructive @javascript
  Scenario: Verify terms are visible in the filter by related content section on the events page
    Given I am logged in as a user with the "site owner" role   
    When I wait for the Site Actions drop down to appear
    And I click "Manage Taxonomies" in the "Admin Shortcuts" region
    Then I should see "Taxonomy Manager"
    When I click "Related Content"
    Then I fill in "edit-add-mass-add" with "professor"
    And I press the "Add" button
    Then I should see "Terms added" in the "Console" region
    And I should be on "admin/structure/taxonomy_manager/voc/stanford_related_content"
    Given I am not logged in
    And I am on "events/upcoming-events"
    Then I should see "professor" in the "First sidebar" region
    Given I am logged in as a user with the "site owner" role   
    When I wait for the Site Actions drop down to appear
    And I click "Manage Taxonomies" in the "Admin Shortcuts" region
    Then I should see "Taxonomy Manager"
    When I click "Related Content"
    And I click on the element with css selector ".select-all-children"
    And I press the "Delete" button
    And I click on the element with css selector "#edit-delete-delete"
    Then I should see "Are you sure you want to delete the following terms" in the "Branding" region
    When I press the "Delete" button
    Then I should see "Deleted terms" in the "Console" region
    

