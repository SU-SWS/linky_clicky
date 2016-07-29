Feature: Stanford Jumpstart Layouts Feature
  In order to ensure that the Stanford Jumpstart Layouts is configured correctly
  As an administrator
  I want to check for the existence of configuration

  Background:
    Given I am logged in as a user with the "administrator" role

  @api @safe
  Scenario: Verify menu blocks
    Given I am on "admin/structure/block"
    Then I should see "Main Menu - Primary - 1 Depth"
    Then I should see "Main Menu - Secondary - 2 Depths"

  @api @safe
  Scenario: Verify contexts
    Given I am on "admin/structure/context"
    Then I should see "12-col-banner-nsb-homepage"
    Then I should see "9-col-banner-fsb-homepage"
    Then I should see "all_pages_but_homepage"
    Then I should see "sitewide"

  ## Do we want to test for the enabled vs disabled contexts?
  # Probably but I am not sure how to do that yet.

  # Do we want to test to see if the blocks are in the right places?
  # Yes

  @api @safe
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
