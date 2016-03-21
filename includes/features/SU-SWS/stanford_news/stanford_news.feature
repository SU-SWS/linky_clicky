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
