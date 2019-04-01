Feature: External Link (extlink) module
  In order to ensure the site is functioning as expected
  As administrator
  I want to verify functionality of the External Link module
  This depends on the Stanford Landing Page module.

  @api @destructive @javascript
  Scenario: Create Landing Page and check that the "ext" class appears
    Given I am logged in as a user with the "administrator" role
    Given the "extlink" module is enabled
    Given the "stanford_landing_page" module is enabled
    And I am on "node/add/stanford-landing-page"
    Then I fill in "title" with "External Link Behat Test"
    And I click "Add/Edit Content"
    And I fill in "field_landing_page_item[und][0][field_s_lp_item_title][und][0][value]" with "External Link #1"
    And I fill in "field_landing_page_item[und][0][field_s_lp_item_link][und][0][url]" with "https://google.com"
    And I press the "Save" button
    And I should see "Landing page External Link Behat Test"
    Then I should see a "a" element
    Then I should see "External Link #1"
    And I click on the element with css selector ".ext"
    And I should be on "https://google.com"
