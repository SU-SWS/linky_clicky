Feature: Stanford News
  In order to verify news items
  As an end user
  I want to check for the existence of news content

  @deploy
  Scenario: On a newly deployed site, see a news node
    Given I am on "news/2013-sample-news-smith-conference"
    Then I should see "Smith Conference is proin lacus lacus, eleifend tristique volutpat vitae, mattis nec nisl" in the "Content Body" region
