Feature: External Link (extlink) module
  In order to ensure the site is functioning as expected
  As administrator
  I want to verify functionality of the External Link module

  @safe @api
  Scenario: Verify External Link module is enabled
    Given I am logged in as a user with the "administrator" role
    And I am on "admin/modules"
    Then I should see 1 "#edit-modules-user-interface-extlink-enable" element
    And the "modules[User interface][extlink][enable]" checkbox should be checked

  @api @destructive @javascript
  Scenario: Create Landing Page and check that the "ext" class appears
    Given I am logged in as a user with the "administrator" role
    And I am on "node/add/stanford-landing-page"
    Then I fill in "title" with "External Link Behat Test"
    And I fill in "field_landing_page_item[und][0][field_s_lp_item_title][und][0][value]" with "External Link #1"
    And I fill in "field_landing_page_item[und][0][field_s_lp_item_link][und][0][url]" with "https://google.com"
    And I press the "Save" button
    And I should see "Landing page External Link Behat Test"
    Then I should see a "a" element
    Then I should see "External Link #1"

    Then show me the HTML page
    Then I should see 1 or more ".ext" elements


    #Then I should see 1 or more "ext" elements
    #Then I should see 1 or more ".ext" elements
    #Then I should see ".ext" in the "a" element
    #Then I should see "ext" in the "a" element
    #And I click on the element with css selector ".field-name-field-s-lp-item-image a"
    And I click on the element with css selector "ext"
    And I should be on "http://google.com"

    Then I should see the link "google.com"
    Then I should see the link "http://google.com"
    Then I should see 1 or more ".ext" elements
    Then I should see a "img" element
    And I click on the element with css selector ".field-name-field-s-lp-item-image a"
    Then I should see "Google"
    And I should be on "http://google.com"


