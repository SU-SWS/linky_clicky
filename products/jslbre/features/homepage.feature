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
    Then I should see the "Upcoming Events" heading in the "Main Content" region
    Then I should see the "Announcements & News" heading in the "Main Content" region
    Then I should see the "Project Management" heading in the "Main Content" region
    Then I should see the "Maintenance & Services" heading in the "Main Content" region
    Then I should see the "Helpful Links" heading in the "Footer" region
    Then I should see the "Contact LBRE" heading in the "Footer" region

  @api @safe
  Scenario: Homepage content
    Given I am on the homepage
    Then I should see "3160 Porter Drive" in the "Footer" region
    Then I should see "Helpful Links" in the "Footer" region
    Then I should see "Overarching a collective of ten departments" in the "Footer" region
    Then I should see "Caretakers of a Legacy" in the "Footer" region
