Feature: Research
  In order to ensure that the Jumpstart website Research content is visible
  As an end user
  I want to check for the existence of the page

  Scenario: Check the contents of the "Research" page
    Given I am on "research"
    Then I should see 1 or more ".group_s_postcard_image" elements
    And I should see the heading "Research Interests" in the "Content Body" region
    And I should see the heading "Current Research" in the "Content Body" region
    And I should see "This is your Research page" in the "Content Body" region
  