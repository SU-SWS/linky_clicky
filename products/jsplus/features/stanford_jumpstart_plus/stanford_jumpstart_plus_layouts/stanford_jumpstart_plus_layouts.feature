@api
Feature: Stanford Jumpstart Plus Layouts Feature
  In order to ensure that the Stanford Jumpstart Plus Layouts is configured correctly
  As an administrator
  I want to check for the existence of configuration

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Verify menu blocks
    Given I am on "admin/structure/block"
    Then I should see "Main Menu - Primary - 1 Depth"
    Then I should see "Main Menu - Secondary - 2 Depths"

  @safe
  Scenario: Verify contexts
    Given I am on "admin/structure/context"
    Then I should see "all_pages_but_homepage"
    Then I should see "events_calendars"
    Then I should see "events_node"
    Then I should see "events_past"
    Then I should see "events_upcoming"
    Then I should see "sitewide"

  ## Do we want to test for the enabled vs disabled contexts?
  # Probably but I am not sure how to do that yet.

  # Do we want to test to see if the blocks are in the right places?
  # Yes

  @safe
  Scenario: Test enabled contexts for block existance in region
    Given I am on the homepage
    # Sitewide context
    Then I should see 1 "#block-menu-block-stanford-jumpstart-layouts-1" element in the "Main Navigation" region
    Then I should see 1 "#block-search-form" element in the "Search Box" region
    Then I should see 1 "#block-bean-jumpstart-footer-social-media-0" element in the "Footer" region
    Then I should see 1 "#block-bean-jumpstart-footer-contact-block" element in the "Footer" region
    Then I should see 1 "#block-bean-optional-footer-block" element in the "Footer" region
    Then I should see 1 "#block-menu-menu-related-links" element in the "Footer" region
    # All but home page context
    Then I am on "about"
    Then I should see 1 "#block-menu-block-stanford-jumpstart-layouts-2" element in the "First sidebar" region
    # Events Calendars
    Then I am on "events/month/2016-01"
    Then I should see 1 "#block-views-934c9b9d8d2d2f2b37f050dcd3bba83c" element in the "Second sidebar" region
    Then I am on "events/month/2016-01-01"
    Then I should see 1 "#block-views-934c9b9d8d2d2f2b37f050dcd3bba83c" element in the "Second sidebar" region
    # Event Node
    Given I am on "events/upcoming-events"
    Then I click on the element with css selector ".view-stanford-events-views .event-title a"
    Then I should see 1 "#block-views-934c9b9d8d2d2f2b37f050dcd3bba83c" element in the "Second sidebar" region
    # Past Events
    Then I am on "events/past-events"
    Then I should see 1 "#block-views-934c9b9d8d2d2f2b37f050dcd3bba83c" element in the "Second sidebar" region
    Then I should see 1 "#block-views-ad215e0528148b386833fa3db1f3b7dc" element in the "First sidebar" region
    # Upcoming Events
    Then I am on "events/upcoming-events"
    Then I should see 1 "#block-views-934c9b9d8d2d2f2b37f050dcd3bba83c" element in the "Second sidebar" region
