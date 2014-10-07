Feature: News
  In order to ensure that the Jumpstart website News content is visible
  As an end user
  I want to check for the existence of the page

  Scenario: Check the content of the News page
    Given I am on "news"
    Then I should see the heading "Sample News" in the "Content Body" region
    And I should see 3 or more ".float-left" elements