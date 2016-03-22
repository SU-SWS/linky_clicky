Feature: News
  In order to ensure that the Department of Classics website news items are viewable
  As an end user
  I want to check for the existence of news content

  Scenario: See more news
    Given I am on the homepage
    And I click "See More News" in the "Content 4 column flow" region
    Then I should see the heading "Recent News" in the "Content" region

  Scenario: Searching news
    Given I am on "news/recent-news"
    When I fill in "Search by title" with "Londinium"
    And I press "Go"
    Then I should see "Features a map by Elijah Meeks, digital humanities specialist, and Walter Scheidel, professor of history and of classics, showing how long it would have to travel around the Roman empire and how much the trips would have cost, on average and according to simulations based on historical evidence" in the "Content Body" region

  Scenario: See an news node
    Given I am on "news/prof-rush-rehm-receives-2014-lloyd-w-dinkelspiel-award"
    Then I should see "The Lloyd W. Dinkelspiel Awards recognize distinctive and exceptional contributions to undergraduate education or the quality of student life at Stanford. The contribution may be made for such activities as curriculum design, program development, advising excellence, residential education, committee leadership, or extracurricular education" in the "Content Body" region
