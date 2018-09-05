@contrib
Feature: Views Load More
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure the Views Load More module is working properly

  @api @javascript @dev @destructive
  Scenario: Views Load More
    Given I am logged in as a user with the "administrator" role
    # "Given :type content:" needs the Drupal API driver, so we slog it out.
    And I am on "node/add/article"
    And I enter "Node 01" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 02" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 03" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 04" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 05" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 06" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 07" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 08" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 09" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 10" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 11" for "Title"
    And I press the "Save" button
    And I am on "node/add/article"
    And I enter "Node 12" for "Title"
    And I press the "Save" button
    And the "views_load_more" module is enabled
    And I go to "admin/structure/views/add"
    And I enter "vlm" for "View name"
    And I select "fields" from "edit-page-style-row-plugin"
    And I wait for AJAX to finish
    And I select "Article" from "of type"
    And I wait for AJAX to finish
    And I select "Title" from "sorted by"
    And I wait for AJAX to finish
    And I enter "vlm" for "Path"
    And I enter "4" for "Items to display"
    And I press the "Continue & edit" button
    When I click "views-page-pager"
    And I wait for AJAX to finish
    And I select the radio button "Load More Pager"
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    When I click "Content: Title (desc)"
    And I wait for AJAX to finish
    And I select the radio button "Sort ascending"
    And I press the "Apply (all displays)" button
    And I wait for AJAX to finish
    And I press the "Save" button
    Then I should see "The view vlm has been saved"
    When I go to "vlm"
    Then I should see "Node 01"
    And I should see "Node 02"
    And I should see "Node 03"
    And I should see "Node 04"
    And I should not see "Node 05"
    And I should see "Load more"
    When I click "Load more"
    And I wait for AJAX to finish
    Then I should see "Node 05"
    And I should see "Node 06"
    And I should see "Node 07"
    And I should see "Node 08"
    And I should not see "Node 09"
    When I click "Load more"
    And I wait for AJAX to finish
    Then I should see "Node 09"
    And I should see "Node 10"
    And I should see "Node 11"
    And I should see "Node 12"
    And I wait 90 seconds
    # Clean up
    When I go to "admin/structure/views/view/vlm/delete"
    And I press the "Delete" button
    Then I should see "The view has been deleted"



