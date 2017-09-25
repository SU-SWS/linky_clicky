Feature: Stanford Magazine Articles
  In order to ensure the article listing pages for the are correct.
  As an administrator

  @safe
  Scenario: Verify order of articles on a page
    Given I am on "magazine/all"
    Then I should see all timestamps for ".mag-article-date" in "descending" order
