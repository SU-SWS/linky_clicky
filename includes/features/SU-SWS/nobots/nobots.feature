Feature: NoBots
  In order to ensure that the nobots feature blocks web crawlers
  As a robot to the site I want to be sent a no index header.

# @deploy @safe @stanford
# Scenario: Affiliates page is visible and link in the main menu
#   When I go to "affiliate-organizations"
#   Then I should see "Affiliates" in the "First sidebar" region
#   Then I should see "Affiliates" in the "Content Head" region
#   Then I should see 5 or more ".views-field-field-s-affiliate-image" elements

  @dev
  Scenario: As a robot to the site I want to be sent a no index header
