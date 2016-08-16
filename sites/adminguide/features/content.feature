Feature: Content
  In order to ensure that the Admin Guide website has the correct content
  As an end user
  I want to check for the existence of content that should appear

  @safe @live @site
  Scenario Outline: Homepage block and footer content
    Given I am on the homepage
    Then I should see the "<Header>" heading in the "<Region>" region

    Examples:
      | Header                   | Region                       |
      | About                    | Footer                       |
      | Chapters                 | Footer                       |
      | Actions                  | Footer                       |
      | Related Resources        | Footer                       |
      | About the Guide          | Content 2 column stacked (1) |
      | Chapters                 | Content 2 column stacked (1) |
      | Commonly Viewed Policies | Content 2 column stacked (1) |
      | Browse by Category       | Content 2 column stacked (2) |

  @safe @live @site
  Scenario: What's New page content
    Given I am on "whats-new"
    Then I should see "POLICY CHANGES, DELETIONS, ADDITIONS" in the "Content Body" region

  @safe @live @site
  Scenario: Chapters content
    Given I am on "chapters"
    Then I should see "This chapter details the cornerstone policies of Stanford University" in the "Content Body" region

  @safe @live @site
  Scenario: Browse by Category content
    Given I am on "category"
    And I click "Vacation"
    Then I should see "In addition to Vacations, Sick Leave and Paid Holidays, Stanford employees or employees" in the "Content Body" region

  @safe @live @site
  Scenario: About the Guide page content
    Given I am on "about-guide"
    Then I should see "The Administrative Guide is a reference manual of Stanford University" in the "Content" region
    And I should see the heading "Contact" in the "Second sidebar" region
