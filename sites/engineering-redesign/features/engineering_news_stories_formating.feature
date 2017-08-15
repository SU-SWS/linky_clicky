Feature: Ensure the news story is formatting correctly
  In order to ensure that news stories are formatting correctly
  As a Site User
  I want to be able to format news stories

  @safe @javascript
  Scenario: Verify users can view the images on the faculty profiles
    Given I am on "news/recent-news"
    Then I should see "Recent News" in the "Main Content" region
    And I should see 1 or more ".view-content" elements
    When I click on the element with css selector ".image-style-sm-square"
    Then I should see 1 or more ".field-items" elements
    And I should see 1 or more ".field-item" elements
    And I should see "See more news"
