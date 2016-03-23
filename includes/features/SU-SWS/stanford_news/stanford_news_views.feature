Feature: Stanford News Views
  In order to verify that the views are viewable and functioning
  As an end user
  I want to check for the existence of news pages and content on views pages

  @safe
  Scenario: Recent News Page Exists
    Given I am on "news/recent-news"
    Then I should see "Recent News"

  @deploy
  Scenario: Searching news
    Given I am on "news/recent-news"
    When I fill in "Search by title" with "Lecture"
    And I press "Go"
    Then I should see "Sample News: Smith Lecutre" in the "Content Body" region

 @deploy
  Scenario: On a newly deployed site, search the news
    Given I am on "news/recent-news"
    When I fill in "Search by title" with "Sample News: Smith Conference"
    And I press "Go"
    Then I should see "This is a news item" in the "Content Body" region

  @deploy
  Scenario: Searching news
    Given I am on "news/recent-news"
    When I fill in "Search by title" with "Lecture"
    And I press "Go"
    Then I should see "Sample News: Smith Lecutre" in the "Content Body" region

