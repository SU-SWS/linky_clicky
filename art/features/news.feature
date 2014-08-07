Feature: News
 In order to ensure that the Art and Art History website news items are viewable
 As an end user
 I want to check for the existence of news content

Scenario: News on program pages
 Given I am on "art-history"
 Then I should see the "News" heading in the "Content Lower" region

Scenario: Searching news
 Given I am on "news/recent-news"
 When I fill in "Search by title" with "Half Tilt Full Lean"
 And I press "Go"
 Then I should see "presents cross-disciplinary art" in the "Content Body" region

Scenario: View news item from person profile
 Given I am on "people/nancy-j-troy"
 And I click "Nancy J. Troy uncovers commodity culture in Mondrian's legacy" in the "Content Lower" region
 Then I should see "From Yves St. Laurent's famed shift" in the "Content Body" region
