Feature: News
  In order to ensure that the Jumpstart Academic website news items are viewable
  As an end user
  I want to check for the existence of news content

  @content @deploy @prod
  Scenario: On a production site, see the Recent News page
    Given I am on the homepage
    And I click "News" in the "Main Navigation" region
    Then I should see the heading "Recent News" in the "Content" region
    Then I should see "News" in the "First sidebar" region
    Then I should see "Search by title" in the "First sidebar" region

  @content @deploy
  Scenario: On a newly deployed site, visit news pages
    Given I am on the homepage
    And I click "See more news" in the "Content 3 column flow" region
    Then I should see the heading "Recent News" in the "Content" region
    Then I should see "News" in the "First sidebar" region
    Then I should see "Search by title" in the "First sidebar" region
    Then I should see "Twitter News" in the "First sidebar" region
    Then I click "Newsletter" in the "First sidebar" region
    Then I should see "Newsletter" in the "Content Head" region
    Then I click "Subscribe" in the "First sidebar" region
    Then I should see "Subscribe" in the "Content Head" region

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
