Feature: Ensure the landing page cards are collapsing responsively
  In order to ensure the landing page cards are collapsing responsively
  As a Site User
  I want to be able to view the proper collapse of landing page cards

  @safe @javascript
  Scenario: Verify landing page cards are collapsing responsively
    Given I am on "students/overview"
    Then I should see "Students" in the "Main Upper" region
    And I should see 1 or more ".well" elements
    And I should see 1 or more ".field-items" elements
    And I should see 1 or more ".field-item" elements
    And I should see 1 or more ".more-link" elements
