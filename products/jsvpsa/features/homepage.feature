Feature: Homepage
  In order to ensure that the Jumpstart VPSA website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  @api @javascript @safe
  Scenario: Homepage full width banner and content
  Given I am on the homepage
  Then I should see 1 ".view-mode-stanford-full-width-banner-short" element


  @api @safe
  Scenario: Homepage blocks are available
    Given I am on the homepage
    Then I should see the "Connect" heading in the "Main Lower" region
    Then I should see the "About Us" heading in the "Main Content" region
    Then I should see the "Upcoming Events" heading in the "Main Content" region
    Then I should see the "Announcements & News" heading in the "Main Content" region
    Then I should see the "Quick Links" heading in the "Main Content" region
    Then I should see the "Custom Content" heading in the "Main Content" region
    Then I should see the "Helpful Links" heading in the "Footer" region
    Then I should see the "Contact Us" heading in the "Footer" region

  @api @safe
  Scenario: Homepage content
    Given I am on the homepage
    Then I should see "Building Name Room 555" in the "Footer" region
    Then I should see "The XXX is proud to be part of Student Affairs" in the "Footer" region
    Then I should see "Get emergency assistance or find help" in the "Footer" region
    Then I should see "Student Affairs" in the "Footer" region
