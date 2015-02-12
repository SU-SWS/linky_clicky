Feature: Social Share
  In order to ensure that upgrades do not break existing functionality
  As an end user
  I want to check that the Social Share module is working correctly

  @api @javascript
  Scenario: Social Share
    Given the "social_share" module is enabled
    And I am logged in as a user with the "administrator" role
    And the cache has been cleared
    And I am on "admin/config/content/social-share"
    And I check the box "Article"
    And I press the "Save configuration" button
    Then I should see "The configuration options have been saved"
    When I go to "admin/structure/types/manage/article"
    # Vertical Tabs gives us some weird lables for fieldsets
    And I click "Social ShareEnabled"
    And I click "Social Networks"
    And I check the box "Twitter"
    And I check the box "Facebook"
    And I press the "Save content type" button
    Then I should see "The content type Article has been updated."
    When I go to "node/add/article"
    And I enter "Test Social Share" for "Title"
    And I press the "Save" button
    Then I should be on "test-social-share"
    And I should see the link "Facebook"
    And I should see the link "Twitter"
    When I click "Facebook"
    Then I should be on "https://www.facebook.com/login.php?next=https%3A%2F%2Fwww.facebook.com%2Fsharer%2Fsharer.php%3Fu%3Dhttp%253A%252F%252Fsites-uat.stanford.edu%253A8888%252Fdrupal7-update-status%252Ftest-social-share%26t%3DTest%2BSocial%2BShare%26ret%3Dlogin&display=popup"
    When I am on "test-social-share"
    And I click "Twitter"
    Then I should be on "https://twitter.com/intent/tweet?url=http%3A%2F%2Fsites-uat.stanford.edu%3A8888%2Fdrupal7-udpate-status%2Ftest-social-share&text=Test%20Social%20Share"