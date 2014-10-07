Feature: News
  In order to ensure that the Jumpstart Academic website news items are viewable
  As an end user
  I want to check for the existence of news content

  Scenario: See more news
    Given I am on the homepage
    And I click "See More News" in the "Content 3 column flow" region
    Then I should see the heading "Recent News" in the "Content" region

  Scenario: Searching news
    Given I am on "news/recent-news"
    When I fill in "Search by title" with "Sample News: Smith Conference"
    And I press "Go"
    Then I should see "This is a news item" in the "Content Body" region

  Scenario: See an news node
    Given I am on "news/2013-sample-news-smith-conference"
    Then I should see "Smith Conference is proin lacus lacus, eleifend tristique volutpat vitae, mattis nec nisl" in the "Content Body" region
