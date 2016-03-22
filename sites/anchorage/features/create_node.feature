Feature: Create a piece of content and publish it
  In order to readily react to changing communication needs within my realm
  As a site owner
  I want to be able to post a big announcement at a moment's notice

@api @javascript @deploy
Scenario: Create a news item and view it on the front page as an anonymous user
  Given I am logged in as a user with the "site owner" role
  And I wait for the Site Actions drop down to appear
  And I click "Add News Item"
  And I enter "Stanford Researcher Wins Nobel Prize" for "Title *"
  And the iframe in element "cke_contents_edit-body-und-0-value" has id "cke_contents_edit-body-und-0-value-iframe"
  And I fill in "Bacon ipsum dolor sit amet deserunt fatback in venison" in WYSIWYG editor "cke_contents_edit-body-und-0-value-iframe"
  And I press the "Save" button
  Then I should be on "news/stanford-researcher-wins-nobel-prize"
  When I wait for the Site Actions drop down to appear
  And I click "Clear Site Cache"
  And I am an anonymous user
  And I am on "news/recent-news"
  Then I should see "Stanford Researcher Wins Nobel Prize" in the "Content" region

