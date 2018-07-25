Feature: Stanford People Spotlight Node display
  In order to ensure the node display for the Stanford People Spotlight module is correct.

  Background:
    Given I am on "spotlight/jim-leckie"

  @safe
  Scenario: Verify Stanford People Spotlight title link does not exist.
    Then I should not see the link "spotlight/jim-leckie"

  @safe
  Scenario: Verify Stanford People Spotlight related blocks exist.
    And I should see a "view-display-id-block_related" element in the "Content Bottom" region
    And I should see 3 "spotlight-container" elements

