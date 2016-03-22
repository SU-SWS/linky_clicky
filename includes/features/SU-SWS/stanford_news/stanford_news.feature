Feature: Stanford News
  In order to ensure that the news items are viewable
  As an end user
  I want to check for the existence of news content

  @safe @live @site
  Scenario: Recent News Page Exists
    Given I am on "news/recent-news"
    Then I should see "Recent News"

  @safe @deploy
  Scenario: Searching news
    Given I am on "news/recent-news"
    When I fill in "Search by title" with "Lecture"
    And I press "Go"
    Then I should see "Sample News: Smith Lecutre" in the "Content Body" region

  @content @deploy
  Scenario: On a newly deployed site, search the news
    Given I am on "news/recent-news"
    When I fill in "Search by title" with "Sample News: Smith Conference"
    And I press "Go"
    Then I should see "This is a news item" in the "Content Body" region

  @content @deploy
  Scenario: On a newly deployed site, see a news node
    Given I am on "news/2013-sample-news-smith-conference"
    Then I should see "Smith Conference is proin lacus lacus, eleifend tristique volutpat vitae, mattis nec nisl" in the "Content Body" region

  @safe @deploy
  Scenario: Searching news
    Given I am on "news/recent-news"
    When I fill in "Search by title" with "Lecture"
    And I press "Go"
    Then I should see "Sample News: Smith Lecutre" in the "Content Body" region

