Feature: NoBots
  In order to ensure that upgrades do not break existing functionality
  As an administrative user
  I want to ensure that the NoBots module is working properly

  @api @destructive
  Scenario: Enable NoBots and block robots
    Given the "nobots" module is enabled
    And the cache has been cleared
    And I am on "index.php?foo=bar"
    Then the response header "X-Robots-Tag" should contain "noindex,nofollow,noarchive"

  @api @destructive
  Scenario: Disable NoBots and allow robots
    Given the "nobots" module is disabled
    And the cache has been cleared
    And I am on "index.php?foo=baz"
    Then the response header should not have "X-Robots-Tag"
